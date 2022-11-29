Param(
    [Parameter(mandatory = $true)]
    [string] $resourceGroupName,

    [Parameter(mandatory = $true)]
    [string] $vmname
)
Connect-AzAccount -Identity
Start-AzVM -ResourceGroupName $resourceGroupName -Name $vmname