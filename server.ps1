Write-Host (wsl hostname -I).trim()
$test=(wsl hostname -I).trim()
netsh interface portproxy add v4tov4 listenport=22 listenaddress=0.0.0.0 connectport=22 connectaddress=$test
