$path = Get-Content -Path $PSScriptRoot\path.txt

if(!(test-path $path\TensorReactionsBackup)) {
     New-Item -Path $path\TensorReactionsBackup -ItemType Directory -Force 
}
Compress-Archive -Path $path\TensorReactions\GeneralTriggers, $path\TensorReactions\TimelineTriggers -DestinationPath $path\TensorReactionsBackup\TensorReactions_$((Get-Date).ToString("MM_dd_HHmm")).zip -Force
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$tag = (Invoke-WebRequest -Uri https://api.github.com/repos/AnyoneMinion/reactions/releases -UseBasicParsing | ConvertFrom-Json)[0].tag_name
Invoke-WebRequest https://github.com/AnyoneMinion/reactions/releases/download/$tag/TensorReactions.zip -Out $path\TensorReactions\TensorReactions.zip
Expand-Archive $path\TensorReactions\TensorReactions.zip -DestinationPath $path\TensorReactions\ -Force
Remove-Item $path\TensorReactions\TensorReactions.zip -Force
Set-Content -Path $path\TensorReactions\AnyoneCore\data\status.txt -Value 'Done'

stop-process -Id $PID