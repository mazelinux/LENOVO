@adb wait-for-devices
@echo.
@echo ======== Start Capture ========
@echo.
@for /l %%i in (0,1,199) do (  
                   @ping 127.0.0.1 -n 3 > nul
                   @echo The %%i capture!
                   @adb shell input keyevent 27
                   )
@echo.
@echo ======== Done ========
@echo.
