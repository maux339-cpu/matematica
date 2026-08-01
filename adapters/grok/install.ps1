# Install matematica skills into Grok (~/.grok/skills)
$ErrorActionPreference = "Stop"
$Root = Split-Path (Split-Path $PSScriptRoot -Parent) -Parent
$Dest = Join-Path $env:USERPROFILE ".grok\skills\matematica"

Write-Host "Source: $Root"
Write-Host "Dest:   $Dest"

if (Test-Path $Dest) {
  Remove-Item -Recurse -Force $Dest
}
New-Item -ItemType Directory -Force -Path $Dest | Out-Null

# Copy pack (exclude .git)
robocopy $Root $Dest /E /XD .git /NFL /NDL /NJH /NJS /nc /ns /np | Out-Null

# Ensure root SKILL.md is the entrypoint Grok sees
Copy-Item (Join-Path $Root "SKILL.md") (Join-Path $Dest "SKILL.md") -Force

Write-Host "OK: matematica instalado em $Dest"
Write-Host "Reinicie o Grok / nova sessao para carregar a skill."
