---
title: Get-EntraBetaAttributeSet.
description: This article provides details on the Get-EntraBetaAttributeSet command.

ms.topic: reference
ms.date: 07/10/2024
ms.author: eunicewaweru
ms.reviewer: stevemutungi
manager: CelesteDG
author: msewaweru

external help file: Microsoft.Graph.Entra.Beta-help.xml
Module Name: Microsoft.Graph.Entra.Beta
online version: https://learn.microsoft.com/powershell/module/Microsoft.Graph.Entra.Beta/Get-EntraBetaAttributeSet

schema: 2.0.0
---

# Get-EntraBetaAttributeSet

## Synopsis

Gets a list of attribute sets.

## Syntax

### GetQuery (Default)

```powershell
Get-EntraBetaAttributeSet
 [-Property <String[]>]
 [<CommonParameters>]
```

### GetById

```powershell
Get-EntraBetaAttributeSet 
 -Id <String> 
 [<CommonParameters>]
```

## Description

Gets a list of Microsoft Entra ID attribute sets. Specify `Id` parameter to retrieve an attribute set.

## Examples

### Example 1: Get an all attribute sets

```powershell
Connect-Entra -Scopes 'CustomSecAttributeDefinition.ReadWrite.All'
Get-EntraBetaAttributeSet 
```

```Output
Id                    Description                           MaxAttributesPerSet
--                    -----------                           -------------------
Engineering           Attributes for cloud engineering team 25
Contoso                 Attributes for Contoso            25
```

This example returns all attribute sets.

### Example 2: Get an attribute sets

```powershell
Connect-Entra -Scopes 'CustomSecAttributeDefinition.ReadWrite.All'
Get-EntraBetaAttributeSet -Id 'Testing'
```

```Output
Id      Description                     MaxAttributesPerSet
--      -----------                     -------------------
Testing Attributes for engineering team 10
```

This example demonstrates how to retrieve an attribute set by Id.

- `Id` parameter specifies the unique identifier for the attribute set within a tenant.

## Parameters

### -Id

Unique identifier for the attribute set within a tenant. This identifier can be up to 32 characters long and may include Unicode characters. It cannot contain spaces or special characters, and it cannot be changed later. The identifier is case insensitive.

```yaml
Type: System.String
Parameter Sets: GetById
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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## Inputs

### System.String

## Outputs

### System.Object

## Notes

## Related Links

[New-EntraBetaAttributeSet](New-EntraBetaAttributeSet.md)

[Set-EntraBetaAttributeSet](Set-EntraBetaAttributeSet.md)
