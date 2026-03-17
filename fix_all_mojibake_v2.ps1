$replacements = @{
    # Symbols & Dividers
    "$([char]0x2014)$([char]0x2014)" = "──"
    "$([char]0x00E2)$([char]0x0080)$([char]0x0094)$([char]0x00E2)$([char]0x0080)$([char]0x0094)" = "──"
    "$([char]0x00C3)$([char]0x00A2)$([char]0x00E2)$([char]0x0082)$([char]0x00AC)$([char]0x00E2)$([char]0x0080)$([char]0x009C)$([char]0x00C2)$([char]0x00A0)" = "─"
    
    # Emojis (Common patterns)
    "$([char]0x00F0)$([char]0x0178)$([char]0x008E)$([char]0x201C)" = "🏠" # Correcting my previous guess, let's use more literal ones
    "$([char]0x00F0)$([char]0x0178)$([char]0x201C)$([char]0x00A0)" = "🏠"
    "$([char]0x00F0)$([char]0x0178)$([char]0x2013)$([char]0x00B9)" = "📷"
    "$([char]0x00F0)$([char]0x0178)$([char]0x00B7)$([char]0x00EF)$([char]0x00B8)$([char]0x008F)" = "🏷️"
    "$([char]0x00F0)$([char]0x0178)$([char]0x201C)$([char]0x201A)" = "📂"
    "$([char]0x00F0)$([char]0x0178)$([char]0x201C)$([char]0x0161)" = "📚"
    "$([char]0x00F0)$([char]0x0178)$([char]0x2018)$([char]0x00A4)" = "👤"
    "$([char]0x00F0)$([char]0x0178)$([char]0x017D)$([char]0x00AF)" = "🎯"
    "$([char]0x00F0)$([char]0x0178)$([char]0x201D)$([char]0x00A0)" = "🔍"
    "$([char]0x2013)$([char]0x00B5)" = "⚡"
    "$([char]0x00E2)$([char]0x0080)$([char]0x0093)$([char]0x00B5)" = "⚡"
    "$([char]0x00E2)$([char]0x0086)$([char]0x0092)" = "→"
    "$([char]0x00F0)$([char]0x0178)$([char]0x00A2)" = "🏢"
    "$([char]0x00F0)$([char]0x0178)$([char]0x00AA)" = "🏬"
    "$([char]0x00F0)$([char]0x0178)$([char]0x00AD)" = "🏭"
    "$([char]0x00F0)$([char]0x0178)$([char]0x0161)$([char]0x00AA)" = "🚪"
    "$([char]0x00F0)$([char]0x0178)$([char]0x0161)$([char]0x2014)" = "🚗"
    "$([char]0x00F0)$([char]0x0178)$([char]0x201C)$([char]0x008A)" = "📊"
    
    # Specific sequences from about.html
    "$([char]0x00F0)$([char]0x0178)$([char]0x201D)$([char]0x2014)" = "🔗"
    "$([char]0x00F0)$([char]0x0178)$([char]0x201C)$([char]0x017E)" = "📞"
    "$([char]0x00F0)$([char]0x0178)$([char]0x201D)$([char]0x20AC)" = "🔬"
    "$([char]0x00F0)$([char]0x0178)$([char]0x201C)$([char]0x008D)" = "📍"
    
    # Correcting common checkmark Mojibake
    "$([char]0x00E2)$([char]0x009C)$([char]0x0093)$([char]0x201C)" = "✓"
    "$([char]0x00E2)$([char]0x009C)$([char]0x0093)$([char]0x201C)$([char]0x00EF)$([char]0x00B8)$([char]0x008F)" = "✓"
    
    # Others
    "$([char]0x00F0)$([char]0x0178)$([char]0x201D)$([char]0x00A7)" = "🛠️"
    "$([char]0x00F0)$([char]0x0178)$([char]0x201D)$([char]0x2018)" = "🔑"
}

$files = Get-ChildItem -Path . -Filter "*.html" -Recurse

foreach ($file in $files) {
    Write-Host "Processing $($file.Name)..."
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
