---
external help file: Microsoft.Graph.Entra.Beta-Help.xml
Module Name: Microsoft.Graph.Entra.Beta
online version: https://learn.microsoft.com/powershell/module/Microsoft.Graph.Entra.Beta/Get-EntraBetaUserExtension

schema: 2.0.0
---

# Get-EntraBetaUserExtension

## Synopsis
Gets a user extension.

## Syntax

```powershell
Get-EntraBetaUserExtension
 -ObjectId <String>
 [-Property <String[]>]
 [<CommonParameters>]
```

## Description
The Get-EntraBetaUserExtension cmdlet gets a user extension in Azure Active Directory (AD).

## Examples

### Example 1: Retrieve extension attributes for a user
```
PS C:\> $UserId = (Get-EntraBetaUser -Top 1).ObjectId
PS C:\> Get-EntraBetaUserExtension -ObjectId $UserId

Key                            Value 
---                            ----- 
odata.metadata                 https://graph.windows.net/85b5ff1e-0402-400c-9e3c0f9e965325d1$metadata#directoryObjects/Microsoft.Director... 
odata.type                     Microsoft.DirectoryServices.User
deletionTimestamps
signInNames                    [] 
companyName 
creationType 
facsimileTelephoneNumber 
isCompromised 
refreshTokensValidFromDateTime 11/7/2016 10:11:09 PM 
showInAddressList
```

The first command gets the ID of an Azure AD user by using the Get-EntraBetaUser (./Get-EntraBetaUser.md)cmdlet. 
The command stores the value in the $UserId variable.

The second command retrieves all extension attributes that have a value assigned to them for the user identified by $UserId.

## Parameters

### -ObjectId
Specifies the ID of an object.

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

### -Property

Specifies properties to be returned

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## Inputs

## Outputs

## Notes

## Related Links

[Get-EntraBetaUser]()

[Remove-EntraBetaUserExtension]()

[Set-EntraBetaUserExtension]()

