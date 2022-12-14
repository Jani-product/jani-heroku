@REM
@REM (c) 2003-2014 MuleSoft, Inc. This software is protected under international copyright
@REM law. All use of this software is subject to MuleSoft's Master Subscription Agreement
@REM (or other master license agreement) separately entered into in writing between you and
@REM MuleSoft. If such an agreement is not in place, you may not use the software.
@REM

@echo off
setlocal
rem %~dp0 is location of current script under NT
set REALPATH=%~dp0
set BASE_DIR=%REALPATH:~0,-5%

IF NOT EXIST "%BASE_DIR%\tools" mkdir "%BASE_DIR%\tools"
IF EXIST "%BASE_DIR%\bin\agent-setup-2.4.30-amc-final.jar" move "%BASE_DIR%\bin\agent-setup-2.4.30-amc-final.jar" "%BASE_DIR%\tools"
java -jar "%BASE_DIR%\tools\agent-setup-2.4.30-amc-final.jar" %*
