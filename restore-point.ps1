# Define the maximum number of restore points to keep
$maxRestorePoints = 10

# Create a new system restore point
Checkpoint-Computer -Description "Daily Restore Point"

# opzione tolta perchè sennò non fa disco c 
#-RestorePointType "MODIFY_SETTINGS"

# Get a list of all restore points
$restorePoints = Get-ComputerRestorePoint | Sort-Object -Property CreationTime

# Check if the number of restore points exceeds the maximum
if ($restorePoints.Count -gt $maxRestorePoints) {

 # Calculate how many restore points need to be deleted
 $restorePointsToDelete = $restorePoints.Count - $maxRestorePoints

 # Delete the oldest restore points
 for ($i = 0; $i -lt $restorePointsToDelete; $i++) {
 $restorePointID = $restorePoints[$i].SequenceNumber
 vssadmin delete shadows /for=c: /oldest /quiet
 vssadmin delete shadows /for=d: /oldest /quiet
 }
}