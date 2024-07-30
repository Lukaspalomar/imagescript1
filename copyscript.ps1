# Define source and destination paths
$sourcePath = "C:\Users\cureit\Downloads\RPI_Image\RPI_Image"
$bootpartition = "E:\"
$rootPartition= "C:\"

# Copy files to the boot partition
Copy-Item -Path "$sourcePath\rflowman" -Destination "$bootPartition\rflowman" -Force
Copy-Item -Path "$sourcePath\firstboot.sh" -Destination "$bootPartition\firstboot.sh" -Force

# Set the appropriate permissions (Windows may not require this)
# icacls "$bootPartition\firstboot.sh" /grant Everyone:(R,W)

Write-Output "Files copied successfully to $bootPartition."
