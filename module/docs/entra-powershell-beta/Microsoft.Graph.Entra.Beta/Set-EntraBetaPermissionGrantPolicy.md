---
external help file: Microsoft.Graph.Entra.Beta-Help.xml
Module Name: Microsoft.Graph.Entra.Beta
online version: https://learn.microsoft.com/powershell/module/Microsoft.Graph.Entra.Beta/Set-EntraBetaPermissionGrantPolicy

schema: 2.0.0
---

# Set-EntraBetaPermissionGrantPolicy

## Synopsis
Updates a permission grant policy.

## Syntax

```
Set-EntraBetaPermissionGrantPolicy [-Description <String>] [-DisplayName <String>] -Id <String>
 [<CommonParameters>]
```

## Description
The Set-EntraBetaPermissionGrantPolicy command updates an Azure Active Directory permission grant policy.

## Examples

### Example 1
```
PS C:\> Set-EntraBetaPermissionGrantPolicy -Id "my_permission_grant_policy_id" -Description "updated description" -DisplayName "update displayname"
```

## Parameters

### -Description
Specifies the description of the permission grant policy.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DisplayName
Specifies the display name of the permission grant policy.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Id
Specifies the unique identifier of the permission grant policy.

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

[New-EntraBetaPermissionGrantPolicy]()

[Get-EntraBetaPermissionGrantPolicy]()

[Remove-EntraBetaPermissionGrantPolicy]()

