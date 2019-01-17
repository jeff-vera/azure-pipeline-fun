[CmdletBinding(DefaultParameterSetName = 'None')]
param
(
  [String] [Parameter(Mandatory = $true)] $ServerName,
  [String] $AzureFirewallName = "AzureWebAppFirewall"
  [String] $ResourceGroupName = "VstsRG-jeff-vera-3b16"
)

$ErrorActionPreference = 'Stop'

function New-AzureSQLServerFirewallRule {
  $agentIP = (New-Object net.webclient).downloadstring("http://checkip.dyndns.com") -replace "[^\d\.]"
  echo $agentIP
  echo $AzureFirewallName
  echo $ServerName
  New-AzureRmSqlServerFirewallRule -ResourceGroupName $ResourceGroupName -StartIPAddress $agentIp -EndIPAddress $agentIp -FirewallRuleName $AzureFirewallName -ServerName $ServerName
}
function Update-AzureSQLServerFirewallRule{
  $agentIP= (New-Object net.webclient).downloadstring("http://checkip.dyndns.com") -replace "[^\d\.]"
  Set-AzureRmSqlServerFirewallRule -ResourceGroupName $ResourceGroupName -StartIPAddress $agentIp -EndIPAddress $agentIp -FirewallRuleName $AzureFirewallName -ServerName $ServerName
}

Select-AzureRmSubscription -SubscriptionId "9529b43c-033a-435e-b1b3-d54026dbea71"
(Get-AzureRmContext).Subscription 
Set-AzureRmContext -SubscriptionId "9529b43c-033a-435e-b1b3-d54026dbea71" 
Set-AzureRmContext -Subscription "Pay-As-You-Go"

If ((Get-AzureSqlDatabaseServerFirewallRule -ServerName $ServerName -RuleName $AzureFirewallName -ErrorAction SilentlyContinue) -eq $null)
{
  New-AzureSQLServerFirewallRule
}
else
{
  Update-AzureSQLServerFirewallRule
}
