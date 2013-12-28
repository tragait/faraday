@ECHO OFF
IF NOT "%~f0" == "~f0" GOTO :WinNT
@"jruby.jar" "L:/projects/github/liferay-portal/portal-impl/20120913155215675/output/bin/scss" %1 %2 %3 %4 %5 %6 %7 %8 %9
GOTO :EOF
:WinNT
@"jruby.jar" "%~dpn0" %*
