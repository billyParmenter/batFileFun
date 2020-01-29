REM turn off echo 
@echo off
REM take user input from comand line and save it into file
SET /P file=Please enter file to copy:

REM if the user input nothing go to the error location
if "%file%"=="" goto error

REM copy the file to the location C:\myTmp
copy %file% C:\myTmp

REM if the file can not be found go to the not found location
if errorlevel 1 goto notFound

REM display that the file has been copied and that it was succesful end program
echo copy file %file% to C:\myTmp.
echo copy successful
goto end

:error
REM tell the user there was no file selected
echo no location entered
goto end

:notFound
REM tell the user there was no file found
echo no file found
goto end

:end
pause