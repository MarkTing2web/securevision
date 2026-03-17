$bytes = [IO.File]::ReadAllBytes('c:\Users\Ler Wee Meng\OneDrive - Securevision Pte Ltd\Web2026\index.html')
for ($i = 0; $i -lt $bytes.Length; $i++) {
    if ($bytes[$i] -ge 128) {
        $start = [Math]::Max(0, $i - 10)
        $len = [Math]::Min(21, $bytes.Length - $start)
        $ctxBytes = $bytes[$start..($start + $len - 1)]
        $hex = ($ctxBytes | ForEach-Object { '{0:X2}' -f $_ }) -join ' '
        $text = [Text.Encoding]::GetEncoding(1252).GetString($ctxBytes)
        Write-Output ("Pos: $i - Hex: $hex - Text (1252): $text")
        $i += 20 # Skip ahead to avoid too many duplicate prints
    }
}
