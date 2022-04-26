@echo off
title Auto Close Timer
echo  --------           ------------                --------------               ---------
echo.                                                                           
echo  ---                          Welcome to Auto Close Timer Bat                      ---
echo.
echo  ---        All links                                                              ---
echo.
echo  ---  Instagram      "https://www.instagram.com/"                                  ---
echo.
echo  ---  Itch.io        "https://jhexlex.itch.io/"                                    ---
echo.
echo  ---  YouTube        "https://www.youtube.com/channel/UCDnz5uJzQkzbUppGWPAPiIA"    ---
echo.
echo  ---  Twitch         "https://www.twitch.tv/jhexlex"                               ---
echo.
echo  ---  Github         "https://github.com/JHEXLEX"                                  ---
echo.
echo  --------           ------------                --------------               ---------
goto main




:select
setlocal
echo.
echo  --------           ------------                --------------               ---------
echo  ----              choose time type "h/m/s" (hour/munite/second)                  ----
set/P g=

if %g%==h (goto hour
) else if %g%==m (goto munite
) else if %g%==s (goto second
) else (goto select)

pause
endlocal




:hour
echo.
echo  --------           ------------                --------------               ---------
echo  ----                          enter timeout 'hour'                               ----

set/A a=3600
set/P b=
set/A c=%b%
set/A d=%c%*%a%

goto question



:munite
echo.
echo  --------           ------------                --------------               ---------
echo  ----                          enter timeout 'minute'                             ----

set/A a=60
set/P b=
set/A c=%b%
set/A d=%c%*%a%

goto question



:second
echo.
echo  --------           ------------                --------------               ---------
echo  ----                          enter timeout 'second'                             ----

set/A a=1
set/P b=
set/A c=%b%
set/A d=%c%*%a%

goto question



:question
echo.
echo  --------           ------------                --------------               ---------
echo  ----                          Shutdown or Restart         "s/r                   ----

set/p h=

if %h%==s (goto startshutdown
) else if %h%==r (goto startrestart
) else (goto question)

:startshutdown
echo.
echo  --------           ------------                --------------               ---------

if %g%==h (echo computer will shut down in %b% hour)

if %g%==m (echo computer will shut down in  %b% munite)

if %g%==s (echo computer will shut down in  %b% second)

shutdown -s -f -t %d%

goto main



:startrestart
echo.
echo  --------           ------------                --------------               ---------

if %g%==h (echo computer will restart in %b% hour)

if %g%==m (echo computer will restart in  %b% munite)

if %g%==s (echo computer will restart in  %b% second)

shutdown -r -f -t %d%

goto main



:cancelshutdown
echo.
echo  --------           ------------                --------------               ---------
echo  ----                      do you want to cancel "y/n"                            ----

set/p cancel=

if %cancel%==y (shutdown -a)

goto main



:main
echo.
echo  --------           ------------                --------------               ---------
echo  ----    Do you want to shutdown or cancel "s/c"  (shutdown/cancel)               ----
set/p h=




if %h%==s (goto select
) else if %h%==c (goto cancelshutdown
) else (goto main)

pause