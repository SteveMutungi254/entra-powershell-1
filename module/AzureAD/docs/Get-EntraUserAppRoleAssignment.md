---
external help file: Microsoft.Graph.Entra-Help.xml
Module Name: Microsoft.Graph.Entra
online version:
schema: 2.0.0
---

# Get-EntraUserAppRoleAssignment

## SYNOPSIS
Get a user application role assignment.

## SYNTAX

```
Get-EntraUserAppRoleAssignment [-All <Boolean>] -ObjectId <String> [-Top <Int32>] [<CommonParameters>]
```

## DESCRIPTION

## EXAMPLES

### Example 1: Get a user application role assignment
```
PS C:\> $UserId = (Get-EntraUser -Top 1).ObjectId
Get-EntraUserAppRoleAssignment -ObjectId $UserId
```

The first command gets the ID of an Azure AD user by using the Get-EntraUser (./Get-EntraUser.md)cmdlet. 
The command stores the value in the $UserId variable.

The second command gets a user application role assignment for the user in $UserId.

## PARAMETERS

### -All
If true, return all user application role assignments for this user.
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
Specifies the ID of a user (as a UPN or ObjectId) in Microsoft Entra ID.

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

[Get-EntraUser]()

[New-EntraUserAppRoleAssignment]()

[Remove-EntraUserAppRoleAssignment]()
