---
external help file: Microsoft.Graph.Entra.Beta-Help.xml
Module Name: Microsoft.Graph.Entra.Beta
online version: https://learn.microsoft.com/powershell/module/Microsoft.Graph.Entra.Beta/Revoke-EntraBetaSignedInUserAllRefreshToken

schema: 2.0.0
---

# Revoke-EntraBetaSignedInUserAllRefreshToken

## Synopsis
Invalidates the refresh tokens issued to applications for the current user.

## Syntax

```
Revoke-EntraBetaSignedInUserAllRefreshToken [<CommonParameters>]
```

## Description
The Revoke-EntraBetaSignedInUserAllRefreshToken cmdlet invalidates the refresh tokens issued to applications for the current user. 
The cmdlet also invalidates tokens issued to session cookies in a browser for the user. 
The cmdlet operates by resetting the refreshTokensValidFromDateTime user property to the current date and time.

## Examples

### Example 1: Revoke refresh tokens for the current user
```
PS C:\> Revoke-EntraBetaSignedInUserAllRefreshToken
```

This command revokes the tokens for the current user.

## Parameters

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## Inputs

## Outputs

## Notes

## Related Links

[Revoke-EntraBetaUserAllRefreshToken]()

[#AzureAD: Certificate based authentication for iOS and Android now in preview!](https://blogs.technet.microsoft.com/enterprisemobility/2016/07/18/azuread-certificate-based-authentication-for-ios-and-android-now-in-preview/)

