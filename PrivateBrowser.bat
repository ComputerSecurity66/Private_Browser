@echo off
:: 'color 0A' makes it bright hacker green. 
:: 'color 0B' makes it bright cyan. Change it below to what you prefer!
color 0B

:menu
cls
echo ======================================
echo       SECURE IN PRIVATE BROWSING
echo ======================================
echo 1. Google chrome
echo 2. Microsoft Edge
echo 3. FireFox
echo 4. Opera
echo 5. Brave
echo 6. Tor
echo 0. Exit
echo ======================================
echo.

set /p choice="Choose a browser (0-6): "

if "%choice%"=="0" goto exit_msg
if "%choice%"=="1" set "browser_name=Google Chrome"    & set "browser_cmd=chrome.exe --incognito" & goto opt_menu
if "%choice%"=="2" set "browser_name=Microsoft Edge"   & set "browser_cmd=msedge.exe --inprivate" & goto opt_menu
if "%choice%"=="3" set "browser_name=FireFox"          & set "browser_cmd=firefox.exe --private-window" & goto opt_menu
if "%choice%"=="4" set "browser_name=Opera"            & set "browser_cmd=opera.exe --private" & goto opt_menu
if "%choice%"=="5" set "browser_name=Brave"            & set "browser_cmd=brave.exe --incognito" & goto opt_menu

:: =========================================================================================
:: FOR TOR: Replace "C:\Users\YOUR_USERNAME\Desktop\Tor Browser" with your actual Tor path.
:: Keep the "Start Tor Browser.lnk" part at the end so it launches the official shortcut!
:: =========================================================================================
if "%choice%"=="6" set "browser_name=Tor Browser"      & set "browser_cmd="C:\Users\%USERNAME%\Desktop\Tor Browser\Start Tor Browser.lnk"" & goto opt_menu

echo Invalid choice, please try again.
pause
goto menu

:opt_menu
cls
echo.
echo ===============================================
echo  Options for %browser_name%:
echo ===============================================
echo  1. Enter website address
echo  2. Continue without web address (Blank Page)
echo  3. Back
echo ===============================================
echo.
set /p opt="Choose option (1-3): "

if "%opt%"=="1" goto get_url
if "%opt%"=="2" goto launch_blank
if "%opt%"=="3" goto menu

echo Invalid option, please try again.
pause
goto opt_menu

:get_url
echo.
set /p target_url="Enter website address (e.g., google.com): "

:: Special rule for Tor because it launches via a shortcut (.lnk) file
if "%choice%"=="6" (
    start "" %browser_cmd%
    echo Note: Tor does not accept direct URLs from command line easily. 
    echo Please paste your link into Tor once it opens.
    pause
) else (
    start %browser_cmd% "%target_url%"
)
goto menu

:launch_blank
start "" %browser_cmd%
goto menu

:exit_msg
echo.
echo Thank You Using Secure Browsing
echo.
set /p =Press Enter to close...
exit