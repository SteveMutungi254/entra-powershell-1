---
title: Set-EntraPartnerInformation
description: This article provides details on the Set-EntraPartnerInformation command.


ms.topic: reference
ms.date: 06/26/2024
ms.author: eunicewaweru
ms.reviewer: stevemutungi
manager: CelesteDG
author: msewaweru

external help file: Microsoft.Graph.Entra-help.xml
Module Name: Microsoft.Graph.Entra
online version: https://learn.microsoft.com/powershell/module/Microsoft.Graph.Entra/Set-EntraPartnerInformation

schema: 2.0.0
---

# Set-EntraPartnerInformation

## Synopsis

Sets company information for partners.

## Syntax

```powershell
Set-EntraPartnerInformation 
 [-CompanyType <CompanyType>] 
 [-PartnerCompanyName <String>]
 [-PartnerSupportTelephones <String[]>] 
 [-PartnerSupportEmails <String[]>] 
 [-PartnerCommerceUrl <String>]
 [-PartnerSupportUrl <String>] 
 [-PartnerHelpUrl <String>] 
 [-TenantId <Guid>] 
 [<CommonParameters>]
```

## Description

The `Set-EntraPartnerInformation` cmdlet is used by partners to set partner-specific properties.
These properties can view by all tenants that the partner has access to.

## Examples

### Example 1: Update the help URL

```powershell
Set-EntraPartnerInformation -PartnerHelpUrl 'http://www.help.contoso.com'
```

This command updates the help URL for this partner.

### Example 2: Update the Support URL

```powershell
Set-EntraPartnerInformation -PartnerSupportUrl 'http://www.test1.com'
```

This command updates the Support URL for this partner.

### Example 3: Update the Commerce URL

```powershell
Set-EntraPartnerInformation -PartnerCommerceUrl 'http://www.test1.com'
```

This command updates the Commerce URL for this partner.

### Example 4: Update the SupportEmails

```powershell
Set-EntraPartnerInformation -PartnerSupportEmails 'contoso@example.com' 
```

This command updates the SupportEmails for this partner.

### Example 5: Update the SupportTelephones

```powershell
$params = @{
    PartnerSupportTelephones = '234234234'
    TenantId = 'bbbbcccc-1111-dddd-2222-eeee3333ffff'
}

Set-EntraPartnerInformation @params
```

This command updates the SupportTelephones for this partner.

## Parameters

### -PartnerCommerceUrl

Specifies the URL for the partner's commerce website.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PartnerHelpUrl

Specifies the URL for the partner's Help website.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PartnerSupportEmails

Specifies the support email address for the partner.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PartnerSupportTelephones

Specifies the support telephone numbers for the partner.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PartnerSupportUrl

Specifies the URL for the partner's support website.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -TenantId

Specifies the unique ID of the tenant on which to perform the operation.
The default value is the tenant of the current user.
This parameter applies only to partner users.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -CompanyType

Specifies the partner's company type.

```yaml
Type: CompanyType
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PartnerCompanyName

Specifies the partner's company name.


```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## Inputs

## Outputs

## Notes

## Related Links

[Get-EntraPartnerInformation](Get-EntraPartnerInformation.md)
