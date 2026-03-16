function Get-UnicodeChar($hex) {
    return [System.Char]::ConvertFromUtf32([System.Int32]::Parse($hex, [System.Globalization.NumberStyles]::HexNumber))
}

$copyright = Get-UnicodeChar "00A9" # ©
$middles = Get-UnicodeChar "00B7"   # ·
$tel = Get-UnicodeChar "1F4DE"      # 📞
$wa = Get-UnicodeChar "1F4AC"       # 💬
$email = Get-UnicodeChar "1F4E7"    # 📧
$map = Get-UnicodeChar "1FDFA"      # 📍
$clock = Get-UnicodeChar "1F552"    # 🕒

$utf8NoBom = New-Object System.Text.UTF8Encoding $false
$directoryPath = "c:\Users\ler\OneDrive - Securevision Pte Ltd\Web2026"

$newFooter = @"
<footer class="site-footer">
    <div class="footer-container">
        <div class="footer-grid">
            <div class="footer-brand">
                <div class="f-logo-wrap" style="display:flex; align-items:center; gap:10px; margin-bottom:18px;">
                    <img src="/proprietary-assets/securevision-dark-logo.png" alt="Securevision" style="height:36px; display:block;">
                    <span style="font-family:'Montserrat',sans-serif; font-weight:700; font-size:20px; color:#fff; letter-spacing:0.5px;">Securevision</span>
                </div>
                <p style="color:rgba(255,255,255,.6); font-size:13px; line-height:1.6; margin-bottom:20px;">Singapore's trusted security systems integrator. Delivering integrated surveillance, access control, and vehicle management systems since 2006.</p>
                <div class="f-socials" style="display:flex; gap:12px;">
                    <a href="https://www.facebook.com/securevision" target="_blank" rel="noopener" class="f-social-link"><svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor"><path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"/></svg></a>
                    <a href="https://www.linkedin.com/company/securevision-pte-ltd" target="_blank" rel="noopener" class="f-social-link"><svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor"><path d="M16 8a6 6 0 0 1 6 6v7h-4v-7a2 2 0 0 0-2-2 2 2 0 0 0-2 2v7h-4v-7a6 6 0 0 1 6-6z"/><rect x="2" y="9" width="4" height="12"/><circle cx="4" cy="4" r="2"/></svg></a>
                    <a href="https://wa.me/6593860466" target="_blank" rel="noopener" class="f-social-link"><svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor"><path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"/></svg></a>
                </div>
            </div>
            
            <div class="footer-links">
                <h4 style="color:#fff; font-family:'Montserrat',sans-serif; font-size:14px; margin-bottom:20px; text-transform:uppercase; letter-spacing:1px;">Solutions</h4>
                <ul style="list-style:none; padding:0; margin:0;">
                    <li style="margin-bottom:10px;"><a href="residential.html" style="color:rgba(255,255,255,.6); text-decoration:none; font-size:13px; transition:.2s">Private Homes</a></li>
                    <li style="margin-bottom:10px;"><a href="condominiums.html" style="color:rgba(255,255,255,.6); text-decoration:none; font-size:13px; transition:.2s">Condominiums</a></li>
                    <li style="margin-bottom:10px;"><a href="commercial.html" style="color:rgba(255,255,255,.6); text-decoration:none; font-size:13px; transition:.2s">Commercial &amp; Retail</a></li>
                    <li style="margin-bottom:10px;"><a href="institutions.html" style="color:rgba(255,255,255,.6); text-decoration:none; font-size:13px; transition:.2s">Institutions</a></li>
                    <li style="margin-bottom:10px;"><a href="industrial.html" style="color:rgba(255,255,255,.6); text-decoration:none; font-size:13px; transition:.2s">Industrial &amp; Logistics</a></li>
                </ul>
            </div>
            
            <div class="footer-links">
                <h4 style="color:#fff; font-family:'Montserrat',sans-serif; font-size:14px; margin-bottom:20px; text-transform:uppercase; letter-spacing:1px;">Company</h4>
                <ul style="list-style:none; padding:0; margin:0;">
                    <li style="margin-bottom:10px;"><a href="about.html" style="color:rgba(255,255,255,.6); text-decoration:none; font-size:13px; transition:.2s">Our Story</a></li>
                    <li style="margin-bottom:10px;"><a href="awards-certifications.html" style="color:rgba(255,255,255,.6); text-decoration:none; font-size:13px; transition:.2s">Awards &amp; Certifications</a></li>
                    <li style="margin-bottom:10px;"><a href="portfolio.html" style="color:rgba(255,255,255,.6); text-decoration:none; font-size:13px; transition:.2s">Project Portfolio</a></li>
                    <li style="margin-bottom:10px;"><a href="insights.html" style="color:rgba(255,255,255,.6); text-decoration:none; font-size:13px; transition:.2s">Industry Insights</a></li>
                    <li style="margin-bottom:10px;"><a href="contact.html" style="color:rgba(255,255,255,.6); text-decoration:none; font-size:13px; transition:.2s">Contact Us</a></li>
                </ul>
            </div>
            
            <div class="footer-contact">
                <h4 style="color:#fff; font-family:'Montserrat',sans-serif; font-size:14px; margin-bottom:20px; text-transform:uppercase; letter-spacing:1px;">Get In Touch</h4>
                <div style="margin-bottom:15px; display:flex; gap:10px; align-items:flex-start;">
                    <span style="font-size:16px;">$wa</span>
                    <div><strong style="display:block; color:#fff; font-size:13px;">WhatsApp</strong><a href="https://wa.me/6593860466" style="color:rgba(255,255,255,.6); text-decoration:none; font-size:13px;">+65 9386 0466</a></div>
                </div>
                <div style="margin-bottom:15px; display:flex; gap:10px; align-items:flex-start;">
                    <span style="font-size:16px;">$tel</span>
                    <div><strong style="display:block; color:#fff; font-size:13px;">Office</strong><a href="tel:+6562864796" style="color:rgba(255,255,255,.6); text-decoration:none; font-size:13px;">+65 6286 4796</a></div>
                </div>
                <div style="margin-bottom:15px; display:flex; gap:10px; align-items:flex-start;">
                    <span style="font-size:16px;">$email</span>
                    <div><strong style="display:block; color:#fff; font-size:13px;">Email</strong><a href="mailto:enquiry@securevision.com.sg" style="color:rgba(255,255,255,.6); text-decoration:none; font-size:13px;">enquiry@securevision.com.sg</a></div>
                </div>
            </div>
        </div>
        
        <div class="footer-bottom" style="margin-top:60px; padding-top:24px; border-top:1px solid rgba(255,255,255,.08); display:flex; flex-wrap:wrap; justify-content:space-between; align-items:center; gap:20px;">
            <p style="color:rgba(255,255,255,.4); font-size:11px; margin:0;">$copyright 2025 Securevision Pte Ltd $middles Police License L/PS/000267/2023P $middles bizSAFE Level 4 $middles BCA Registered</p>
            <div style="display:flex; gap:20px;">
                <a href="privacy.html" style="color:rgba(255,255,255,.4); text-decoration:none; font-size:11px;">Privacy Policy</a>
                <a href="terms.html" style="color:rgba(255,255,255,.4); text-decoration:none; font-size:11px;">Terms of Service</a>
            </div>
        </div>
    </div>
</footer>
"@

$newCss = @"
<style id="sv-footer-css">
.site-footer{background:#0a111e;padding:80px 0 40px;border-top:1px solid rgba(255,255,255,.05);font-family:'Inter',sans-serif}
.footer-container{max-width:1200px;margin:0 auto;padding:0 24px}
.footer-grid{display:grid;grid-template-columns:1.5fr 1fr 1fr 1.2fr;gap:60px}
.f-social-link{width:36px;height:36px;background:rgba(255,255,255,.05);border-radius:8px;display:flex;align-items:center;justify-content:center;color:rgba(255,255,255,.6);transition:.2s;text-decoration:none;border:1px solid rgba(255,255,255,.1)}
.f-social-link:hover{background:#0056b3;color:#fff;border-color:#0056b3;transform:translateY(-2px)}
@media(max-width:992px){.footer-grid{grid-template-columns:1fr 1fr;gap:40px}}
@media(max-width:576px){.footer-grid{grid-template-columns:1fr}}
</style>
"@

$files = Get-ChildItem -Path $directoryPath -Filter *.html

foreach ($file in $files) {
    if ($file.Name -match "test-.*.html") { continue }
    
    $content = [System.IO.File]::ReadAllText($file.FullName, $utf8NoBom)
    $originalContent = $content

    # Replace Footer
    if ($content -match '(?s)<footer.*?>.*?</footer>') {
        $content = [regex]::Replace($content, '(?s)<footer.*?>.*?</footer>', $newFooter)
    }

    # Replace Footer CSS
    if ($content -match '(?s)<style id="sv-footer-css">.*?</style>') {
        $content = [regex]::Replace($content, '(?s)<style id="sv-footer-css">.*?</style>', $newCss)
    } elseif ($content -match '</head>') {
        $content = $content -replace '</head>', "$newCss`n</head>"
    }

    if ($originalContent -ne $content) {
        [System.IO.File]::WriteAllText($file.FullName, $content, $utf8NoBom)
        Write-Host "Updated Footer in $($file.Name)"
    }
}
Write-Host "Footer propagation complete."
