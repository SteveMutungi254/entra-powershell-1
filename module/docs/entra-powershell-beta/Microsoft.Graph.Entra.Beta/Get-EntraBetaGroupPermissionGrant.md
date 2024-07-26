---
external help file: Microsoft.Graph.Entra.Beta-Help.xml
Module Name: Microsoft.Graph.Entra.Beta
online version: https://learn.microsoft.com/powershell/module/Microsoft.Graph.Entra.Beta/Get-EntraBetaGroupPermissionGrant

schema: 2.0.0
---

# Get-EntraBetaGroupPermissionGrant

## Synopsis
Retrieves a list of permission grants that have been consented for this group.

## Syntax

```powershell
Get-EntraBetaGroupPermissionGrant
 -Id <String>
 [-Property <String[]>]
 [<CommonParameters>]
```

## Description
Retrieves a list of permission grants that have been consented for this group.

## Examples

### Example 1: List existing permission grants for the group. .
```
List exisiting permission grants for the group.
		
		Get-EntraBetaGroupPermissionGrant -Id "4823e767eca44858aed244154009b764" 

		Id             : vsMaSY2k_E7761KhRqpx7OGFvAwvdZnJM1s7Iqkt4PU
		ClientId       : deefce9d-be43-4b49-a9d3-851af6d2c26c
		ClientAppId    : ba4e4a78-c352-4e59-b657-81b2b395d32b
		ResourceAppId  : 00000003-0000-0000-c000-000000000000
		PermissionType : Application
		Permission     : Member.Read.Group
```

## Parameters

### -Id
The unique identifier of group.

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

### string
## Outputs

### Microsoft.Open.MSGraph.Model.GetMSGroupPermissionGrantsResponse
## Notes

## Related Links
