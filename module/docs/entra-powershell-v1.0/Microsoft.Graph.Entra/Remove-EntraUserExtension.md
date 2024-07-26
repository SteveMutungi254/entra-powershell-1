---
title: Remove-EntraUserExtension.
description: This article provides details on the Remove-EntraUserExtension command.


ms.topic: reference
ms.date: 06/26/2024
ms.author: eunicewaweru
ms.reviewer: stevemutungi
manager: CelesteDG
author: msewaweru
external help file: Microsoft.Graph.Entra-Help.xml
Module Name: Microsoft.Graph.Entra
online version: https://learn.microsoft.com/powershell/module/Microsoft.Graph.Entra/Remove-EntraUserExtension

schema: 2.0.0
---

# Remove-EntraUserExtension

## Synopsis

Removes a user extension.

## Syntax

### SetMultiple

```powershell
Remove-EntraUserExtension 
 -ObjectId <String> 
 -ExtensionNames <System.Collections.Generic.List`1[System.String]>
 [<CommonParameters>]
```

### SetSingle

```powershell
Remove-EntraUserExtension 
 -ObjectId <String> 
 -ExtensionName <String>
 [<CommonParameters>]
```

## Description

The `Remove-EntraUserExtension` cmdlet removes a user extension from Microsoft Entra ID.

## Examples

### Example 1: Remove the "Test Extension" attribute from user: <TestUser@example.com>

```powershell
$params = @{
    ObjectId = 'TestUser@example.com'
    ExtensionName = 'Test Extension'
}

Remove-EntraUserExtension @params
```

This will remove the "Test Extension" attribute from user: <TestUser@example.com>.

## Parameters

### -ExtensionName

Specifies the name of an extension.

```yaml
Type: System.String
Parameter Sets: SetSingle
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -ExtensionNames

Specifies an array of extension names.

```yaml
Type: System.Collections.Generic.List`1[System.String]
Parameter Sets: SetMultiple
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -ObjectId

Specifies an object ID.

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

### CommonParameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## Inputs

## Outputs

## Notes

## Related Links

[Get-EntraUserExtension](Get-EntraUserExtension.md)

[Set-EntraUserExtension](Set-EntraUserExtension.md)
