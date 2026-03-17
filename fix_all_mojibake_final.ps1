# 100% ASCII script to avoid PowerShell parser errors
# Every non-ASCII character is represented by [char] or surrogate pairs

$replacements = @{
    # Symbols & Dividers
    "$([char]0x2014)$([char]0x2014)" = "$([char]0x2500)$([char]0x2500)" # ──
    "$([char]0x00E2)$([char]0x0080)$([char]0x0094)$([char]0x00E2)$([char]0x0080)$([char]0x0094)" = "$([char]0x2500)$([char]0x2500)" # ──
    "$([char]0x00C3)$([char]0x00A2)$([char]0x00E2)$([char]0x0082)$([char]0x00AC)$([char]0x00E2)$([char]0x0080)$([char]0x009C)$([char]0x00C2)$([char]0x00A0)" = "$([char]0x2500)" # ─
    
    # Emojis (Mangled sequences -> Surrogate pairs)
    "$([char]0x00F0)$([char]0x0178)$([char]0x008E)$([char]0x201C)" = "$([char]0xD83C)$([char]0xDFE0)" # 🏠
    "$([char]0x00F0)$([char]0x0178)$([char]0x201C)$([char]0x00A0)" = "$([char]0xD83C)$([char]0xDFE0)" # 🏠
    "$([char]0x00F0)$([char]0x0178)$([char]0x2013)$([char]0x00B9)" = "$([char]0xD83D)$([char]0xDCF7)" # 📷
    "$([char]0x00F0)$([char]0x0178)$([char]0x00B7)$([char]0x00EF)$([char]0x00B8)$([char]0x008F)" = "$([char]0xD83C)$([char]0xDFF7)$([char]0xFE0F)" # 🏷️
    "$([char]0x00F0)$([char]0x0178)$([char]0x201C)$([char]0x201A)" = "$([char]0xD83D)$([char]0xDCC2)" # 📂
    "$([char]0x00F0)$([char]0x0178)$([char]0x201C)$([char]0x0161)" = "$([char]0xD83D)$([char]0xDCDA)" # 📚
    "$([char]0x00F0)$([char]0x0178)$([char]0x2018)$([char]0x00A4)" = "$([char]0xD83D)$([char]0xDC64)" # 👤
    "$([char]0x00F0)$([char]0x0178)$([char]0x017D)$([char]0x00AF)" = "$([char]0xD83C)$([char]0xDFAF)" # 🎯
    "$([char]0x00F0)$([char]0x0178)$([char]0x201D)$([char]0x00A0)" = "$([char]0xD83D)$([char]0xDD0D)" # 🔍
    
    "$([char]0x2013)$([char]0x00B5)" = "$([char]0x26A1)" # ⚡
    "$([char]0x00E2)$([char]0x0080)$([char]0x0093)$([char]0x00B5)" = "$([char]0x26A1)" # ⚡
    "$([char]0x00E2)$([char]0x0086)$([char]0x0092)" = "$([char]0x2192)" # →
    
    "$([char]0x00F0)$([char]0x0178)$([char]0x00A2)" = "$([char]0xD83C)$([char]0xDFE2)" # 🏢
    "$([char]0x00F0)$([char]0x0178)$([char]0x00AA)" = "$([char]0xD83C)$([char]0xDFEC)" # 🏬
    "$([char]0x00F0)$([char]0x0178)$([char]0x00AD)" = "$([char]0xD83C)$([char]0xDFED)" # 🏭
    "$([char]0x00F0)$([char]0x0178)$([char]0x0161)$([char]0x00AA)" = "$([char]0xD83D)$([char]0xDEAA)" # 🚪
    "$([char]0x00F0)$([char]0x0178)$([char]0x0161)$([char]0x2014)" = "$([char]0xD83D)$([char]0xDE97)" # 🚗
    "$([char]0x00F0)$([char]0x0178)$([char]0x201C)$([char]0x008A)" = "$([char]0xD83D)$([char]0xDCCA)" # 📊
    
    "$([char]0x00F0)$([char]0x0178)$([char]0x201D)$([char]0x2014)" = "$([char]0xD83D)$([char]0xDD17)" # 🔗
    "$([char]0x00F0)$([char]0x0178)$([char]0x201C)$([char]0x017E)" = "$([char]0xD83D)$([char]0xDCDE)" # 📞
    "$([char]0x00F0)$([char]0x0178)$([char]0x201D)$([char]0x20AC)" = "$([char]0xD83D)$([char]0xDD2C)" # 🔬
    "$([char]0x00F0)$([char]0x0178)$([char]0x201C)$([char]0x008D)" = "$([char]0xD83D)$([char]0xDCCD)" # 📍
    
    "$([char]0x00E2)$([char]0x009C)$([char]0x0093)$([char]0x201C)" = "$([char]0x2713)" # ✓
    "$([char]0x00E2)$([char]0x009C)$([char]0x0093)$([char]0x201C)$([char]0x00EF)$([char]0x00B8)$([char]0x008F)" = "$([char]0x2713)" # ✓
    
    # Checkmark alone
    "$([char]0x00E2)$([char]0x009C)$([char]0x0093)" = "$([char]0x2713)" # ✓
    
    "$([char]0x00F0)$([char]0x0178)$([char]0x201D)$([char]0x00A7)" = "$([char]0xD83D)$([char]0xDEE0)$([char]0xFE0F)" # 🛠️
    "$([char]0x00F0)$([char]0x0178)$([char]0x201D)$([char]0x2018)" = "$([char]0xD83D)$([char]0xDD11)" # 🔑
    
    # Shield
    "$([char]0x00F0)$([char]0x0178)$([char]0x203A)$([char]0x00A1)$([char]0x00C3)$([char]0x00AF)$([char]0x00C2)$([char]0x00B8)$([char]0x00C2)$([char]0x008F)" = "$([char]0xD83D)$([char]0xDEE1)$([char]0xFE0F)" # 🛡️
    "🛡ï¸ " = "$([char]0xD83D)$([char]0xDEE1)$([char]0xFE0F)" # Some appear like this in the file view
}

$files = Get-ChildItem -Path . -Filter "*.html" -Recurse

foreach ($file in $files) {
    Write-Host "Processing $($file.FullName)..."
    $content = [System.IO.File]::ReadAllText($file.FullName, [System.Text.Encoding]::UTF8)
    $modified = $false
    
    foreach ($mangled in $replacements.Keys) {
        if ($content.Contains($mangled)) {
            $content = $content.Replace($mangled, $replacements[$mangled])
            $modified = $true
        }
    }
    
    if ($modified) {
        [System.IO.File]::WriteAllText($file.FullName, $content, (New-Object System.Text.UTF8Encoding $false))
        Write-Host "  Updated $($file.Name)"
    }
}
