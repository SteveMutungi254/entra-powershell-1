---
external help file: Microsoft.Graph.Entra.Beta-Help.xml
Module Name: Microsoft.Graph.Entra.Beta
online version: https://learn.microsoft.com/powershell/module/Microsoft.Graph.Entra.Beta/Revoke-EntraBetaUserAllRefreshToken

schema: 2.0.0
---

# Revoke-EntraBetaUserAllRefreshToken

## Synopsis
Invalidates the refresh tokens issued to applications for a user.

## Syntax

```
Revoke-EntraBetaUserAllRefreshToken -ObjectId <String> [<CommonParameters>]
```

## Description
The Revoke-EntraBetaUserAllRefreshToken cmdlet invalidates the refresh tokens issued to applications for a user. 
The cmdlet also invalidates tokens issued to session cookies in a browser for the user. 
The cmdlet operates by resetting the refreshTokensValidFromDateTime user property to the current date and time.

## Examples

### Example 1: Revoke refresh tokens for a user
```
PS C:\> Revoke-EntraBetaUserAllRefreshToken -ObjectId "a1d91a49-70c6-4d1d-a80a-b74c820a9a33"
```

This command revokes the tokens for the specified user.

## Parameters

### -ObjectId
Specifies the unique ID of a user.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## Inputs

## Outputs

## Notes

## Related Links

[Revoke-EntraBetaSignedInUserAllRefreshToken]()

[(#AzureAD: Certificate based authentication for iOS and Android now in preview!](https://blogs.technet.microsoft.com/enterprisemobility/2016/07/18/azuread-certificate-based-authentication-for-ios-and-android-now-in-preview/)

