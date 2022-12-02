<#
	This PowerShell script was automatically converted to PowerShell Workflow so it can be run as a runbook.
	Specific changes that have been made are marked with a comment starting with “Converter:”
#>
workflow Workflow-Test {
    Param(
        [Parameter(mandatory = $true)]
        [string] $resourceGroupName,

        [Parameter(mandatory = $true)]
        [string] $vmname

    )
    # Converter: Wrapping initial script in an InlineScript activity, and passing any parameters for use within the InlineScript
    # Converter: If you want this InlineScript to execute on another host rather than the Automation worker, simply add some combination of -PSComputerName, -PSCredential, -PSConnectionURI, or other workflow common parameters (http://technet.microsoft.com/en-us/library/jj129719.aspx) as parameters of the InlineScript
    inlineScript {
        $resourceGroupName = $using:resourceGroupName
        $vmname = $using:vmname

        Connect-AzAccount -Identity
        Stop-AzVM -ResourceGroupName $resourceGroupName -Name $vmname -Force
    }
}