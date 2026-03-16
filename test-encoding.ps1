$filePath = "test-encoding.html"
$text = "SECUREâ„¢"
Set-Content -Path $filePath -Value $text -Encoding UTF8
$readBack = [System.IO.File]::ReadAllText('test-encoding.html', [System.Text.Encoding]::UTF8)
$bytes = [System.Text.Encoding]::GetEncoding(1252).GetBytes($readBack)
$fixed = [System.Text.Encoding]::UTF8.GetString($bytes)
Write-Output "Fixed Text: $fixed"
