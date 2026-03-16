$files = Get-ChildItem -Path '.' -Filter *.html
$count = 0
foreach ($file in $files) {
    if ($file.Name -match "test-.*.html") { continue }
    if ($file.Name -match "index-fixed.html") { continue }
    
    # Read the mangled UTF-8 string
    $corruptedString = [System.IO.File]::ReadAllText($file.FullName, [System.Text.Encoding]::UTF8)
    
    # Check if the file actually contains UTF-8 double encoding by checking if its 1252 byte-length matches the characters
    # Actually, we know all 51 files were mangled in exactly the same way.
    # We will just unconditionally convert them.
    $originalBytes = [System.Text.Encoding]::GetEncoding(1252).GetBytes($corruptedString)
    
    [System.IO.File]::WriteAllBytes($file.FullName, $originalBytes)
    $count++
}
Write-Output "Successfully fixed encoding for $count HTML files."
