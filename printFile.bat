REM turn off echo 
@echo off
REM set the users input to textFiles as a string
SET /P "textFiles=Enter text files seperated by spaces:"

REM if the user inputs no string go to nullError
IF "%textFiles%"=="" goto nullError

REM parce through the string at every space or ,
FOR %%A IN (%textFiles%) DO (
	REM if the file exists
	IF EXIST "%%A" (
	REM display that the file is being printed and print the file
	echo printing %%A
	notepad.exe /p %%A
	REM if the file does not exist echo that that file does not exist
	) ELSE (
	echo %%A does not exist
	)
)
goto end

:nullError
echo No file input

:end
pause
