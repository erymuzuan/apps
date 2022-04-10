Param(
    [string]$username = "",
    [string]$password = "",
    [string]$branch = "002",
    [string]$terminal = "002-001",
    [switch]$skipUpdate
)

gps forex* | kill

if($skipUpdate.IsPresent -eq $false){

    git fetch origin --prune
    git merge origin/master

    git lfs fetch
    git lfs checkout
}


$env:FOREX_ENV="Prod"
$env:FOREX_ENVIRONMENT="Prod"
$env:FOREX_Branch=$branch
$env:FOREX_Terminal=$terminal
$env:FOREX_BaseUrl="https://web-forex.azurewebsites.net/"


.\forex.printer\wpf.receipt.printer.exe