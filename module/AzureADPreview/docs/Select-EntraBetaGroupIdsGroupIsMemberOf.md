---
external help file: Microsoft.Graph.Entra.Beta-Help.xml
Module Name: Microsoft.Graph.Entra.Beta
online version:
schema: 2.0.0
---

# Select-EntraBetaGroupIdsGroupIsMemberOf

## SYNOPSIS
Gets group IDs that a group is a member of.

## SYNTAX

```
Select-EntraBetaGroupIdsGroupIsMemberOf -ObjectId <String>
 -GroupIdsForMembershipCheck <GroupIdsForMembershipCheck> [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The Select-EntraBetaGroupIdsGroupIsMemberOf cmdlet gets the groups that a specified group is a member of in Azure Active Directory (AD).

## EXAMPLES

### Example 1: Get the group membership of a group for a group
```
PS C:\> $Groups = New-Object Microsoft.Open.AzureAD.Model.GroupIdsForMembershipCheck
PS C:\> $Groups.GroupIds = (Get-EntraBetaGroup -Top 1).ObjectId
PS C:\> $GroupId = (Get-EntraBetaGroup -Top 1).ObjectId
PS C:\> Select-EntraBetaGroupIdsGroupIsMemberOf  -ObjectId $GroupId -GroupIdsForMembershipCheck $Groups

OdataMetadata                                                                                   Value
-------------                                                                                   -----
https://graph.windows.net/85b5ff1e-0402-400c-9e3c-0f9e965325d1/$metadata#Collection(Edm.String) {093fc0e2-1d6e-4a1b-9bf8-effa0196f1f7}
```

The first command creates a GroupIdsForMembershipCheck object, and then stores it in the $Groups variable.

The second command gets an ID for a group by using the Get-EntraBetaGroup (./Get-EntraBetaGroup.md)cmdlet, and then stores it as a property of $Groups.

The third command gets the ID of a group by using Get-EntraBetaGroup , and then stores it in the $GroupId variable.

The final command gets the group membership of a group identified by $GroupId.

## PARAMETERS

### -GroupIdsForMembershipCheck
Specifies an array of group object IDs.

```yaml
Type: GroupIdsForMembershipCheck
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -InformationAction
Specifies how this cmdlet responds to an information event.
The acceptable values for this parameter are:

- Continue
- Ignore
- Inquire
- SilentlyContinue
- Stop
- Suspend

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: infa

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InformationVariable
Specifies an information variable.

```yaml
Type: String
Parameter Sets: (All)
Aliases: iv

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ObjectId
Specifies the ID of a group in Azure AD.

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
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-EntraBetaGroup]()
