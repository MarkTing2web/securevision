# Repair script for mangled UTF-8 characters - 100% ASCII
# Representation: $([char]0xHH)

$replacements = @{
    # SECUREÃ¢â€žÂ¢ (E2 84 A2 -> Ã¢â€žÂ¢)
    # Ã(C3) ¢(A2) â(E2) €(80) ž(9E) Â(C2) ¢(A2)
    "$([char]0x00C3)$([char]0x00A2)$([char]0x00E2)$([char]0x0080)$([char]0x009E)$([char]0x00C2)$([char]0x00A2)" = "$([char]0x0026)trade;"
    
    # Ã‚· (C2 B7 -> Ã‚·)
    "$([char]0x00C3)$([char]0x0082)$([char]0x00C2)$([char]0x00B7)" = "$([char]0x0026)middot;"
    "$([char]0x00C3)$([char]0x00A2)$([char]0x00E2)$([char]0x0082)$([char]0x00AC)$([char]0x00C2)$([char]0x00B7)" = "$([char]0x0026)middot;"

    # Ã¢â‚¬â€ (E2 80 94 -> Ã¢â‚¬â€)
    "$([char]0x00C3)$([char]0x00A2)$([char]0x00E2)$([char]0x0082)$([char]0x00AC)$([char]0x00E2)$([char]0x0080)$([char]0x0094)" = "$([char]0x0026)mdash;"
    
    # Ã¢â€ â‚¬ (──)
    "$([char]0x00C3)$([char]0x00A2)$([char]0x00E2)$([char]0x0082)$([char]0x00AC)$([char]0x00E2)$([char]0x0080)$([char]0x0093)$([char]0x00C2)$([char]0x00A0)" = "$([char]0x2501)$([char]0x2501)"

    # Checkmark
    "$([char]0x00C3)$([char]0x00A2)$([char]0x00C5)$([char]0x0092)$([char]0x00E2)$([char]0x0080)$([char]0x009C)$([char]0x00C2)$([char]0x00A0)" = "$([char]0x0026)check;"
    
    # â˜° (U+2630) -> ☰
    "$([char]0x00E2)$([char]0x0098)$([char]0x00B0)" = "$([char]0x2630)"
    
    # â–¾ (U+25BE) -> ▾
    "$([char]0x00E2)$([char]0x0096)$([char]0x00BE)" = "$([char]0x25BE)"
    
    # UTF-8 mangled emojis (Generic pattern)
    # 💬 Ã°Å¸â€&trade;Â¬
    "$([char]0x00C3)$([char]0x00B0)$([char]0x00C5)$([char]0x00B8)$([char]0x00E2)$([char]0x0084)$([char]0x00A2)$([char]0x00C2)$([char]0x00AC)" = "$([char]0xD83D)$([char]0xDCAC)"
}

# Add some ampersand cases
$simple = @{
    "$([char]0x0026)amp;mdash;" = "$([char]0x0026)mdash;"
    "Ã¢â€&ldquo;Â¾" = "$([char]0x25BE)"
}

$files = Get-ChildItem -Path . -Filter "*.html" -Recurse

foreach ($file in $files) {
    Write-Host "Processing $($file.Name)..."
    $rawBytes = [System.IO.File]::ReadAllBytes($file.FullName)
    $utf8String = [System.Text.Encoding]::UTF8.GetString($rawBytes)
    
    $modified = $false
    $newContent = $utf8String
    
    foreach ($mangled in $replacements.Keys) {
        if ($newContent.Contains($mangled)) {
            $newContent = $newContent.Replace($mangled, $replacements[$mangled])
            $modified = $true
        }
    }

    if ($modified) {
        [System.IO.File]::WriteAllText($file.FullName, $newContent, (New-Object System.Text.UTF8Encoding $false))
        Write-Host "  Fixed in $($file.Name)"
    }
}
