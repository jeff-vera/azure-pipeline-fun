[CmdletBinding(DefaultParameterSetName = 'None')]
param
(
  [String] [Parameter(Mandatory = $true)] $ServerName,
  [String] $AzureFirewallName = "AzureWebAppFirewall"
)

$ErrorActionPreference = 'Stop'

function New-AzureSQLServerFirewallRule {
  $agentIP = (New-Object net.webclient).downloadstring("http://checkip.dyndns.com") -replace "[^\d\.]"
  echo $agentIP
  echo $AzureFirewallName
  echo $ServerName
  New-AzureRmSqlServerFirewallRule -StartIPAddress $agentIp -EndIPAddress $agentIp -RuleName $AzureFirewallName -ServerName $ServerName
}
function Update-AzureSQLServerFirewallRule{
  $agentIP= (New-Object net.webclient).downloadstring("http://checkip.dyndns.com") -replace "[^\d\.]"
  Set-AzureRmSqlServerFirewallRule -StartIPAddress $agentIp -EndIPAddress $agentIp -RuleName $AzureFirewallName -ServerName $ServerName
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
