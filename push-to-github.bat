@echo off
REM TestFlow - Auto Push to GitHub
REM Just run this file and it will push everything!

color 0A
echo.
echo ==========================================
echo   TestFlow - GitHub Auto Push
echo ==========================================
echo.

cd C:\xampp\htdocs\testflow

echo [*] Navigating to project folder...
echo.

echo [*] Checking git status...
git status
echo.

echo [*] Removing redundant SQL file...
git rm create_pdf_reports_table.sql
echo.

echo [*] Staging all changes...
git add .
echo.

echo [*] Creating commit...
git commit -m "Production-ready for Render: Fixed code issues, Docker setup, comprehensive documentation"
echo.

echo [*] Pushing to GitHub...
git push origin main
echo.

echo ==========================================
echo   PUSH COMPLETE!
echo ==========================================
echo.
echo Your code is now on GitHub!
echo Visit: https://github.com/Soumitradhar/TestCaseTracker
echo.
pause
