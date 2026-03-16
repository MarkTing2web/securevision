$directoryPath = "c:\Users\ler\OneDrive - Securevision Pte Ltd\Web2026"
$utf8NoBom = New-Object System.Text.UTF8Encoding $false

# Correct the Mojibake in the files
$files = Get-ChildItem -Path $directoryPath -Filter *.html

foreach ($file in $files) {
    if ($file.Name -match "test-.*.html") { continue }
    
    $content = [System.IO.File]::ReadAllText($file.FullName, $utf8NoBom)
    $originalContent = $content

    # Fix common mangled sequences back to original characters
    $content = $content -replace "â–¾", "▾"
    $content = $content -replace "ðŸ ", "🏠"
    $content = $content -replace "â†’", "→"
    $content = $content -replace "Â·", "·"
    $content = $content -replace "Â©", "©"
    $content = $content -replace "â––", "▾"
    $content = $content -replace "ðŸ“ž", "📞"
    $content = $content -replace "ðŸ’¬", "💬"
    $content = $content -replace "âœ‰ï¸ ", "✉️"
    $content = $content -replace "ðŸ ˜ï¸ ", "🏘️"
    $content = $content -replace "ðŸ ª", "🏬"
    $content = $content -replace "ðŸ «", "🏫"
    $content = $content -replace "ðŸ ­", "🏭"
    $content = $content -replace "ðŸ“¹", "📷"
    $content = $content -replace "ðŸšª", "🚪"
    $content = $content -replace "ðŸš—", "🚗"
    $content = $content -replace "ðŸ“Š", "📊"
    $content = $content -replace "ðŸ ·ï¸ ", "🏷️"
    $content = $content -replace "ðŸ“‚", "📂"
    $content = $content -replace "ðŸ§®", "🧮"
    $content = $content -replace "ðŸ“š", "📚"
    $content = $content -replace "ðŸ”§", "🔧"
    $content = $content -replace "ðŸ“¥", "📥"
    $content = $content -replace "ðŸ —ï¸ ", "🏗️"
    $content = $content -replace "ðŸ¤–", "🤖"
    $content = $content -replace "ðŸ‡¸ðŸ‡¬", "🇸🇬"
    $content = $content -replace "ðŸ‘¤", "👤"
    $content = $content -replace "ðŸ¡ï¸ ", "🛡️"
    $content = $content -replace "ðŸ †", "🏆"
    $content = $content -replace "ðŸ“‹", "📋"
    $content = $content -replace "ðŸ• ", "🕒"
    $content = $content -replace "â˜°", "☰"
    $content = $content -replace "âœ✓", "✓"
    $content = $content -replace "âœ", "✓"
    $content = $content -replace "â€”", "—"
    $content = $content -replace "â€“", "–"

    if ($originalContent -ne $content) {
        [System.IO.File]::WriteAllText($file.FullName, $content, $utf8NoBom)
        Write-Host "Fixed Mojibake in $($file.Name)"
    }
}
