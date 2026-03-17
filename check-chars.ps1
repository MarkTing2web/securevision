$bytes = [IO.File]::ReadAllBytes('c:\Users\Ler Wee Meng\OneDrive - Securevision Pte Ltd\Web2026\index.html')
$high = $bytes | Where-Object { $_ -ge 128 }
$high | Group-Object | Select-Object Name, Count | Sort-Object Count -Descending
