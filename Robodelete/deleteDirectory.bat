@ECHO OFF

SET args=%*
IF NOT DEFINED args GOTO END


SET /P ANSWER=Do you want to delete %* (Y/N)? 
if /i {%ANSWER%}=={y} (goto :yes) 
if /i {%ANSWER%}=={yes} (goto :yes) 
goto :no
 
:yes 
mkdir empty_dir
robocopy empty_dir %* /s /mir
rmdir %*
rmdir empty_dir

ECHO Done
PAUSE

exit /b 0 

:no 
echo Nothing deleted
PAUSE 
exit /b 1

:END
ECHO Nothing selected
PAUSE
exit /b 2