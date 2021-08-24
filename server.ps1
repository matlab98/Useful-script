Write-Host (wsl hostname -I).trim()
$test=(wsl hostname -I).trim()
netsh interface portproxy add v4tov4 listenport=22 listenaddress=0.0.0.0 connectport=22 connectaddress=$test
netsh interface portproxy add v4tov4 listenport=443 listenaddress=0.0.0.0 connectport=443 connectaddress=$test
netsh interface portproxy add v4tov4 listenport=80 listenaddress=0.0.0.0 connectport=80 connectaddress=$test
netsh interface portproxy add v4tov4 listenport=666 listenaddress=0.0.0.0 connectport=666 connectaddress=$test
netsh interface portproxy add v4tov4 listenport=777 listenaddress=0.0.0.0 connectport=777 connectaddress=$test

wsl -u root -d Ubuntu-18.04 sudo service docker start
Write-Host (wsl service docker status)
wsl  -u root -d Ubuntu-18.04 sudo service ssh start
Write-Host (wsl service ssh status)