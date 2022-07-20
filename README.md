# Windows Daily Bing Wallpaper

Daily triggered automatically at 0:00 UTC.

Automatic rescheduling if the system is not powered on or not connected to the Internet

Minimum requirements: 
 - Win7 <img src="https://gist.githubusercontent.com/mavaddat/b2027570b3d28e9b7a1a0ce237796cc9/raw/21226dfc1ac200067afcc527d76acce5012fe7a5/win7.svg" width="30vw"/>

## How to Use

To accomplish the tasks below, copy-paste the respective PowerShell commands into a PowerShell terminal.

### Install

```ps1
powershell [Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor 3072; (New-Object Net.WebClient).DownloadString('https://raw.fastgit.org/star2000/BingWallpaper/master/ install.ps1') | iex
````

### Uninstall

```ps1
powershell [Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor 3072; (New-Object Net.WebClient).DownloadString('https://raw.fastgit.org/star2000/BingWallpaper/master/ uninstall.ps1') | iex
````

## set up

Change behavior via environment variables
```bat
setx "environment variable name" "environment variable value"
````

Manual refresh execution
```bat
schtasks /Run /TN "\star2000\BingWallpaper"
````

- save route
  - Environment variable name: `WallpaperPath`
  - Default: None (do not save)
  - optional value: any path with write permission
  - Note: When it does not end with `.jpg`, the file name defaults to `%Y-%m-%d.jpg` (year-year-month-day-day.jpg), see [UNIX time format]( https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/get-date#notes)
- Resolution
  - Environment variable name: `WallpaperResolution`
  - Default: `1920x1080`
  - optional values:
    - `UHD` (original image resolution, generally 4k or more)
    - `1920x1200`
    - `1920x1080`
    - `1366x768`
    - `1280x768`
    - `1024x768`
    - `800x600`
    - `800x480`
    - `768x1280`
    - `720x1280`
    - `640x480`
    - `480x800`
    - `400x240`
    - `320x240`
    - `240x320`
- International Edition
  - Environment variable name: `WallpaperEnSearch`
  - Default: `0` (domestic version)
  - optional values: `0`, `1`
- a few days ago
  - Environment variable name: `WallpaperDaysAgo`
  - Default: `0` (today)
  - optional values: `0`, `1`, `2`, `3`, `4`, `5`, `6`, `7`
