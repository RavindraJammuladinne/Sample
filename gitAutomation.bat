echo off
git checkout master
git pull
for /F "tokens=1" %%i in (D:\\GRID\\GIT\\master\\grid\\gitUserStoryInput.txt) do call :process %%i
goto thenextstep
:process
set VAR1=%1
echo "Branch name to be created : %VAR1% "
echo.
git checkout master
git checkout -b %VAR1%

echo "Local branch created and switched to : %VAR1%"
echo.
git push origin %VAR1%

echo "Pushed the %VAR1% branch to the remote repository"
echo.
echo.

git checkout master

goto :EOF

pause

