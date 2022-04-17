Param(
    [string]$Printer,
    [switch]$skipUpdate
)

Get-Process wpf.receipt.printer.exe.* | Stop-Process

if($skipUpdate.IsPresent -eq $false){
    git reset --hard
    git fetch origin --prune
    git merge origin/master

    git lfs fetch
    git lfs checkout
}


$env:FOREX_ENV="ForexProd"
$env:FOREX_ENVIRONMENT="ForexProd"
$env:FOREX_PRINTER=$Printer
$env:FOREX_BaseUrl="https://add.adam.co.th/"


.\forex.printer\wpf.receipt.printer.exe $Printer