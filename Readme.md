#Change wallpaper for different resolution
---
Switch wallpaper for different resolution (e.g surface screen rotation)

Including file: test.ps1, run.bat, run.vbs

##Preparations
1.  Get your screen resolution ($HorizontalWidth & $VerticalWidth )
2.  Prepare two wallpapers for different resolution
3.  Open ```test.ps1``` with text editor(Notepad or PowerShell ISE)
4.  Locate follow code:
    ```PowerShell
     if ( $CWidth -eq $YourHorizontalWidth ) 
         { Set-Wallpaper -Path '$Horizontal_Wallpaper_Path' -Style $YourStyle } 
     elseif ( $CWidth -eq $YourVerticalWidth ) 
         { Set-Wallpaper -Path '$Vertical_Wallpaper_Path' -Style $YourStyle }
    ```
    Replace ```$YourHorizontalWidth```, ```$YourVerticalWidth``` with specific number (such as 1920 or 1080)
    
    Replace ```$Horizontal_Wallpaper_Path```, ```$Vertical_Wallpaper_Path``` with Path of prepared pictures(e.g C:\wallpapers\xxx.jpg)
    
    Replace ```$YourStyle``` with Tile or Center or Stretch or Fill or Span or Fit (suggest Fill)
    
    Check again then save the file
5.  Run ```run.vbs``` to start
6.  *(Optional)* Add ```run.vbs``` to task scheduler

##Sample
```Powershell
if ( ($CWidth -eq 2736 ) -or ($CWidth -eq 1368) ) 
    { Set-Wallpaper -Path 'C:\wallpaper\horizontal.jpg' -Style Fill } 
elseif ( ($CWidth -eq 912 ) -or ($CWidth -eq 1824) ) 
    { Set-Wallpaper -Path 'C:\wallpaper\vertical.jpg' -Style Fill }
```
*Note that you can use logic expression for IF-ELSE struction*