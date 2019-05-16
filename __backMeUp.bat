@echo off

set PROJECTNAME=ALabControl421

For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c_%%a_%%b)
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)


echo Running 7z on %PROJECTNAME% ...

7z a -t7z %PROJECTNAME%_%mydate%_%mytime%.7z MATLAB Binaries Build Config Content Plugins Source %PROJECTNAME%.sln %PROJECTNAME%.uproject %PROJECTNAME%.VC.db __backMeUp.bat