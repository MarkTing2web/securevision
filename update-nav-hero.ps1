$directoryPath = "c:\Users\Ler Wee Meng\OneDrive - Securevision Pte Ltd\Web2026"

$socialBlock = @"
<div style="display:flex;gap:8px;margin-top:12px">
<a href="https://www.facebook.com/securevision" target="_blank" rel="noopener" aria-label="Facebook" style="width:32px;height:32px;background:rgba(255,255,255,.08);border:1px solid rgba(255,255,255,.1);border-radius:6px;display:flex;align-items:center;justify-content:center;color:rgba(255,255,255,.6);text-decoration:none"><svg width="14" height="14" viewBox="0 0 24 24" fill="currentColor"><path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"/></svg></a>
<a href="https://www.linkedin.com/company/securevision-pte-ltd" target="_blank" rel="noopener" aria-label="LinkedIn" style="width:32px;height:32px;background:rgba(255,255,255,.08);border:1px solid rgba(255,255,255,.1);border-radius:6px;display:flex;align-items:center;justify-content:center;color:rgba(255,255,255,.6);text-decoration:none"><svg width="14" height="14" viewBox="0 0 24 24" fill="currentColor"><path d="M16 8a6 6 0 0 1 6 6v7h-4v-7a2 2 0 0 0-2-2 2 2 0 0 0-2 2v7h-4v-7a6 6 0 0 1 6-6z"/><rect x="2" y="9" width="4" height="12"/><circle cx="4" cy="4" r="2"/></svg></a>
<a href="https://wa.me/6593860466" target="_blank" rel="noopener" aria-label="WhatsApp" style="width:32px;height:32px;background:rgba(255,255,255,.08);border:1px solid rgba(255,255,255,.1);border-radius:6px;display:flex;align-items:center;justify-content:center;color:rgba(255,255,255,.6);text-decoration:none"><svg width="14" height="14" viewBox="0 0 24 24" fill="currentColor"><path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"/></svg></a>
</div>
"@

$socialFooterHtml = @"
        <div style="display:flex;gap:16px;justify-content:center;margin-top:20px;padding-top:20px;border-top:1px solid rgba(255,255,255,0.1);width:100%;">
            <a href="https://www.facebook.com/securevision" target="_blank" rel="noopener" aria-label="Facebook" style="width:34px;height:34px;background:rgba(255,255,255,.08);border:1px solid rgba(255,255,255,.12);border-radius:7px;display:flex;align-items:center;justify-content:center;color:rgba(255,255,255,.6);text-decoration:none"><svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor"><path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"/></svg></a>
            <a href="https://www.linkedin.com/company/securevision-pte-ltd" target="_blank" rel="noopener" aria-label="LinkedIn" style="width:34px;height:34px;background:rgba(255,255,255,.08);border:1px solid rgba(255,255,255,.12);border-radius:7px;display:flex;align-items:center;justify-content:center;color:rgba(255,255,255,.6);text-decoration:none"><svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor"><path d="M16 8a6 6 0 0 1 6 6v7h-4v-7a2 2 0 0 0-2-2 2 2 0 0 0-2 2v7h-4v-7a6 6 0 0 1 6-6z"/><rect x="2" y="9" width="4" height="12"/><circle cx="4" cy="4" r="2"/></svg></a>
            <a href="https://wa.me/6593860466" target="_blank" rel="noopener" aria-label="WhatsApp" style="width:34px;height:34px;background:rgba(255,255,255,.08);border:1px solid rgba(255,255,255,.12);border-radius:7px;display:flex;align-items:center;justify-content:center;color:rgba(255,255,255,.6);text-decoration:none"><svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor"><path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"/></svg></a>
        </div>
"@

$files = Get-ChildItem -Path $directoryPath -Filter *.html

$modifiedCount = 0

foreach ($file in $files) {
    if ($file.Name -match "test-.*.html") { continue }
    if ($file.Name -match "index-fixed.html") { continue }
    
    $content = Get-Content -Path $file.FullName -Raw
    $originalContent = $content

    # 1. Remove Home Nav Link (Desktop)
    $content = $content -replace '(?im)\s*<li class="nav-item">\s*<a href="index\.html" class="nav-link[^>]*>Home</a>\s*</li>', ''
    
    # 2. Remove Home Nav Link (Mobile)
    $content = $content -replace '(?im)\s*<a href="index\.html" class="mobile-menu-item">Home</a>', ''

    # 3. Remove the existing 32px social block from Hero
    $content = $content.Replace($socialBlock, "")

    # 4. Add 34px centered social block to Footer
    # First verify it doesn't already exist (like in solutions-hub)
    if (-not $content.Contains('width:34px;')) {
        # Inject right before the closing </footer> or ending </div> of the footer
        # A reliable anchor is '</footer>'
        $content = $content -replace '(?i)(</div>\s*</footer>)', "$socialFooterHtml`n`$1"
    }

    if ($originalContent -ne $content) {
        # Fix encoding explicitly for special chars like ©, ™
        $utf8NoBom = New-Object System.Text.UTF8Encoding $false
        [System.IO.File]::WriteAllText($file.FullName, $content, $utf8NoBom)
        $modifiedCount++
        Write-Host "Updated $($file.Name)"
    }
}

Write-Host "`nTask Complete. Modified $modifiedCount files."
