$filePath = 'c:\Users\Ler Wee Meng\OneDrive - Securevision Pte Ltd\Web2026\index.html'
$content = [IO.File]::ReadAllText($filePath, [System.Text.Encoding]::UTF8)

# 1. Fix CSS content escapes
$content = $content -replace "content:\s*['\"] ▾['\"]", 'content: " \25BE"'
$content = $content -replace "content:\s*['\"]✓['\"]", 'content: " \2713"'
$content = $content -replace "content:\s*['\"]▾['\"]", 'content: " \25BE"'

# Common Replacements
$replacements = @{
    '—' = '&mdash;'
    '–' = '&ndash;'
    '™' = '&trade;'
    '·' = '&middot;'
    '→' = '&rarr;'
    '●' = '&bull;'
    '✓' = '&check;'
    '©' = '&copy;'
    '—' = '&mdash;'
    '’' = '&rsquo;'
}

foreach ($old in $replacements.Keys) {
    if ($content.Contains($old)) {
        $content = $content.Replace($old, $replacements[$old])
    }
}

# 2. Fix Emojis to numeric entities. This ensures they don't break.
# List based on the dump I saw.
$emojis = @{
    '🏠' = '&#127968;'
    '📷' = '&#128247;'
    '🏷️' = '&#127991;'
    '📂' = '&#128194;'
    '📚' = '&#128218;'
    '👤' = '&#128100;'
    '🏢' = '&#127970;'
    '🏪' = '&#127978;'
    '🏭' = '&#127981;'
    '🏫' = '&#127979;'
    '🏬' = '&#127980;'
    '🚪' = '&#128682;'
    '🚗' = '&#128663;'
    '📊' = '&#128202;'
    '🏗' = '&#127959;'
    '🤖' = '&#129302;'
    '🇸🇬' = '&#127480;&#127468;'
    '🏆' = '&#127942;'
    '💬' = '&#128172;'
    '📞' = '&#128222;'
    '🕒' = '&#128344;'
    '📧' = '&#128231;'
    '🛡️' = '&#128737;'
    '🔗' = '&#128279;'
    '⭐' = '&#11088;'
    '🛠️' = '&#128736;'
    '💰' = '&#128176;'
    '🎯' = '&#127919;'
    '🔍' = '&#128269;'
    '⚡' = '&#9889;'
    '🏗' = '&#127959;'
    '🤖' = '&#129302;'
    '🇸🇬' = '&#127480;&#127468;'
    '📋' = '&#128203;'
    '🦮' = '&#129454;'
    '📥' = '&#128229;'
    '🔧' = '&#128295;'
    '📚' = '&#128218;'
    '☰' = '&#9776;'
}

foreach ($old in $emojis.Keys) {
    if ($content.Contains($old)) {
        $content = $content.Replace($old, $emojis[$old])
    }
}

# 3. Handle Special CSS/Comment dashes if any
# (Skip for now to avoid side effects if they are part of decorative lines)

[IO.File]::WriteAllText($filePath, $content, [System.Text.Encoding]::UTF8)
Write-Output "Successfully applied mojibake correction for index.html"
