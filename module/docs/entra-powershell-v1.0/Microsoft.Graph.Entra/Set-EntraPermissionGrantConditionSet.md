---
title: Set-EntraPermissionGrantConditionSet
description: This article provides details on the Set-EntraPermissionGrantConditionSet command.


ms.topic: reference
ms.date: 06/26/2024
ms.author: eunicewaweru
ms.reviewer: stevemutungi
manager: CelesteDG
author: msewaweru

external help file: Microsoft.Graph.Entra-Help.xml
Module Name: Microsoft.Graph.Entra
online version: https://learn.microsoft.com/powershell/module/Microsoft.Graph.Entra/Set-EntraPermissionGrantConditionSet

schema: 2.0.0
---

# Set-EntraPermissionGrantConditionSet

## Synopsis

Update an existing Microsoft Entra ID permission grant condition set.

## Syntax

```powershell
Set-EntraPermissionGrantConditionSet 
 -ConditionSetType <String>
 -Id <String>
 -PolicyId <String>
 [-Permissions <System.Collections.Generic.List`1[System.String]>]
 [-ClientApplicationTenantIds <System.Collections.Generic.List`1[System.String]>] 
 [-ClientApplicationIds <System.Collections.Generic.List`1[System.String]>] 
 [-ResourceApplication <String>] 
 [-PermissionType <String>] 
 [-PermissionClassification <String>]
 [-ClientApplicationsFromVerifiedPublisherOnly <Boolean>]
 [-ClientApplicationPublisherIds <System.Collections.Generic.List`1[System.String]>] 
 [<CommonParameters>]
```

## Description

Updates a Microsoft Entra ID permission grant condition set object identified by ID.

## Examples

### Example 1: Update a permission grant condition set to includes permissions that is classified as low

```powershell
Connect-Entra -Scopes 'Policy.ReadWrite.PermissionGrant'
$params = @{
    PolicyId = 'policy1'
    ConditionSetType = 'includes'
    Id = '665a9903-0398-48ab-b4e9-7a570d468b66'
    PermissionClassification = 'Low'
}

Set-EntraPermissionGrantConditionSet @params
```

This command updates sets the specified permission grant set to classify as low.

### Example 2: Update a permission grant condition set

```powershell
Connect-Entra -Scopes 'Policy.ReadWrite.PermissionGrant'
$params = @{
    PolicyId = 'policy1'
    ConditionSetType = 'includes'
    Id = 'aaaa0000-bb11-2222-33cc-444444dddddd'
    PermissionType = 'Delegated'
    PermissionClassification = 'Low'
    ResourceApplication = 'a0a0a0a0-bbbb-cccc-dddd-e1e1e1e1e1e1'
    Permissions = @('29bf4ca5-913e-427d-8a68-5890af945109')
    ClientApplicationIds = @('All')
    ClientApplicationTenantIds = @('All')
    ClientApplicationPublisherIds = @('All')
    ClientApplicationsFromVerifiedPublisherOnly = $true
}

Set-EntraPermissionGrantConditionSet @params
```

This command updates sets the specified permission grant set.

## Parameters

### -PolicyId

The unique identifier of a Microsoft Entra ID permission grant policy object.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -ConditionSetType

The value indicates whether the condition sets are included in the policy or excluded.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Id

The unique identifier of a Microsoft Entra ID permission grant condition set object.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -PermissionType

Specific type of permissions (application, delegated) to scope consent operation down to.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PermissionClassification

Specific classification (all, low, medium, high) to scope consent operation down to.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Permissions

The identifier of the resource application to scope consent operation down to.
It could be @("All") or a list of permission ids.

```yaml
Type: System.Collections.Generic.List`1[System.String]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClientApplicationIds

The set of client application ids to scope consent operation down to.
It could be @("All") or a list of client application Ids.

```yaml
Type: System.Collections.Generic.List`1[System.String]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClientApplicationTenantIds

The set of client application tenant ids to scope consent operation down to.
It could be @("All") or a list of client application tenant ids.

```yaml
Type: System.Collections.Generic.List`1[System.String]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClientApplicationPublisherIds

The set of client applications publisher ids to scope consent operation down to.
It could be @("All") or a list of client application publisher ids.

```yaml
Type: System.Collections.Generic.List`1[System.String]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClientApplicationsFromVerifiedPublisherOnly

A value indicates whether to only includes client applications from verified publishers.

```yaml
Type: System.Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceApplication

The identifier of the resource application to scope consent operation down to.
It could be "Any" or a specific resource application id.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## Inputs

### String

## Outputs

## Notes

## Related Links

[New-EntraPermissionGrantConditionSet](New-EntraPermissionGrantConditionSet.md)

[Get-EntraPermissionGrantConditionSet](Get-EntraPermissionGrantConditionSet.md)

[Remove-EntraPermissionGrantConditionSet](Remove-EntraPermissionGrantConditionSet.md)
