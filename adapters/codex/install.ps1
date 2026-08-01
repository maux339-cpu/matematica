# Install matematica for Codex (skills + AGENTS snippet)
$ErrorActionPreference = "Stop"
$Root = Split-Path (Split-Path $PSScriptRoot -Parent) -Parent
$Dest = Join-Path $env:USERPROFILE ".codex\skills\matematica"
$Agents = Join-Path $env:USERPROFILE ".codex\AGENTS.matematica.md"

if (Test-Path $Dest) { Remove-Item -Recurse -Force $Dest }
New-Item -ItemType Directory -Force -Path $Dest | Out-Null
robocopy $Root $Dest /E /XD .git /NFL /NDL /NJH /NJS /nc /ns /np | Out-Null
Copy-Item (Join-Path $Root "SKILL.md") (Join-Path $Dest "SKILL.md") -Force

$snippet = @"
# matematica (auto)

Quando o usuario pedir matematica profunda, ECC, lattices/PQC, number theory crypto, SageMath:
- Leia e siga ``$Dest\SKILL.md`` e a skill especialista em ``$Dest\skills\``.
- Tom: rigor + defesa/lab. Zero tutorial de crime.
"@
Set-Content -Path $Agents -Value $snippet -Encoding UTF8
Write-Host "OK Codex: $Dest"
Write-Host "Snippet: $Agents (inclua no AGENTS.md se quiser permanente)"
