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


$env:FOREX_ENV="AdamDanok"
$env:FOREX_ENVIRONMENT="AdamDanok"
$env:FOREX_PRINTER=$Printer
$env:FOREX_BaseUrl="https://beta.forex-erp.com/"

cd .\forex-printer_2.0\
.\wpf.receipt.printer.exe $Printer