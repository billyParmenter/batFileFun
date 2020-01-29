REM turn off echo 
@echo off
REM state the start location
:start
REM if the log file exists then write to it on a new line that the vs has been opened on at the current time and date
if exist C:\myTmp\devTracker.log (
	echo Visual Studios was started at %TIME% on %DATE% >> C:\myTmp\devTracker.log
	REM call myStart batch file to start vs
	call myStart
	goto end
REM if the file does not exist then create it and go back to the start	
) else (
	cd. > C:\myTmp\devTracker.log
	goto start
)
:end