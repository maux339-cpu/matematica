# Install matematica for DeepSeek agents (generic skill dir)
$ErrorActionPreference = "Stop"
$Root = Split-Path (Split-Path $PSScriptRoot -Parent) -Parent
$Dest = Join-Path $env:USERPROFILE ".deepseek\skills\matematica"
$Alt = Join-Path $env:USERPROFILE ".continue\skills\matematica"

foreach ($d in @($Dest, $Alt)) {
  if (Test-Path $d) { Remove-Item -Recurse -Force $d }
  New-Item -ItemType Directory -Force -Path $d | Out-Null
  robocopy $Root $d /E /XD .git /NFL /NDL /NJH /NJS /nc /ns /np | Out-Null
  Copy-Item (Join-Path $Root "SKILL.md") (Join-Path $d "SKILL.md") -Force
  Write-Host "OK DeepSeek path: $d"
}

@"
# DeepSeek adapter

Skills em:
- ~/.deepseek/skills/matematica
- ~/.continue/skills/matematica (se usar Continue)

Aponte o system prompt para SKILL.md do pacote matematica.
"@ | Set-Content (Join-Path $PSScriptRoot "README.md") -Encoding UTF8
