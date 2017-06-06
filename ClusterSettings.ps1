#Restituisce i Valori configurati
$cluster=Get-Cluster -Name sqlmossprclu
Write-Host $cluster.name
Write-Host 'Valori configurati prima della modifica:'
get-cluster -Name SQLMRPR02CLU | fl *subnet*
$cluster.SameSubnetDelay = 2000
$cluster.CrossSubnetThreshold = 10
$cluster.CrossSubnetDelay = 2000
$cluster.SameSubnetThreshold = 10
Write-Host $cluster.name
Write-Host 'Valori configurati dopo la modifica:'
get-cluster -Name pspr01 | fl *subnet*