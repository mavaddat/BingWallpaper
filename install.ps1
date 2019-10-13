Register-ScheduledTask BingWallpaper star2000 (
    New-ScheduledTaskAction powershell { -NoLogo -NoProfile -NonInteractive -WindowStyle Hidden iwr -useb github.com/star2000/BingWallpaper/raw/master/wallup.ps1 | iex }
) (
    New-ScheduledTaskTrigger -Daily -At 0:0
) (
    New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -RunOnlyIfNetworkAvailable -StartWhenAvailable
)
