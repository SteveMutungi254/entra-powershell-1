BeforeAll {  
    if ((Get-Module -Name Microsoft.Graph.Entra) -eq $null) {
        Import-Module Microsoft.Graph.Entra        
    }
    Import-Module (Join-Path $psscriptroot "..\Common-Functions.ps1") -Force
    
    $scriptblock = {
        return @(
            [Microsoft.Graph.PowerShell.Models.MicrosoftGraphAttributeSet]@{
                "Description"     = "NewCustomAttributeSet"
                "Id"              = "bbbbbbbb-1111-2222-3333-cccccccccccc"
                "MaxAttributesPerSet"     = "125"
            }
        )
    }

    Mock -CommandName Invoke-GraphRequest -MockWith $scriptblock -ModuleName Microsoft.Graph.Entra
}
  
Describe "Get-EntraAttributeSet" {
    Context "Test for Get-EntraAttributeSet" {
        It "Should return AttributeSets with any parameter" {
            $result = Get-EntraAttributeSet -Id "bbbbbbbb-1111-2222-3333-cccccccccccc"
            $result | Should -Not -BeNullOrEmpty
            $result.Id | should -Be 'bbbbbbbb-1111-2222-3333-cccccccccccc'

            Should -Invoke -CommandName Invoke-GraphRequest  -ModuleName Microsoft.Graph.Entra -Times 1
        }
        It "Should return specific AttributeSet" {
            $result = Get-EntraAttributeSet -Id "bbbbbbbb-1111-2222-3333-cccccccccccc"
            $result | Should -Not -BeNullOrEmpty
            $result.Id | should -Be 'bbbbbbbb-1111-2222-3333-cccccccccccc'

            Should -Invoke -CommandName Invoke-GraphRequest  -ModuleName Microsoft.Graph.Entra -Times 1
        }
        It "Should fail when Id is invalid" {
            { Get-EntraAttributeSet -Id "" } | Should -Throw "Cannot bind argument to parameter 'Id' because it is an empty string."
        }
        It "Should fail when Id is empty" {
            { Get-EntraAttributeSet -Id } | Should -Throw "Missing an argument for parameter 'Id'*"
        }
        It "Should contain 'User-Agent' header" {
            $userAgentHeaderValue = "PowerShell/$psVersion EntraPowershell/$entraVersion Get-EntraAttributeSet"

            Get-EntraAttributeSet -Id "bbbbbbbb-1111-2222-3333-cccccccccccc" | Out-Null
            Should -Invoke -CommandName Invoke-GraphRequest -ModuleName Microsoft.Graph.Entra -Times 1 -ParameterFilter {
                $Headers.'User-Agent' | Should -Be $userAgentHeaderValue
                $true
            }
        }    
    }
}