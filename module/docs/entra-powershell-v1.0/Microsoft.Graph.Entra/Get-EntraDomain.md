---
title: Get-EntraDomain
description: This article provides details on the Get-EntraDomain command.


ms.topic: reference
ms.date: 06/26/2024
ms.author: eunicewaweru
ms.reviewer: stevemutungi
manager: CelesteDG

external help file: Microsoft.Graph.Entra-Help.xml
Module Name: Microsoft.Graph.Entra
online version: https://learn.microsoft.com/powershell/module/Microsoft.Graph.Entra/Get-EntraDomain

schema: 2.0.0
---

# Get-EntraDomain

## Synopsis

Gets a domain.

## Syntax

### GetQuery (Default)

```powershell
Get-EntraDomain
 [-Property <String[]>]
 [<CommonParameters>]
```

### GetById

```powershell
Get-EntraDomain
 -Name <String>
 [-Property <String[]>]
 [<CommonParameters>]
```

## Description

The `Get-EntraDomain` cmdlet gets a domain in Microsoft Entra ID.

## Examples

### Example 1: Get a list of Domains that are created

```powershell
Connect-Entra -Scopes 'Domain.Read.All'
Get-EntraDomain
```

```Output
Id         AuthenticationType AvailabilityStatus IsAdminManaged IsDefault IsInitial IsRoot IsVerified Manufacturer Model PasswordNotificationWindowInDays PasswordValidityPeriodInDays SupportedServices
--         ------------------ ------------------ -------------- --------- --------- ------ ---------- ------------ ----- -------------------------------- ---------------------------- -----------------
TEST22.com Managed                               True           False     False     False  False                                                                                       {}
test26.com Managed                               True           False     False     False  False                                                                                       {}
test25.com Managed                               True           False     False     False  False                                                                                       {}
```

This command retrieves a list of domains.

### Example 2: Get a specific Domain

```powershell
Connect-Entra -Scopes 'Domain.Read.All'
Get-EntraDomain -Name TEST22.com
```

```Output
Id         AuthenticationType AvailabilityStatus IsAdminManaged IsDefault IsInitial IsRoot IsVerified Manufacturer Model PasswordNotificationWindowInDays PasswordValidityPeriodInDays SupportedServices
--         ------------------ ------------------ -------------- --------- --------- ------ ---------- ------------ ----- -------------------------------- ---------------------------- -----------------
TEST22.com Managed                               True           False     False     False  False                                                                                       {}
```

This command retrieves a domain with the specified name.

## Parameters

### -Name

Specifies the name of a domain.

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

## Outputs

## Notes

## Related Links

[Confirm-EntraDomain](Confirm-EntraDomain.md)

[New-EntraDomain](New-EntraDomain.md)

[Remove-EntraDomain](Remove-EntraDomain.md)

[Set-EntraDomain](Set-EntraDomain.md)
