# ------------------------------------------------------------------------------ 
#  Copyright (c) Microsoft Corporation.  All Rights Reserved.  
#  Licensed under the MIT License.  See License in the project root for license information. 
# ------------------------------------------------------------------------------ 

function Disconnect-Entra { 
    [CmdletBinding(DefaultParameterSetName = 'Default')]
    param ()   
    Disconnect-MgGraph
}


