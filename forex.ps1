Param(
    [string]$username = "",
    [string]$password = "",
    [string]$branch = "002"    
)

gps forex* | kill
git fetch origin --prune
git merge origin/master

$env:FOREX_ENV="Prod"
$env:FOREX_ENVIRONMENT="Prod"
$env:FOREX_Branch=$branch
$env:FOREX_Terminal="002-001"
$env:FOREX_BaseUrl="https://web-forex.azurewebsites.net/"


.\forex\forex.exe /username:$username /password:$password