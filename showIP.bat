REM turn off echo 
@echo off
REM call the ipconfig command and filter it for ipv4 ignoring case
ipconfig | find /i "ipv4"
pause