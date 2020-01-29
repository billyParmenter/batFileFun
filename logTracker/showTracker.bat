REM turn off echo 
@echo off

REM if the log file exists then display it on the command prompt window
if exist C:\myTmp\devTracker.log (
	type C:\myTmp\devTracker.log
	REM if it does not exist display that it does not exist
) else (
	echo No log file found
)
pause