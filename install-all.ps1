# Instala matematica em Grok + Codex + Kimi + DeepSeek
$ErrorActionPreference = "Stop"
$Here = $PSScriptRoot
Write-Host "=== install-all matematica ===" -ForegroundColor Cyan
& "$Here\adapters\grok\install.ps1"
& "$Here\adapters\codex\install.ps1"
& "$Here\adapters\kimi\install.ps1"
& "$Here\adapters\deepseek\install.ps1"
Write-Host "=== done ===" -ForegroundColor Green
Write-Host "Repo: https://github.com/maux339-cpu/matematica"
