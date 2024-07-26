---
title: New-EntraServicePrincipalPasswordCredential.
description: This article provides details on the New-EntraServicePrincipalPasswordCredential command.


ms.topic: reference
ms.date: 06/26/2024
ms.author: eunicewaweru
ms.reviewer: stevemutungi
manager: CelesteDG
author: msewaweru
external help file: Microsoft.Graph.Entra-Help.xml
Module Name: Microsoft.Graph.Entra
online version: https://learn.microsoft.com/powershell/module/Microsoft.Graph.Entra/New-EntraServicePrincipalPasswordCredential

schema: 2.0.0
---

# New-EntraServicePrincipalPasswordCredential

## Synopsis

Creates a password credential for a service principal.

## Syntax

```powershell
New-EntraServicePrincipalPasswordCredential 
 -ObjectId <String>
 [-EndDate <DateTime>] 
 [-StartDate <DateTime>] 
 [<CommonParameters>]
```

## Description

The New-EntraServicePrincipalPasswordCredential cmdlet creates a password credential for a service principal in Microsoft Entra ID.

## Examples

### Example 1: Create a password credential with StartDate

```powershell
Connect-Entra -Scopes 'Application.ReadWrite.All' #Delegated Permission
Connect-Entra -Scopes 'Application.ReadWrite.OwnedBy' #Application Permission
New-EntraServicePrincipalPasswordCredential -ObjectID '00001111-aaaa-2222-bbbb-3333cccc4444' -StartDate 2024-03-21T14:14:14Z
```

```output
CustomKeyIdentifier DisplayName EndDateTime         Hint KeyId                                SecretText                               StartDateTime
------------------- ----------- -----------         ---- -----                                ----------                               -------------
                                21-03-2026 12:12:13 333  aaaaaaaa-0b0b-1c1c-2d2d-333333333333 Aa1Bb2Cc3.-Dd4Ee5Ff6Gg7Hh8Ii9_~Jj0Kk1Ll2 21-03-2024 14:14:14
```

This example demonstrates how to create a password credential with StartDate for a service principal in Microsoft Entra ID.

### Example 2: Create a password credential with EndtDate

```powershell
Connect-Entra -Scopes 'Application.ReadWrite.All' #Delegated Permission
Connect-Entra -Scopes 'Application.ReadWrite.OwnedBy' #Application Permission
New-EntraServicePrincipalPasswordCredential -ObjectID '00001111-aaaa-2222-bbbb-3333cccc4444' -EndDate 2030-03-21T14:14:14Z
```

```output
CustomKeyIdentifier DisplayName EndDateTime         Hint KeyId                                SecretText                               StartDateTime
------------------- ----------- -----------         ---- -----                                ----------                               -------------
                                21-03-2030 14:14:14 333  aaaaaaaa-0b0b-1c1c-2d2d-333333333333 Aa1Bb2Cc3.-Dd4Ee5Ff6Gg7Hh8Ii9_~Jj0Kk1Ll2 21-03-2024 12:15:10
```

This example demonstrates how to create a password credential with EndDate for a service principal in Microsoft Entra ID.

## Parameters

### -EndDate

The date and time at which the password expires represented using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2024 is 2024-01-01T00:00:00Z.

```yaml
Type: System.DateTime
Parameter Sets: (All)
Aliases:

Required: False
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

### -StartDate

The date and time at which the password becomes valid. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2024 is 2024-01-01T00:00:00Z.

```yaml
Type: System.DateTime
Parameter Sets: (All)
Aliases:

Required: False
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

[Get-EntraServicePrincipalPasswordCredential](Get-EntraServicePrincipalPasswordCredential.md)

[Remove-EntraServicePrincipalPasswordCredential](Remove-EntraServicePrincipalPasswordCredential.md)
