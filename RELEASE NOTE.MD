# Forex printer

## Installation
Use git to clone new app
```

git clone https://github.com/erymuzuan/apps.git

```

Updating
```
git fetch origin --prune
git merge origin/master

```

## RELEASE NOTE : forex.printer.20230624

### Json setting file could be located anywhener
We no longer requires json setting file in the app folder, this allowing you put in any location and name is as any things you like

### Rate form
The rate is now formmated with option specified for that particular currency

### Logo preload
Setting.json requires  `"LogoSourceUrl"`: entry

example for 99
```
{
  "LogoSourceUrl": "https://s3.ap-southeast-1.amazonaws.com/forex.public/public-5d4923ed7e3d415390f812093abe086b",
  "PrinterName": "OneNote (Desktop)",
  "PrinterId": "009001",
  ...
}
```