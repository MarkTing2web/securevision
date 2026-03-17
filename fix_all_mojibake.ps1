$replacements = @{
    "â”€â”€" = "──"
    "Ã¢â€ â‚¬" = "─"
    "Ã¢â€“Â¾" = "▾"
    "Ã¢Å“â€œ" = "✓"
    "ðŸ  " = "🏠"
    "ðŸ“¹" = "📷"
    "ðŸ ·ï¸ " = "🏷️"
    "ðŸ“‚" = "📂"
    "ðŸ“š" = "📚"
    "ðŸ‘¤" = "👤"
    "â— " = "●"
    "ðŸŽ¯" = "🎯"
    "ðŸ” " = "🔍"
    "âš¡" = "⚡"
    "â†’" = "→"
    "ðŸ ¢" = "🏢"
    "ðŸ ª" = "🏬"
    "ðŸ ­" = "🏭"
    "ðŸšª" = "🚪"
    "ðŸš—" = "🚗"
    "ðŸ“Š" = "📊"
    "✓“" = "✓"
    "🛡ï¸ " = "🛡️"
    "ðŸ †" = "🏆"
    "ðŸ —ï¸ " = "🏗️"
    "ðŸ”‘" = "🔑"
    "ðŸ”§" = "🛠️"
    "ðŸ“‹" = "📋"
    "ðŸ””" = "🔔"
    "ðŸ‘†" = "👆"
    "ðŸš§" = "🚧"
    "ðŸŽ“" = "🎓"
    "✓‰ï¸ " = "✓"
    "ðŸ”¬" = "🔬"
    "ðŸ”—" = "🔗"
    "ðŸ“ž" = "📞"
    "âš–ï¸ " = "⚖️"
    "ðŸ“ " = "📍"
    "â€“" = "–"
    "ðŸ›¡ï¸ " = "🛡️"
    "ðŸ“‹" = "📋"
    "ðŸ¤ " = "🤝"
    "ðŸ’¡" = "💡"
    "Ã—" = "×"
}

$files = Get-ChildItem -Path . -Filter "*.html"

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
