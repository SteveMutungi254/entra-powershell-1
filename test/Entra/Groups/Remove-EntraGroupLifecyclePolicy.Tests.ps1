# ------------------------------------------------------------------------------
#  Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.
# ------------------------------------------------------------------------------
BeforeAll {  
    if ((Get-Module -Name Microsoft.Entra.Groups) -eq $null) {
        Import-Module Microsoft.Entra.Groups
    }
    Import-Module (Join-Path $PSScriptRoot "..\..\Common-Functions.ps1") -Force

    Mock -CommandName Remove-MgGroupLifecyclePolicy -MockWith {} -ModuleName Microsoft.Entra.Groups
    Mock -CommandName Get-EntraContext -MockWith { @{Scopes = @("Directory.ReadWrite.All") } } -ModuleName Microsoft.Entra.Groups
}

Describe "Remove-EntraGroupLifecyclePolicy" {
    Context "Test for Remove-EntraGroupLifecyclePolicy" {
        It "Should remove a groupLifecyclePolicies" {
            $result = Remove-EntraGroupLifecyclePolicy -GroupLifecyclePolicyId "aaaabbbb-0000-cccc-1111-dddd2222eeee"
            $result | Should -BeNullOrEmpty

            Should -Invoke -CommandName Remove-MgGroupLifecyclePolicy -ModuleName Microsoft.Entra.Groups -Times 1
        }
        It "Should execute successfully with Alias" {
            $result = Remove-EntraGroupLifecyclePolicy -Id "aaaabbbb-0000-cccc-1111-dddd2222eeee"
            $result | Should -BeNullOrEmpty

            Should -Invoke -CommandName Remove-MgGroupLifecyclePolicy -ModuleName Microsoft.Entra.Groups -Times 1
        }
        It "Should fail when GroupLifecyclePolicyId is empty" {
            { Remove-EntraGroupLifecyclePolicy -GroupLifecyclePolicyId } | Should -Throw "Missing an argument for parameter 'GroupLifecyclePolicyId'*"
        } 

        It "Should contain GroupLifecyclePolicyId in parameters when passed GroupLifecyclePolicyId to it" {
            Mock -CommandName Remove-MgGroupLifecyclePolicy -MockWith { $args } -ModuleName Microsoft.Entra.Groups

            $result = Remove-EntraGroupLifecyclePolicy -GroupLifecyclePolicyId "aaaabbbb-0000-cccc-1111-dddd2222eeee"
            $params = Get-Parameters -data $result
            $params.GroupLifecyclePolicyId | Should -Be "aaaabbbb-0000-cccc-1111-dddd2222eeee"
        }

        It "Should contain 'User-Agent' header" {
            $userAgentHeaderValue = "PowerShell/$psVersion EntraPowershell/$entraVersion Remove-EntraGroupLifecyclePolicy"

            Remove-EntraGroupLifecyclePolicy -GroupLifecyclePolicyId "aaaabbbb-0000-cccc-1111-dddd2222eeee"

            $userAgentHeaderValue = "PowerShell/$psVersion EntraPowershell/$entraVersion Remove-EntraGroupLifecyclePolicy"

            Should -Invoke -CommandName Remove-MgGroupLifecyclePolicy -ModuleName Microsoft.Entra.Groups -Times 1 -ParameterFilter {
                $Headers.'User-Agent' | Should -Be $userAgentHeaderValue
                $true
            }
        } 
        It "Should execute successfully without throwing an error" {
            # Disable confirmation prompts       
            $originalDebugPreference = $DebugPreference
            $DebugPreference = 'Continue'

            try {
                # Act & Assert: Ensure the function doesn't throw an exception
                { Remove-EntraGroupLifecyclePolicy -GroupLifecyclePolicyId "aaaabbbb-0000-cccc-1111-dddd2222eeee" -Debug } | Should -Not -Throw
            }
            finally {
                # Restore original confirmation preference            
                $DebugPreference = $originalDebugPreference        
            }
        } 
    }
}

