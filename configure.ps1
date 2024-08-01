# combinedScript.ps1

# Execute the first script
Write-Output "Running first script..."
./copyscript.ps1

# Check if the first script executed successfully
if ($LASTEXITCODE -ne 0) {
    Write-Error "The first script encountered an error. Exiting."
    exit $LASTEXITCODE
}

# Execute the second script
Write-Output "Running second script..."
./editvalue.ps1

# Check if the second script executed successfully
if ($LASTEXITCODE -ne 0) {
    Write-Error "The second script encountered an error. Exiting."
    exit $LASTEXITCODE
}

Write-Output "Both scripts executed successfully."
