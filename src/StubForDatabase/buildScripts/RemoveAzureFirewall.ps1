[CmdletBinding(DefaultParameterSetName = 'None')]
param
(
  [String] [Parameter(Mandatory = $true)] $ServerName,
  [String] $AzureFirewallName = "AzureWebAppFirewall",
  [String] $ResourceGroupName = "VstsRG-jeff-vera-3b16"
)

$ErrorActionPreference = 'Stop'

If ((Get-AzureRmSqlDatabaseServerFirewallRule -ResourceGroupName $ResourceGroupName -ServerName $ServerName))
{
  Remove-AzureRmSqlDatabaseServerFirewallRule -FirewallRuleName $AzureFirewallName -ResourceGroupName $ResourceGroupName -ServerName $ServerName
}
