# ------------------------------------------------------------------------------
#  Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.
# ------------------------------------------------------------------------------
BeforeAll {  
    if ((Get-Module -Name Microsoft.Entra.Beta.Groups) -eq $null) {
        Import-Module Microsoft.Entra.Beta.Groups       
    }
    if ((Get-Module -Name Microsoft.Entra.Beta.DirectoryManagement) -eq $null) {
        Import-Module Microsoft.Entra.Beta.DirectoryManagement       
    }
    Import-Module (Join-Path $PSScriptRoot "..\..\Common-Functions.ps1") -Force
    
    $scriptblock = {
        return @(
            [PSCustomObject]@{
                "Id"             = "00aa00aa-bb11-cc22-dd33-44ee44ee44ee"
                "templateId"     = "dddddddd-1111-2222-3333-aaaaaaaaaaaa"
                "@odata.context" = 'https://graph.microsoft.com/beta/`$metadata#settings/`$entity'
                "displayName"    = $null
                "values"         = @{
                    "name"  = "AllowToAddGuests"
                    "value" = $False
                }
                "Parameters"     = $args
            }
        )
    }
    $TemplateScriptblock = {
        return @(
            [PSCustomObject]@{
                "DisplayName" = "Group.Unified.Guest"
                "Id"          = "bbbbbbbb-1111-2222-3333-cccccccccc55"
                "Description" = "Settings for a specific Unified Group"
                "Parameters"  = $args
                "Values"      = @(
                    [PSCustomObject]@{
                        "Name"         = "AllowToAddGuests"
                        "Description"  = ""
                        "Type"         = ""
                        "DefaultValue" = $true
                    }
                )
            }
        )
    }    
    Mock -CommandName Get-MgBetaDirectorySettingTemplate -MockWith $TemplateScriptblock -ModuleName Microsoft.Entra.Beta.DirectoryManagement
    Mock -CommandName Invoke-GraphRequest -MockWith $scriptblock -ModuleName Microsoft.Entra.Beta.Groups
    Mock -CommandName Get-EntraContext -MockWith { @{Scopes = @("Directory.ReadWrite.All") } } -ModuleName Microsoft.Entra.Beta.Groups
}
Describe "New-EntraBetaObjectSetting" {
    Context "Test for New-EntraBetaObjectSetting" {
        It "Should return created object setting" {
            $template = Get-EntraBetaDirectorySettingTemplate | Where-Object { $_.displayname -eq "group.unified.guest" }
            $settingsCopy = $template.CreateDirectorySetting()
            $settingsCopy["AllowToAddGuests"] = $False

            $result = New-EntraBetaObjectSetting -TargetType "Groups" -TargetObjectId "aaaaaaaa-1111-2222-3333-cccccccccccc" -DirectorySetting $settingsCopy 
            $result | Should -Not -BeNullOrEmpty
            $result.Id | Should -Be "00aa00aa-bb11-cc22-dd33-44ee44ee44ee"
            $result.templateId | Should -be "dddddddd-1111-2222-3333-aaaaaaaaaaaa"

            Should -Invoke -CommandName Invoke-GraphRequest -ModuleName Microsoft.Entra.Beta.Groups -Times 1
        }
        It "Should fail when TargetType is empty" {
            $template = Get-EntraBetaDirectorySettingTemplate | Where-Object { $_.displayname -eq "group.unified.guest" }
            $settingsCopy = $template.CreateDirectorySetting()
            $settingsCopy["AllowToAddGuests"] = $False
            { New-EntraBetaObjectSetting -TargetType -TargetObjectId "aaaaaaaa-1111-2222-3333-cccccccccccc" -DirectorySetting $settingsCopy } | Should -Throw "Missing an argument for parameter 'TargetType'*"
        }
        It "Should fail when TargetType is invalid" {
            $template = Get-EntraBetaDirectorySettingTemplate | Where-Object { $_.displayname -eq "group.unified.guest" }
            $settingsCopy = $template.CreateDirectorySetting()
            $settingsCopy["AllowToAddGuests"] = $False
            { New-EntraBetaObjectSetting -TargetType -TargetObjectId "aaaaaaaa-1111-2222-3333-cccccccccccc" -DirectorySetting $settingsCopy } | Should -Throw "Missing an argument for parameter 'TargetType'*"
        }
        It "Should fail when TargetObjectId is empty" {
            $template = Get-EntraBetaDirectorySettingTemplate | Where-Object { $_.displayname -eq "group.unified.guest" }
            $settingsCopy = $template.CreateDirectorySetting()
            $settingsCopy["AllowToAddGuests"] = $False
            { New-EntraBetaObjectSetting -TargetType "Groups" -TargetObjectId -DirectorySetting $settingsCopy } | Should -Throw "Missing an argument for parameter 'TargetObjectId'*"
        }
        It "Should fail when TargetObjectId is invalid" {
            $template = Get-EntraBetaDirectorySettingTemplate | Where-Object { $_.displayname -eq "group.unified.guest" }
            $settingsCopy = $template.CreateDirectorySetting()
            $settingsCopy["AllowToAddGuests"] = $False
            { New-EntraBetaObjectSetting -TargetType "Groups" -TargetObjectId -DirectorySetting $settingsCopy } | Should -Throw "Missing an argument for parameter 'TargetObjectId'*"
        }
        It "Should fail when DirectorySetting is empty" {
            { New-EntraBetaObjectSetting -TargetType "Groups" -TargetObjectId "aaaaaaaa-1111-2222-3333-cccccccccccc" -DirectorySetting } | Should -Throw "Missing an argument for parameter 'DirectorySetting'*"
        }

        It "Should contain 'User-Agent' header" {
            $userAgentHeaderValue = "PowerShell/$psVersion EntraPowershell/$entraVersion New-EntraBetaObjectSetting"
            
            $template = Get-EntraBetaDirectorySettingTemplate | Where-Object { $_.displayname -eq "group.unified.guest" }
            $settingsCopy = $template.CreateDirectorySetting()
            $settingsCopy["AllowToAddGuests"] = $False

            $result = New-EntraBetaObjectSetting -TargetType "Groups" -TargetObjectId "aaaaaaaa-1111-2222-3333-cccccccccccc" -DirectorySetting $settingsCopy 
            $result | Should -Not -BeNullOrEmpty

            $userAgentHeaderValue = "PowerShell/$psVersion EntraPowershell/$entraVersion New-EntraBetaObjectSetting"

            Should -Invoke -CommandName Invoke-GraphRequest -ModuleName Microsoft.Entra.Beta.Groups -Times 1 -ParameterFilter {
                $Headers.'User-Agent' | Should -Be $userAgentHeaderValue
                $true
            }
        }
        It "Should execute successfully without throwing an error" {
            # Disable confirmation prompts       
            $originalDebugPreference = $DebugPreference
            $DebugPreference = 'Continue'
            $template = Get-EntraBetaDirectorySettingTemplate | Where-Object { $_.displayname -eq "group.unified.guest" }
            $settingsCopy = $template.CreateDirectorySetting()
            $settingsCopy["AllowToAddGuests"] = $False
            
            try {
                # Act & Assert: Ensure the function doesn't throw an exception
                { New-EntraBetaObjectSetting -TargetType "Groups" -TargetObjectId "aaaaaaaa-1111-2222-3333-cccccccccccc" -DirectorySetting $settingsCopy -Debug } | Should -Not -Throw
            }
            finally {
                # Restore original confirmation preference            
                $DebugPreference = $originalDebugPreference        
            }
        }
    }
}    

