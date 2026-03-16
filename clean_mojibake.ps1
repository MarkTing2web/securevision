function Get-UnicodeChar($hex) {
    return [System.Char]::ConvertFromUtf32([System.Int32]::Parse($hex, [System.Globalization.NumberStyles]::HexNumber))
}

# The mangled sequences represent UTF-8 bytes interpreted as Windows-1252/Latin-1
# E.g. â„¢ is 0xE2 0x84 0xA2
# In PowerShell [char]0xE2 is â, [char]0x201E is „ (Windows-1252 maps 0x84 to U+201E), [char]0xA2 is ¢.

$replacements = @{
    # Mangled -> Real
    "$([char]0x00E2)$([char]0x201e)$([char]0x00a2)" = Get-UnicodeChar "2122"    # â„¢ -> ™
    "$([char]0x00c2)$([char]0x00b7)"                = Get-UnicodeChar "00B7"    # Â· -> ·
    "$([char]0x00e2)$([char]0x2020)$([char]0x2012)" = Get-UnicodeChar "2192"    # â†’ -> →
    "$([char]0x00e2)$([char]0x0153)$([char]0x2713)" = Get-UnicodeChar "2713"    # âœ✓ -> ✓
    "$([char]0x00e2)$([char]0x0153)"                = Get-UnicodeChar "2713"    # âœ -> ✓
    "$([char]0x00e2)$([char]0x2013)$([char]0x00be)" = Get-UnicodeChar "25BE"    # â–¾ -> ▾
    "$([char]0x00f0)$([char]0x0178)$([char]0x00a0)" = Get-UnicodeChar "1F3E0"   # ðŸ  -> 🏠
}

# Add more complex ones if needed, but the Nav script I'm about to run uses Unicode literals correctly
# because I'm writing it with BOM. The main issue is the existing content.

$utf8NoBom = New-Object System.Text.UTF8Encoding $false
$directoryPath = "c:\Users\ler\OneDrive - Securevision Pte Ltd\Web2026"

$files = Get-ChildItem -Path $directoryPath -Filter *.html

foreach ($file in $files) {
    if ($file.Name -match "test-.*.html") { continue }
    
    $content = [System.IO.File]::ReadAllText($file.FullName, $utf8NoBom)
    $originalContent = $content

    foreach ($mangled in $replacements.Keys) {
        $content = $content.Replace($mangled, $replacements[$mangled])
    }

    # Common others
    $content = $content.Replace("$([char]0x00e2)$([char]0x20ac)$([char]0x201d)", [char]0x2014) # â€” -> em dash
    $content = $content.Replace("$([char]0x00e2)$([char]0x20ac)$([char]0x2013)", [char]0x2013) # â€“ -> en dash
    $content = $content.Replace("$([char]0x00c2)$([char]0x00a9)", [char]0x00A9)                # Â© -> ©

    if ($originalContent -ne $content) {
        [System.IO.File]::WriteAllText($file.FullName, $content, $utf8NoBom)
        Write-Host "Cleaned Mojibake in $($file.Name)"
    }
}
