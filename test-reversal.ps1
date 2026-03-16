[System.IO.File]::WriteAllText("test.html", "SECURE™", [System.Text.Encoding]::UTF8)
$content = Get-Content -Path "test.html" -Raw
$content += " <added>"
Set-Content -Path "test.html" -Value $content -Encoding UTF8

$corruptedString = [System.IO.File]::ReadAllText("test.html", [System.Text.Encoding]::UTF8)
$originalBytes = [System.Text.Encoding]::GetEncoding(1252).GetBytes($corruptedString)
[System.IO.File]::WriteAllBytes("test-fixed.html", $originalBytes)

$fixedString = [System.IO.File]::ReadAllText("test-fixed.html", [System.Text.Encoding]::UTF8)
Write-Host "Result:"
Write-Host $fixedString
