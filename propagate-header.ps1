$directoryPath = "c:\Users\ler\OneDrive - Securevision Pte Ltd\Web2026"

$newCss = @"
<style id="sv-nav-css">
.main-nav{position:fixed;top:0;left:0;right:0;z-index:1000;background:rgba(14,26,43,.97);backdrop-filter:blur(8px);border-bottom:1px solid rgba(255,255,255,.08);height:68px;font-family:'Inter',sans-serif}
.nav-container{max-width:1200px;margin:0 auto;padding:0 24px;display:flex;align-items:center;justify-content:space-between;height:68px;position:relative}
.nav-logo-link{display:flex;align-items:center;text-decoration:none}
.nav-logo-img{height:40px;width:auto;display:block}
.nav-menu{display:flex;list-style:none;gap:2px;margin:0;padding:0}
.nav-item{position:static}
.nav-link{color:rgba(255,255,255,.8);text-decoration:none;font-size:14px;font-weight:500;display:flex;align-items:center;height:68px;padding:0 13px;white-space:nowrap;transition:.2s}
.nav-link:hover,.nav-link.active{color:#fff}
.has-dropdown::after{content:" ▾";font-size:9px;opacity:.5}
.nav-cta-btn{background:#0056b3;color:#fff;padding:9px 16px;border-radius:6px;font-family:'Montserrat',sans-serif;font-size:13px;font-weight:600;text-decoration:none;white-space:nowrap;transition:.2s;flex-shrink:0}
.nav-cta-btn:hover{background:#003d82}
.mobile-toggle{display:none;background:none;border:none;color:#fff;font-size:22px;cursor:pointer;padding:8px}
.mega-menu{position:absolute;top:100%;background:#fff;border:1px solid #E8EAED;border-radius:12px;box-shadow:0 12px 40px rgba(0,0,0,.15);padding:24px;display:none;z-index:200;max-width:calc(100vw - 48px);overflow-x:auto}
.nav-item:hover>.mega-menu{display:grid;opacity:1}
.mega-menu-solutions{width:820px;grid-template-columns:1fr 1.6fr;gap:24px;left:auto;right:10px}
.mega-menu-technology{width:960px;grid-template-columns:1fr 1.3fr 1.3fr;gap:0;left:auto;right:10px}
.mega-menu-technology .mega-guidance{padding-right:20px;border-right:1px solid #E8EAED}
.mega-menu-technology .mega-links-col{padding:0 20px;border-right:1px solid #E8EAED}
.mega-brands-col{padding-left:20px}
.mega-menu-portfolio{width:820px;grid-template-columns:1fr 1fr 1fr;gap:20px;left:auto;right:10px}
.mega-menu-resources{width:880px;grid-template-columns:repeat(4,1fr);gap:16px;left:auto;right:10px}
.mega-menu-insights{width:720px;grid-template-columns:1fr 1.6fr;gap:24px;right:10px}
.mega-menu-about{width:320px;right:10px;display:block!important;padding:20px}
.nav-item:hover>.mega-menu-about{display:block!important}
.mega-menu-contact{width:280px;right:10px;display:block!important;padding:18px}
.nav-item:hover>.mega-menu-contact{display:block!important}
@media (max-width: 1024px) {
  .mega-menu-solutions{width:720px;grid-template-columns:1fr 1fr}
  .mega-menu-technology{width:720px;grid-template-columns:1fr 1.2fr}
  .mega-brands-col{display:none}
  .mega-menu-portfolio{width:720px;grid-template-columns:1fr 1fr 1fr;gap:12px}
  .mega-menu-resources{width:720px;grid-template-columns:repeat(2,1fr)}
  .mega-menu{left: auto; right: 0; max-width: 100vw; transform: none;}
}
.mega-col-label{font-family:'Montserrat',sans-serif;font-size:10px;font-weight:700;letter-spacing:1.5px;text-transform:uppercase;color:#8a8f98;margin-bottom:12px;display:block}
.mega-guidance h4{font-family:'Montserrat',sans-serif;font-size:13px;font-weight:700;color:#1B1F23;margin:0 0 6px}
.mega-guidance p{font-size:12px;color:#5F6368;margin:0 0 10px;line-height:1.5}
.view-all-link{font-family:'Montserrat',sans-serif;font-size:12px;font-weight:700;color:#0056b3;text-decoration:none;display:inline-flex;align-items:center}
.mega-trust{margin-top:14px;padding-top:12px;border-top:1px solid #E8EAED}
.trust-item{font-size:11px;color:#5F6368;padding:2px 0}
.solution-link{display:flex;flex-direction:column;padding:8px 10px;border-radius:6px;text-decoration:none;transition:.15s;margin-bottom:2px}
.solution-link:hover{background:#F8F9FA}
.solution-link strong{font-size:13px;color:#1B1F23;margin-bottom:1px;display:block}
.solution-link small{font-size:11px;color:#8a8f98}
.product-link{display:flex;align-items:flex-start;gap:8px;padding:8px 0;border-bottom:1px solid #E8EAED;text-decoration:none}
.product-link:last-of-type{border-bottom:none}
.product-link div strong{display:block;font-size:13px;color:#1B1F23;margin-bottom:1px}
.product-link div small{font-size:11px;color:#8a8f98}
.pl-dot{width:7px;height:7px;border-radius:50%;flex-shrink:0;margin-top:5px}
.brand-cat-group{margin-bottom:10px}
.brand-cat-title{font-size:10px;font-weight:700;font-family:'Montserrat',sans-serif;text-transform:uppercase;letter-spacing:1px;color:#8a8f98;margin-bottom:5px;display:flex;align-items:center;gap:5px}
.bct-dot{width:5px;height:5px;border-radius:50%;flex-shrink:0}
.brand-name-links{display:flex;flex-wrap:wrap;gap:3px}
.brand-name-link{font-size:11px;font-weight:500;color:#5F6368;text-decoration:none;padding:2px 7px;border-radius:4px;background:#F8F9FA;border:1px solid #E8EAED;transition:.15s}
.brand-name-link:hover{color:#0056b3;border-color:#0056b3;background:#fff}
.brand-grid{display:grid;grid-template-columns:1fr 1fr;gap:6px;margin-bottom:12px}
.brand-grid a{font-size:12px;color:#5F6368;text-decoration:none;padding:4px 0;transition:.15s;display:block}
.brand-grid a:hover{color:#0056b3}
.mega-port-col{display:flex;flex-direction:column;gap:2px}
.port-link{display:flex;align-items:center;gap:7px;padding:6px 8px;border-radius:5px;text-decoration:none;color:#1B1F23;font-size:13px;transition:.15s}
.port-link:hover{background:#F8F9FA;color:#0056b3}
.port-dot{width:7px;height:7px;border-radius:50%;flex-shrink:0}
.port-featured{display:block;padding:8px 10px;border-radius:7px;text-decoration:none;border:1px solid #E8EAED;margin-bottom:6px;transition:.15s}
.port-featured:hover{border-color:#0056b3;background:#F8F9FA}
.pf-label{font-size:10px;font-weight:700;text-transform:uppercase;letter-spacing:.5px;color:#8a8f98}
.pf-title{font-size:13px;font-weight:700;color:#1B1F23}
.pf-meta{font-size:11px;color:#8a8f98}
.mega-res-col{display:flex;flex-direction:column}
.res-col-header{display:flex;align-items:center;gap:6px;margin-bottom:8px;padding-bottom:7px;border-bottom:1px solid #E8EAED}
.res-col-header h4{font-family:'Montserrat',sans-serif;font-size:12px;font-weight:700;color:#1B1F23;margin:0}
.res-link{font-size:12px;color:#5F6368;text-decoration:none;padding:4px 0;transition:.15s;display:flex;align-items:center;justify-content:space-between}
.res-link:hover{color:#0056b3}
.rl-soon{font-size:10px;background:#F8F9FA;border:1px solid #E8EAED;color:#8a8f98;padding:1px 5px;border-radius:6px;font-family:'Montserrat',sans-serif;font-weight:700}
.insights-featured{display:block;padding:8px 0;border-bottom:1px solid #E8EAED;text-decoration:none;margin-bottom:6px}
.if-tag{font-size:10px;font-weight:700;text-transform:uppercase;letter-spacing:.5px;color:#0056b3;font-family:'Montserrat',sans-serif}
.if-title{font-size:12px;font-weight:600;color:#1B1F23;margin:3px 0 1px;line-height:1.4}
.if-meta{font-size:11px;color:#8a8f98}
.insights-cat{display:flex;align-items:center;gap:8px;padding:8px 0;border-bottom:1px solid #E8EAED;text-decoration:none;color:#1B1F23;transition:.15s}
.insights-cat:last-child{border-bottom:none}
.insights-cat:hover{color:#0056b3}
.ic-icon{font-size:16px;flex-shrink:0}
.insights-cat strong{display:block;font-size:13px;font-family:'Montserrat',sans-serif}
.insights-cat small{font-size:11px;color:#8a8f98}
.about-preview-card{background:#F8F9FA;border-radius:8px;padding:14px;margin-bottom:12px;border:1px solid #E8EAED}
.apc-founder{display:flex;gap:9px;align-items:center;margin-bottom:8px}
.apc-avatar{width:36px;height:36px;border-radius:50%;background:#0056b3;display:flex;align-items:center;justify-content:center;font-size:16px;flex-shrink:0}
.apc-name{font-family:'Montserrat',sans-serif;font-size:12px;font-weight:700;color:#1B1F23}
.apc-title{font-size:10px;color:#8a8f98}
.apc-quote{font-size:11px;font-style:italic;color:#5F6368;border-left:2px solid #0056b3;padding-left:7px;line-height:1.5}
.about-links{display:flex;flex-direction:column;gap:3px}
.about-link{display:flex;align-items:center;gap:7px;padding:7px 8px;border-radius:5px;text-decoration:none;color:#1B1F23;font-size:12px;transition:.15s}
.about-link:hover{background:#F8F9FA;color:#0056b3}
.contact-channel-links{display:flex;flex-direction:column;gap:7px;margin-bottom:10px}
.contact-ch-link{display:flex;align-items:center;gap:9px;padding:9px 11px;border-radius:7px;text-decoration:none;color:#1B1F23;border:1px solid #E8EAED;transition:.15s}
.contact-ch-link:hover{border-color:#0056b3}
.whatsapp-ch{background:#f0faf4;border-color:#c6e6d1}
.cch-icon{font-size:18px;flex-shrink:0}
.cch-label{font-family:'Montserrat',sans-serif;font-size:11px;font-weight:700;color:#1B1F23}
.cch-sub{font-size:10px;color:#8a8f98}
.contact-hours{font-size:10px;color:#8a8f98;padding-top:8px;border-top:1px solid #E8EAED;line-height:1.6}
.mobile-menu{display:none;background:#0E1A2B;padding:10px 20px 20px}
.mobile-menu.active{display:block}
.mobile-menu-item{display:block;padding:12px 0;color:rgba(255,255,255,.85);font-size:14px;font-weight:500;border-bottom:1px solid rgba(255,255,255,.08);cursor:pointer;text-decoration:none}
a.mobile-menu-item:hover{color:#fff}
.mobile-submenu{display:none;padding-left:14px;margin:6px 0 2px}
.mobile-submenu a{display:block;padding:7px 0;color:rgba(255,255,255,.6);text-decoration:none;font-size:13px}
.mobile-submenu a:hover{color:#fff}
@media(max-width:768px){.nav-menu{display:none}.mobile-toggle{display:block}.nav-logo-img{height:32px}}
        /* Floating WhatsApp */
        .floating-wa {
            position: fixed;
            bottom: 24px;
            right: 24px;
            background: #25d366;
            color: white;
            width: 56px;
            height: 56px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 4px 12px rgba(37,211,102,0.3);
            z-index: 1000;
            transition: transform 0.2s;
        }
        .floating-wa:hover {
            transform: scale(1.1);
        }
        @media (max-width: 480px) {
            .floating-wa { width: 48px; height: 48px; bottom: 16px; right: 16px; }
        }
    </style>
"@

$newLogoBlock = @"
<a href="index.html" class="nav-logo-link" aria-label="Securevision" style="gap: 8px;">
    <img src="/proprietary-assets/securevision-dark-logo.png" alt="Securevision" class="nav-logo-img" style="height: 38px;">
    <span style="font-family:'Montserrat',sans-serif;font-weight:700;font-size:22px;color:#ffffff;letter-spacing:0.5px;">Securevision</span>
  </a>
"@

$newBrandsBlock = @"
<div class="mega-brands-col"><div class="mega-col-label">Brands We Represent</div><div class="brand-grid"><a href="hikvision-singapore.html">Hikvision</a><a href="hanwha-samsung-singapore.html">Hanwha</a><a href="uniview-singapore.html">Uniview</a><a href="milesight-singapore.html">Milesight</a><a href="ajax-alarm-singapore.html">AJAX</a><a href="risco-alarm-singapore.html">RISCO</a><a href="paradox-alarm-singapore.html">Paradox</a><a href="dsc-alarm-singapore.html">DSC</a><a href="zkteco-singapore.html">ZKTeco</a><a href="suprema-singapore.html">Suprema</a><a href="hid-singapore.html">HID</a><a href="entrypass-singapore.html">EntryPass</a><a href="akuvox-singapore.html">Akuvox</a><a href="aiphone-singapore.html">Aiphone</a><a href="faac-singapore.html">FAAC</a><a href="mag-gates-singapore.html">MAG</a></div><a href="brands.html" class="view-all-link" style="margin-top:2px;font-size:12px">→ All 20 Brands</a></div>
"@

$files = Get-ChildItem -Path $directoryPath -Filter *.html

$modifiedCount = 0

foreach ($file in $files) {
    if ($file.Name -match "test-.*.html") { continue }
    if ($file.Name -eq "index.html") { continue } # index is already done
    
    $content = Get-Content -Path $file.FullName -Raw
    $originalContent = $content

    # 1. Replace the entire sv-nav-css block
    $content = $content -replace '(?s)<style id="sv-nav-css">.*?</style>', $newCss

    # 2. Replace the nav-logo-link block
    $content = $content -replace '(?s)<a href="index\.html" class="nav-logo-link".*?</a>(?=\s*<ul class="nav-menu">)', $newLogoBlock

    # 3. Replace the mega-brands-col
    $content = $content -replace '(?s)<div class="mega-brands-col">.*?</div>\s*</div>\s*</li>\s*<li class="nav-item">\s*<a href="portfolio\.html"', "$newBrandsBlock`n      </div>`n    </li>`n    <li class=`"nav-item`"><a href=`"portfolio.html`""

    # 4. Add Search Icon to nav-menu if not exists
    if (-not $content.Contains('aria-label="Search"')) {
        $searchHtml = @"
    <li class="nav-item">
      <a href="#" class="nav-link" aria-label="Search">
        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
          <circle cx="11" cy="11" r="8"></circle>
          <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
        </svg>
      </a>
    </li>
"@
        $content = $content -replace '(?s)</ul>(\s*<a href="https://wa\.me)', "$searchHtml`n  </ul>`$1"
    }

    if ($originalContent -ne $content) {
        $utf8NoBom = New-Object System.Text.UTF8Encoding $false
        [System.IO.File]::WriteAllText($file.FullName, $content, $utf8NoBom)
        $modifiedCount++
        Write-Host "Updated $($file.Name)"
    }
}

Write-Host "`nTask Complete. Modified $modifiedCount files."
