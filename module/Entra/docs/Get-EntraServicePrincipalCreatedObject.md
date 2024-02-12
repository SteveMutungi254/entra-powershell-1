---
external help file: Microsoft.Graph.Entra-Help.xml
Module Name: Microsoft.Graph.Entra
online version:
schema: 2.0.0
---

# Get-EntraServicePrincipalCreatedObject

## SYNOPSIS
Get objects created by a service principal.

## SYNTAX

```
Get-EntraServicePrincipalCreatedObject [-All <Boolean>] -ObjectId <String> [-Top <Int32>] [<CommonParameters>]
```

## DESCRIPTION
The Get-EntraServicePrincipalCreatedObject cmdlet gets an object created by a service principal in Microsoft Entra ID.

## EXAMPLES

### Example 1: Retrieve the objects that were created by a service principal
```
PS C:\> $ServicePrincipalId = (Get-EntraServicePrincipal -Top 1).ObjectId
PS C:\> Get-EntraServicePrincipalCreatedObject -ObjectId $ServicePrincipalId
```

The first command gets the ID of a service principal by using the Get-EntraServicePrincipal (./Get-EntraServicePrincipal.md)cmdlet. 
The command stores the ID in the $ServicePrincipalId variable.

The second command gets objects created by the service principal identified by $ServicePrincipalId.

## PARAMETERS

### -All
If true, return all objects created by the service principal.
If false, return the number of objects specified by the Top parameter

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -ObjectId
Specifies the ID of a service principal in Azure AD.

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

### -Top
Specifies the maximum number of records to return.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-EntraServicePrincipal]()
