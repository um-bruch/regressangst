@echo off
setlocal
cd /d "%~dp0"

if exist "pdf\ST-001_Studie_Regressangst.pdf" (
    start "" "pdf\ST-001_Studie_Regressangst.pdf"
    exit /b 0
)

if exist "pdf\ST-001_Executive_Summary.pdf" (
    start "" "pdf\ST-001_Executive_Summary.pdf"
    exit /b 0
)

if exist "README.md" (
    start "" "README.md"
    exit /b 0
)

echo [FEHLER] Keine Startdatei gefunden.
pause
exit /b 1
