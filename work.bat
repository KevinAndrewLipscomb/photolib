REM
REM $Id: work.bat 7066 2020-04-22 23:44:50Z kevinanlipscomb $
REM
cd "C:\Inetpub\wwwroot\photolib"
start /max explorer /e,/select,C:\Inetpub\wwwroot\photolib\.svn
start /max photolib.sln
IF EXIST "C:\Program Files\MySQL\MySQL Workbench\MySQLWorkbench.exe" (start "" /max "C:\Program Files\MySQL\MySQL Workbench\MySQLWorkbench.exe") ELSE start "" /max "C:\Program Files (x86)\MySQL\MySQL Workbench\MySQLWorkbench.exe"
