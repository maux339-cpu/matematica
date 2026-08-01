# Install matematica for Kimi / Moonshot-style agents (generic skill dir)
$ErrorActionPreference = "Stop"
$Root = Split-Path (Split-Path $PSScriptRoot -Parent) -Parent
$Dest = Join-Path $env:USERPROFILE ".kimi\skills\matematica"
$Alt = Join-Path $env:USERPROFILE ".moonshot\skills\matematica"

foreach ($d in @($Dest, $Alt)) {
  if (Test-Path $d) { Remove-Item -Recurse -Force $d }
  New-Item -ItemType Directory -Force -Path $d | Out-Null
  robocopy $Root $d /E /XD .git /NFL /NDL /NJH /NJS /nc /ns /np | Out-Null
  Copy-Item (Join-Path $Root "SKILL.md") (Join-Path $d "SKILL.md") -Force
  Write-Host "OK Kimi path: $d"
}

$readme = Join-Path $PSScriptRoot "README.md"
@"
# Kimi adapter

Skills copiadas para:
- ~/.kimi/skills/matematica
- ~/.moonshot/skills/matematica

No system prompt / custom instructions, adicione:
'Para matematica crypto/security, use a skill matematica (SKILL.md).'
"@ | Set-Content $readme -Encoding UTF8
