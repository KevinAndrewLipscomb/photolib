REM
REM $Id$
REM
cd "C:\Inetpub\wwwroot\photolib"
start /max explorer /e,/select,C:\Inetpub\wwwroot\photolib\.svn
start /max photolib.sln
IF EXIST "C:\Program Files\MySQL\MySQL Workbench\MySQLWorkbench.exe" (start "" /max "C:\Program Files\MySQL\MySQL Workbench\MySQLWorkbench.exe") ELSE start "" /max "C:\Program Files (x86)\MySQL\MySQL Workbench\MySQLWorkbench.exe"
