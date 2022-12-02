Param(
    [Parameter(mandatory = $true)]
    [string] $resourceGroupName,

    [Parameter(mandatory = $true)]
    [string] $vmname
)
Connect-AzAccount -Identity
Stop-AzVM -ResourceGroupName $resourceGroupName -Name $vmname -Force