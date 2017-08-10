echo off
git checkout master
git pull
for /F "tokens=1" %%i in (D:\\GRID02\\master\\grid02\\gitUserStoryInput.txt) do call :process %%i
goto thenextstep
:process
set VAR1=%1
echo "Branch name to be deleted : %VAR1% "
echo.
git checkout master
git branch -d %VAR1%

echo "Local branch deleted : %VAR1%"
echo.
git push origin :%VAR1%

echo "deleted the %VAR1% branch from remote repository"
echo.
echo.
git checkout master
goto :EOF

pause

