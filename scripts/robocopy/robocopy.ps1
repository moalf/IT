$timestamp = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"
$logFile = "C:\Logs\$timestamp_log.txt"

$source = "\\<SOURCE_SERVER>\<SHARED_FOLDER>\<PATH>"
$dest = "\\<DESTINATION_SERVER>\<SHARED_FOLDER>\PATH"

# Robocopy options
$what = "/B /E"  # Backup mode, copy all subdirectories (even empty ones)
$options = "/R:1 /W:1 /XD workDIr logs /LOG:$logFile /NFL /NDL"

# Execute Robocopy command
Start-Process robocopy -ArgumentList "$source $dest $what $options" -NoNewWindow -Wait