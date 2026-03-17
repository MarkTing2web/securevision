$filePath = 'c:\Users\Ler Wee Meng\OneDrive - Securevision Pte Ltd\Web2026\index.html'
$bytes = [IO.File]::ReadAllBytes($filePath)
# Note: For UTF-8, some characters are multi-byte.
# If I read it as a string first, I can work with characters.
$content = [IO.File]::ReadAllText($filePath, [System.Text.Encoding]::UTF8)

$chars = $content.ToCharArray()
$sb = New-Object System.Text.StringBuilder
foreach ($c in $chars) {
    $code = [int]$c
    if ($code -le 127) {
        $sb.Append($c) | Out-Null
    } else {
        # Convert to hexadecimal entity, except for things we want to keep as entities like &trade;
        # But for robustness, numeric entities are best
        $sb.Append('&#') | Out-Null
        $sb.Append($code) | Out-Null
        $sb.Append(';') | Out-Null
    }
}

[IO.File]::WriteAllText($filePath, $sb.ToString(), [System.Text.Encoding]::UTF8)
Write-Output "Successfully converted all non-ASCII characters to HTML entities in index.html"
