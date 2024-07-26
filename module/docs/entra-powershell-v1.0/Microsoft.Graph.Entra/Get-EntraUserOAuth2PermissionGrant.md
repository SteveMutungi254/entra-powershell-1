---
title: Get-EntraUserOAuth2PermissionGrant
description: This article provides details on the Get-EntraUserOAuth2PermissionGrant command.


ms.topic: reference
ms.date: 06/26/2024
ms.author: eunicewaweru
ms.reviewer: stevemutungi
manager: CelesteDG
author: msewaweru
external help file: Microsoft.Graph.Entra-Help.xml
Module Name: Microsoft.Graph.Entra
online version: https://learn.microsoft.com/powershell/module/Microsoft.Graph.Entra/Get-EntraUserOAuth2PermissionGrant

schema: 2.0.0
---

# Get-EntraUserOAuth2PermissionGrant

## Synopsis

Gets an oAuth2PermissionGrant object.

## Syntax

```powershell
Get-EntraUserOAuth2PermissionGrant
 [-All]
 -ObjectId <String>
 [-Top <Int32>]
 [-Property <String[]>]
 [<CommonParameters>]
```

## Description

The Get-EntraUserOAuth2PermissionGrant cmdlet gets an oAuth2PermissionGrant object for the specified user in Microsoft Entra ID.

In delegated scenarios with work or school accounts, the signed-in user must be assigned a supported Microsoft Entra role or a custom role with a supported role permission. The following least privileged roles are supported for this operation.

- Application Administrator
- Application Developer
- Cloud Application Administrator
- Directory Writers
- Privileged Role Administrator
- User Administrator
- Directory Readers
- Global Reader
- Guest Inviter

## Examples

### Example 1: Retrieve the OAuth2 permission grants for a user

```powershell
 Connect-Entra -Scopes 'Directory.Read.All'
 $UserId = (Get-EntraUser -Top 1).ObjectId
 Get-EntraUserOAuth2PermissionGrant -ObjectId $UserId
```

This example retrieves the OAuth2 permission grants for a user using the ObjectId parameter. Use the `Get-EntraBetaUser` cmdlet to obtain the `ObjectId` value.

### Example 2: Retrieve the OAuth2 permission grants for a user using object ID parameter

```powershell
Connect-Entra -Scopes 'Directory.Read.All'
Get-EntraUserOAuth2PermissionGrant -ObjectId 'aaaaaaaa-0000-1111-2222-bbbbbbbbbbbb'
```

```Output
Id                                ClientId                             ConsentType PrincipalId                          ResourceId
--                                --------                             ----------- -----------                          ----------
C2dE3fH4iJ5kL6mN7oP8qR9sT0uV1w    00001111-aaaa-2222-bbbb-3333cccc4444 Principal   aaaaaaaa-0000-1111-2222-bbbbbbbbbbbb a0a0a0a0-bbbb-cccc-dddd-e1e1e1e1e1e1
E3fH4iJ5kL6mN7oP8qR9sT0uV1wX2y    11112222-bbbb-3333-cccc-4444dddd5555 Principal   aaaaaaaa-0000-1111-2222-bbbbbbbbbbbb a0a0a0a0-bbbb-cccc-dddd-e1e1e1e1e1e1
```

This example retrieve the OAuth2 permission grants for a user using object ID parameter.

### Example 3: Retrieve the OAuth2 permission grants for a user using All parameter

```powershell
Connect-Entra -Scopes 'Directory.Read.All'
Get-EntraUserOAuth2PermissionGrant -ObjectId 'aaaaaaaa-0000-1111-2222-bbbbbbbbbbbb' -All
```

```Output
Id                                ClientId                             ConsentType PrincipalId                          ResourceId
--                                --------                             ----------- -----------                          ----------
C2dE3fH4iJ5kL6mN7oP8qR9sT0uV1w    00001111-aaaa-2222-bbbb-3333cccc4444 Principal   aaaaaaaa-0000-1111-2222-bbbbbbbbbbbb a0a0a0a0-bbbb-cccc-dddd-e1e1e1e1e1e1
E3fH4iJ5kL6mN7oP8qR9sT0uV1wX2y    11112222-bbbb-3333-cccc-4444dddd5555 Principal   aaaaaaaa-0000-1111-2222-bbbbbbbbbbbb a0a0a0a0-bbbb-cccc-dddd-e1e1e1e1e1e1
```

This Example Retrieve the OAuth2 permission grants for a user using All parameter.

## Parameters

### -All

List all pages.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ObjectId

Specifies the ID (as a UPN or ObjectId) of a user in Microsoft Entra ID.

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

### -Top

Specifies the maximum number of records to return.

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
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

[Get-EntraUser](Get-EntraUser.md)
