$lines = Get-Content 'd:/website/zgs-glass/css/style.css'
foreach ($i in 17,18,61,62) {
  $line = $lines[$i]
  $bytes = [System.Text.Encoding]::UTF8.GetBytes($line)
  $hex = ($bytes | ForEach-Object { $_.ToString('X2') }) -join ' '
  Write-Host ("LINE " + ($i+1) + " : " + $hex)
}
