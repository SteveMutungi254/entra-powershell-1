# ------------------------------------------------------------------------------
#  Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.
# ------------------------------------------------------------------------------
@{
    SourceName = "New-AzureADTrustedCertificateAuthority"
    TargetName = $null
    Parameters = $null
    Outputs = $null
    CustomScript = @"
    PROCESS {    
        `$params = @{}
        
        `$tenantId = (Get-MgContext).TenantId
        `$params["Uri"] = "/beta/organization/`$tenantId/certificateBasedAuthConfiguration"
        `$params["Method"] = "POST"
        if(`$PSBoundParameters.ContainsKey("Debug"))
        {
            `$params["Debug"] = `$Null
        }
        if(`$PSBoundParameters.ContainsKey("Verbose"))
        {
            `$params["Verbose"] = `$Null
        }
        
        `$newCert = `$PSBoundParameters["CertificateAuthorityInformation"]
        `$previusCerts = @()        
        Get-CompatADTrustedCertificateAuthority | ForEach-Object {
            `$previusCerts += `$_
            if((`$_.TrustedIssuer -eq `$newCert.TrustedIssuer) -and (`$_.TrustedIssuerSki -eq `$newCert.TrustedIssuerSki)){
                Throw [System.Management.Automation.PSArgumentException] "A certificate already exists on the server with associated trustedIssuer and trustedIssuerSki fields."
            }
        }
        `$previusCerts += `$newCert

        `$body = @{
            certificateAuthorities = @()
        }

        `$previusCerts | ForEach-Object {
            `$isRoot = `$false
            if("RootAuthority" -eq `$_.AuthorityType){
                `$isRoot = `$true
            }
            `$cert = @{
                isRootAuthority = `$isRoot
                certificateRevocationListUrl = `$_.CrlDistributionPoint
                deltaCertificateRevocationListUrl = `$_.DeltaCrlDistributionPoint
                certificate = [convert]::tobase64string(`$_.TrustedCertificate)
            }
            `$body.certificateAuthorities += `$cert
        }
        `$params["Body"] = ConvertTo-Json `$body
        Write-Debug("============================ TRANSFORMATIONS ============================")
        `$params.Keys | ForEach-Object {"`$_ : `$(`$params[`$_])" } | Write-Debug
        Write-Debug("=========================================================================``n")
                
        Invoke-GraphRequest @params
        }
"@
}