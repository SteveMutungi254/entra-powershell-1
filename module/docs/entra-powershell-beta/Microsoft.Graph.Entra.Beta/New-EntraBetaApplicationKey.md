---
external help file: Microsoft.Graph.Entra.Beta-Help.xml
Module Name: Microsoft.Graph.Entra.Beta
online version: https://learn.microsoft.com/powershell/module/Microsoft.Graph.Entra.Beta/New-EntraBetaApplicationKey

schema: 2.0.0
---

# New-EntraBetaApplicationKey

## Synopsis
Adds a new key to an application.

## Syntax

```
New-EntraBetaApplicationKey -ObjectId <String> -KeyCredential <KeyCredential>
 [-PasswordCredential <PasswordCredential>] -Proof <String> [<CommonParameters>]
```

## Description
Adds a new key to an application.

## Examples

### Example 1: Add a key credential to an application
```
PS C:\>New-EntraBetaApplicationKey -ObjectId 14a3f1ac-46a7-4d00-b1ca-0b2b84f033c2 -KeyCredential @{ key=[System.Convert]::FromBase64String("{base64cert}") } -PasswordCredential @{ displayname = "mypassword" } -Proof "{token}"
```

This command adds a key credential the specified application.

## Parameters

### -KeyCredential
The application key credential to add.

NOTES: keyId value should be null.

```yaml
Type: KeyCredential
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ObjectId
The unique identifier of the object specific Azure Active Directory object

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

### -PasswordCredential
The application password credential to add.

NOTES: keyId value should be null.

```yaml
Type: PasswordCredential
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Proof
A signed JWT token used as a proof of possession of the existing keys

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## Inputs

### string
### Microsoft.Open.MSGraph.Model.KeyCredential
### Microsoft.Open.MSGraph.Model.PasswordCredential
## Outputs

### Microsoft.Open.MSGraph.Model.KeyCredential
## Notes

## Related Links

[Remove-EntraBetaApplicationKey]()

