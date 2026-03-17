$filePath = 'c:\Users\Ler Wee Meng\OneDrive - Securevision Pte Ltd\Web2026\index.html'
$content = [IO.File]::ReadAllText($filePath, [System.Text.Encoding]::UTF8)

# Define replacements
$replacements = @{
    '—' = '&mdash;'
    '–' = '&ndash;'
    '™' = '&trade;'
    '·' = '&middot;'
    '→' = '&rarr;'
    '●' = '&bull;'
    '✓' = '&check;'
    '©' = '&copy;'
    '’' = '&rsquo;'
    '‘' = '&lsquo;'
    '“' = '&ldquo;'
    '”' = '&rdquo;'
    '▾' = '&#9662;'
    '🏠' = '&#127968;'
    '📷' = '&#128247;'
    '🚪' = '&#128682;'
    '🚗' = '&#128663;'
    '📊' = '&#128202;'
    '📊' = '&#128202;'
    '👤' = '&#128100;'
    '🏆' = '&#127942;'
    '💬' = '&#128172;'
    '📞' = '&#128222;'
    '🕒' = '&#128344;'
    '🏗' = '&#127959;'
    '🤖' = '&#129302;'
    '🇸🇬' = '&#127480;&#127468;'
    '🏷️' = '&#127991;'
    '🛡️' = '&#128737;'
    '🔗' = '&#128279;'
    '⭐' = '&#11088;'
    '🛠️' = '&#128736;'
    '💰' = '&#128176;'
    '📧' = '&#128231;'
    '🎯' = '&#127919;'
    '🔍' = '&#128269;'
    '⚡' = '&#9889;'
    '──' = '---'
    '─' = '-'
    '…' = '&hellip;'
    '’' = '&rsquo;'
}

foreach ($old in $replacements.Keys) {
    $content = $content.Replace($old, $replacements[$old])
}

# Also handle the specific ── in comments if any remain
$content = $content -replace [char]0x2500, '-'

[IO.File]::WriteAllText($filePath, $content, [System.Text.Encoding]::UTF8)
Write-Output "Fixed mojibake in index.html"
