# Verifica se tools de math crypto estao no PATH
Write-Host "=== matematica env check ==="
$cmds = @("sage", "python", "git", "gh")
foreach ($c in $cmds) {
  $p = Get-Command $c -ErrorAction SilentlyContinue
  if ($p) { Write-Host "OK  $c -> $($p.Source)" }
  else { Write-Host "MISS $c" }
}
Write-Host "Sage/PARI/fpylll: use WSL2 ou Docker se MISS no Windows nativo."
