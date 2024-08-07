---
title: Remove-EntraBetaServicePrincipalPasswordCredential
description: This article provides details on the Remove-EntraBetaServicePrincipalPasswordCredential command.

ms.topic: reference
ms.date: 06/26/2024
ms.author: eunicewaweru
ms.reviewer: stevemutungi
manager: CelesteDG
author: msewaweru
external help file: Microsoft.Graph.Entra.Beta-Help.xml
Module Name: Microsoft.Graph.Entra.Beta
online version:
schema: 2.0.0
---

# Remove-EntraBetaServicePrincipalPasswordCredential

## Synopsis
Removes a password credential from a service principal.

## Syntax

```powershell
Remove-EntraBetaServicePrincipalPasswordCredential
 -ObjectId <String>
 -KeyId <String>
 [<CommonParameters>]
```

## Description
The Remove-EntraBetaServicePrincipalPasswordCredential cmdlet removes a password credential from a service principal in Microsoft Entra ID.

## Examples

### Example 1: Remove a password credential from a service principal in Microsoft Entra ID.  
```powershell
PS C:\> Remove-EntraBetaServicePrincipalPasswordCredential -ObjectID 1a3d700a-bedb-4e8f-bdda-72979a952a8d -KeyId a25ad0b5-7537-4b0b-8065-cc1c016bc18e
```

This command demonstrates how to remove a password credential from a service principal in Microsoft Entra ID.  
ObjectId: The ObjectId of the specified Service Principal Password Credential.  
KeyID: The unique identifier of the Password Credential.  

## Parameters

### -KeyId
Specifies the unique identifier of password credential.

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

### -ObjectId
Specifies the ID of an application in Microsoft Entra ID.

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

## RELATED LINKS