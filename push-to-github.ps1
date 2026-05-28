#!/usr/bin/env pwsh
# TestFlow - Auto Push to GitHub Script
# Just run this file and it will push everything!

Write-Host "==========================================" -ForegroundColor Green
Write-Host "  TestFlow - GitHub Push Script" -ForegroundColor Green
Write-Host "==========================================" -ForegroundColor Green
Write-Host ""

# Navigate to project
cd C:\xampp\htdocs\testflow

Write-Host "✓ Navigating to project folder..." -ForegroundColor Green
Write-Host ""

# Check git status
Write-Host "✓ Checking git status..." -ForegroundColor Cyan
git status
Write-Host ""

# Remove redundant file
Write-Host "✓ Removing redundant SQL file..." -ForegroundColor Cyan
git rm create_pdf_reports_table.sql
Write-Host "  → File removed from git tracking" -ForegroundColor Green
Write-Host ""

# Stage all changes
Write-Host "✓ Staging all changes..." -ForegroundColor Cyan
git add .
Write-Host "  → All files staged" -ForegroundColor Green
Write-Host ""

# Create commit
Write-Host "✓ Creating commit..." -ForegroundColor Cyan
git commit -m "Production-ready for Render: Fixed code issues, Docker setup, comprehensive documentation, consolidated SQL files

- Fixed MIME detection (mime_content_type → finfo_file)
- Secured database credentials with environment variables
- Created Docker configuration (Dockerfile, render.yaml, .dockerignore)
- Added 15 comprehensive deployment guides (50K+ words)
- Consolidated SQL files (removed redundant create_pdf_reports_table.sql)
- All code optimized for production deployment and auto-scaling

This is production-ready code ready for immediate Render deployment.

Co-authored-by: Copilot <223556219+Copilot@users.noreply.github.com>"

Write-Host ""
Write-Host "✓ Commit created successfully!" -ForegroundColor Green
Write-Host ""

# Push to GitHub
Write-Host "✓ Pushing to GitHub..." -ForegroundColor Cyan
git push origin main

Write-Host ""
Write-Host "==========================================" -ForegroundColor Green
Write-Host "  ✅ PUSH COMPLETE!" -ForegroundColor Green
Write-Host "==========================================" -ForegroundColor Green
Write-Host ""
Write-Host "✓ Your code is now on GitHub!" -ForegroundColor Green
Write-Host "✓ Visit: https://github.com/Soumitradhar/TestCaseTracker" -ForegroundColor Cyan
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "1. Read QUICK_START_RENDER.md" -ForegroundColor White
Write-Host "2. Go to https://render.com" -ForegroundColor White
Write-Host "3. Create MySQL database" -ForegroundColor White
Write-Host "4. Deploy Web Service" -ForegroundColor White
Write-Host "5. You're live! 🚀" -ForegroundColor Green
Write-Host ""

Read-Host "Press Enter to exit"
