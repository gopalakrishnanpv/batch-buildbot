$app = Get-WmiObject -Class Win32_Product | Where-Object { 
		$_.Name -match "DecisionPro" 
}
if($app -ne $null){
$app.Uninstall()
Write-Host DecisionPro uninstalled.
}
else{
Write-Host DecisionPro not found.
}
