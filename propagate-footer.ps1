$directoryPath = "c:\Users\ler\OneDrive - Securevision Pte Ltd\Web2026"
$utf8NoBom = New-Object System.Text.UTF8Encoding $false

$newFooter = @"
    <footer class="site-footer">
        <div class="container">
            <div class="footer-grid">
                <div class="footer-brand" style="display:flex; flex-direction:column; gap:8px;">
                    <img src="/proprietary-assets/securevision-dark-logo.png" alt="Securevision Logo" style="height: 54px; width: fit-content; margin-bottom: 4px;">
                    <div style="font-family:'Montserrat',sans-serif;font-size:26px;font-weight:700;color:#fff;letter-spacing:1px;line-height:1;">SECUREVISION</div>
                    <div style="font-family:'Inter',sans-serif;font-size:14px;color:rgba(255,255,255,0.85);letter-spacing:0.5px;">where security matters</div>
                    <p style="margin-top:16px;">Singapore's integrated security systems specialist since 2006. Licensed, certified, and trusted by 2,000+ sites across every property sector.</p>
                </div>
                <div class="footer-col">
                    <h4>Solutions</h4>
                    <ul>
                        <li><a href="residential.html">Private Homes</a></li>
                        <li><a href="condominiums.html">Condominiums</a></li>
                        <li><a href="commercial.html">Commercial</a></li>
                        <li><a href="institutions.html">Institutions</a></li>
                        <li><a href="industrial.html">Industrial</a></li>
                        <li><a href="solutions-hub.html">Find My Solution</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>Technology &amp; Brands</h4>
                    <ul>
                        <li><a href="surveillance-systems.html">Surveillance</a></li>
                        <li><a href="people-access.html">People Access</a></li>
                        <li><a href="vehicle-access.html">Vehicle Access</a></li>
                        <li><a href="platform-integration.html">Platform</a></li>
                        <li><a href="brands.html">All 20 Brands</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>Portfolio</h4>
                    <ul>
                        <li><a href="portfolio.html">All Projects</a></li>
                        <li><a href="portfolio-lviv.html">The L'viv</a></li>
                        <li><a href="portfolio-scape.html">SCAPE</a></li>
                        <li><a href="portfolio-sta.html">STA</a></li>
                        <li><a href="portfolio-cyrus.html">Cyrus Tech</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>Resources &amp; Insights</h4>
                    <ul>
                        <li><a href="resources.html">All Resources</a></li>
                        <li><a href="resources-cctv-guide.html">CCTV Guide</a></li>
                        <li><a href="insights.html">All Insights</a></li>
                        <li><a href="insights.html?cat=planning">Security Planning</a></li>
                        <li><a href="insights.html?cat=casestudy">Case Studies</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>Contact Us</h4>
                    <ul style="display:flex; flex-direction:column; gap:16px; margin-top:8px;">
                        <li>
                            <a href="tel:+6562864796" style="display:flex; align-items:center; gap:12px; font-size:14px; color:#fff; text-decoration:none;">
                                <span style="font-size:20px; text-decoration:none;">📞</span> +65 6286 4796
                            </a>
                        </li>
                        <li>
                            <a href="https://wa.me/6593860466" style="display:flex; align-items:center; gap:12px; font-size:14px; color:#fff; text-decoration:none;">
                                <span style="font-size:20px; text-decoration:none;">💬</span> WhatsApp Us
                            </a>
                        </li>
                        <li>
                            <a href="mailto:enquiry@securevision.com.sg" style="display:flex; align-items:center; gap:12px; font-size:14px; color:#fff; text-decoration:none; word-break:break-all;">
                                <span style="font-size:20px; text-decoration:none;">✉️</span> enquiry@securevision.com.sg
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                <p>© 2025 Securevision Pte Ltd &nbsp;|&nbsp; Police License L/PS/000267/2023P &nbsp;|&nbsp; bizSAFE Level 4 &nbsp;|&nbsp; BCA Registered</p>
                <p>Serving Singapore Since 2006 &nbsp;|&nbsp; <a href="mailto:enquiry@securevision.com.sg">enquiry@securevision.com.sg</a></p>
            </div>
            <div style="display:flex;gap:16px;justify-content:center;margin-top:20px;padding-top:20px;border-top:1px solid rgba(255,255,255,0.1);width:100%;">
                <a href="https://www.facebook.com/securevision" target="_blank" rel="noopener" aria-label="Facebook" style="width:34px;height:34px;background:rgba(255,255,255,.08);border:1px solid rgba(255,255,255,.12);border-radius:7px;display:flex;align-items:center;justify-content:center;color:rgba(255,255,255,.6);text-decoration:none"><svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor"><path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"/></svg></a>
                <a href="https://www.linkedin.com/company/securevision-pte-ltd" target="_blank" rel="noopener" aria-label="LinkedIn" style="width:34px;height:34px;background:rgba(255,255,255,.08);border:1px solid rgba(255,255,255,.12);border-radius:7px;display:flex;align-items:center;justify-content:center;color:rgba(255,255,255,.6);text-decoration:none"><svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor"><path d="M16 8a6 6 0 0 1 6 6v7h-4v-7a2 2 0 0 0-2-2 2 2 0 0 0-2 2v7h-4v-7a6 6 0 0 1 6-6z"/><rect x="2" y="9" width="4" height="12"/><circle cx="4" cy="4" r="2"/></svg></a>
                <a href="https://wa.me/6593860466" target="_blank" rel="noopener" aria-label="WhatsApp" style="width:34px;height:34px;background:rgba(255,255,255,.08);border:1px solid rgba(255,255,255,.12);border-radius:7px;display:flex;align-items:center;justify-content:center;color:rgba(255,255,255,.6);text-decoration:none"><svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor"><path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"/></svg></a>
            </div>
        </div>
    </footer>
"@

$files = Get-ChildItem -Path $directoryPath -Filter *.html

$modifiedCount = 0

foreach ($file in $files) {
    if ($file.Name -match "test-.*.html") { continue }
    
    # Use ReadAllText for reliable UTF-8
    $content = [System.IO.File]::ReadAllText($file.FullName, $utf8NoBom)
    $originalContent = $content

    $content = $content -replace '(?s)<footer.*?>.*?</footer>', $newFooter

    if ($originalContent -ne $content) {
        [System.IO.File]::WriteAllText($file.FullName, $content, $utf8NoBom)
        $modifiedCount++
        Write-Host "Updated $($file.Name)"
    }
}

Write-Host "`nFooter propagation complete. Modified $modifiedCount files."
