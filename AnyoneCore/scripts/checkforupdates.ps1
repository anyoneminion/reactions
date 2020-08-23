$path = Get-Content -Path $PSScriptRoot\path.txt

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$json = (Invoke-WebRequest -Uri https://api.github.com/repos/AnyoneMinion/reactions/releases -UseBasicParsing | ConvertFrom-Json)
Set-Content -Path $path\data\version.txt -Value $json[0].tag_name
Set-Content -Path $path\data\changelog.txt -Value $json[0].body, `n, $json[1].body, `n, $json[2].body, `n, $json[3].body, `n, $json[4].body, `n, $json[5].body

stop-process -Id $PID