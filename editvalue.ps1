$firstbootPath = "E:\firstboot.sh"

# Prompt the user for input
$hostname = Read-Host "Enter the hostname"
$e1_ip = Read-Host "Enter the E1 IP address"
$e2_ip = Read-Host "Enter the E2 IP address"
$e3_vid = Read-Host "Enter the E3 VLAN ID"
$e3_ip = Read-Host "Enter the E3 IP address"

# Read the content of the firstboot.sh script
$scriptContent = Get-Content -Path $firstbootPath

# Replace placeholders with user-provided values
$scriptContent = $scriptContent -replace 'HN="[^"]*"', "HN=`"$hostname`""
$scriptContent = $scriptContent -replace 'E1_IP="[^"]*"', "E1_IP=`"$e1_ip`""
$scriptContent = $scriptContent -replace 'E2_IP="[^"]*"', "E2_IP=`"$e2_ip`""
$scriptContent = $scriptContent -replace 'E3_VID="[^"]*"', "E3_VID=`"$e3_vid`""
$scriptContent = $scriptContent -replace 'E3_IP="[^"]*"', "E3_IP=`"$e3_ip`""

# Write the updated content back to the firstboot.sh script
$scriptContent | Set-Content -Path $firstbootPath

Write-Output "firstboot.sh has been updated with the new values."
