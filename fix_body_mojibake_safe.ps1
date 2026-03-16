function Get-UnicodeChar($hex) {
    return [System.Char]::ConvertFromUtf32([System.Int32]::Parse($hex, [System.Globalization.NumberStyles]::HexNumber))
}

$replacements = @{
    # Mangled -> Real (using [char] for all)
    "$([char]0x00f0)$([char]0x0178)$([char]0x203a)$([char]0x00a1)$([char]0x00ef)$([char]0x00b8)$([char]0x008f)" = Get-UnicodeChar "1F6E1"
    "$([char]0x00f0)$([char]0x0178)$([char]0x203a)$([char]0x00a1)"                                                 = Get-UnicodeChar "1F6E1"
    "$([char]0x00f0)$([char]0x0178)$([char]0x00a0)$([char]0x0086)"                                                 = Get-UnicodeChar "1F3C6"
    "$([char]0x00f0)$([char]0x0178)$([char]0x201d)$([char]0x0094)"                                                 = Get-UnicodeChar "1F517"
    "$([char]0x00e2)$([char]0x00ad)$([char]0x0090)"                                                                = Get-UnicodeChar "2B50"
    "$([char]0x00f0)$([char]0x0178)$([char]0x203a)$([char]0x00a0)$([char]0x00ef)$([char]0x00b8)$([char]0x008f)" = Get-UnicodeChar "1F6E0"
    "$([char]0x00f0)$([char]0x0178)$([char]0x203a)$([char]0x00a0)"                                                 = Get-UnicodeChar "1F6E0"
    "$([char]0x00f0)$([char]0x0178)$([char]0x2019)$([char]0x00b0)"                                                 = Get-UnicodeChar "1F4B0"
    "$([char]0x00f0)$([char]0x0178)$([char]0x2019)$([char]0x00ac)"                                                 = Get-UnicodeChar "1F4AC"
    "$([char]0x00f0)$([char]0x0178)$([char]0x201c)$([char]0x009e)"                                                 = Get-UnicodeChar "1F4DE"
    "$([char]0x00e2)$([char]0x201d)$([char]0x00ac)$([char]0x00e2)$([char]0x201d)$([char]0x00ac)"                   = "$([char]0x2500)$([char]0x2500)"
}

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
    if ($originalContent -ne $content) {
        [System.IO.File]::WriteAllText($file.FullName, $content, $utf8NoBom)
        Write-Host "Fixed Content in $($file.Name)"
    }
}
