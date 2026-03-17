function Get-UnicodeChar($hex) {
    return [System.Char]::ConvertFromUtf32([System.Int32]::Parse($hex, [System.Globalization.NumberStyles]::HexNumber))
}

$tri = Get-UnicodeChar "25BE"
$arrow = Get-UnicodeChar "2192"
$check = Get-UnicodeChar "2713"
$shield = Get-UnicodeChar "1F6E1" + [char]0xFE0F
$trophy = Get-UnicodeChar "1F3C6"
$link = Get-UnicodeChar "1F517"
$star = Get-UnicodeChar "2B50"
$wrench = Get-UnicodeChar "1F6E0" + [char]0xFE0F
$money = Get-UnicodeChar "1F4B0"
$wa = Get-UnicodeChar "1F4AC"
$tel = Get-UnicodeChar "1F4DE"
$middot = Get-UnicodeChar "00B7"
$house = Get-UnicodeChar "1F3E0"
$houses = Get-UnicodeChar "1F3D8"
$store = Get-UnicodeChar "1F3EA"
$school = Get-UnicodeChar "1F3EB"
$factory = Get-UnicodeChar "1F3ED"
$camera = Get-UnicodeChar "1F4F7"
$door = Get-UnicodeChar "1F6AA"
$car = Get-UnicodeChar "1F697"
$chart = Get-UnicodeChar "1F4CA"
$tag = Get-UnicodeChar "1F3F7"
$user = Get-UnicodeChar "1F464"
$clock = Get-UnicodeChar "1F552"
$menu = Get-UnicodeChar "2630"
$crane = Get-UnicodeChar "1F3D7"
$robot = Get-UnicodeChar "1F916"
$sg = [System.Char]::ConvertFromUtf32(0x1F1F8) + [System.Char]::ConvertFromUtf32(0x1F1EC)
$calc = Get-UnicodeChar "1F9AE"
$books = Get-UnicodeChar "1F4DA"
$inbox = Get-UnicodeChar "1F4E5"
$tm = Get-UnicodeChar "2122"

$utf8NoBom = New-Object System.Text.UTF8Encoding $false
$targetFile = "c:\Users\ler\OneDrive - Securevision Pte Ltd\Web2026\index.html"
$content = [System.IO.File]::ReadAllText($targetFile, $utf8NoBom)

# Use [char] sequences to represent mangled icons in body
# 🛡ï¸  -> [char]0xd8[char]0xbc[char]0xef[char]0xb8[char]0x8f (UTF8 bytes)
# PowerShell string literal replacements for common mangled sequences:
$content = $content.Replace("$([char]0x00f0)$([char]0x0178)$([char]0x203a)$([char]0x00a1)$([char]0x00ef)$([char]0x00b8)$([char]0x008f)", $shield)
$content = $content.Replace("$([char]0x00f0)$([char]0x0178)$([char]0x00a0)$([char]0x0086)", $trophy)
$content = $content.Replace("$([char]0x00f0)$([char]0x0178)$([char]0x201d)$([char]0x0094)", $link)
$content = $content.Replace("$([char]0x00e2)$([char]0x00ad)$([char]0x0090)", $star)
$content = $content.Replace("$([char]0x00f0)$([char]0x0178)$([char]0x203a)$([char]0x00a0)$([char]0x00ef)$([char]0x00b8)$([char]0x008f)", $wrench)
$content = $content.Replace("$([char]0x00f0)$([char]0x0178)$([char]0x2019)$([char]0x00b0)", $money)
$content = $content.Replace("$([char]0x00f0)$([char]0x0178)$([char]0x2019)$([char]0x00ac)", $wa)
$content = $content.Replace("$([char]0x00f0)$([char]0x0178)$([char]0x201c)$([char]0x009e)", $tel)
$content = $content.Replace("$([char]0x00e2)$([char]0x201d)$([char]0x00ac)$([char]0x00e2)$([char]0x201d)$([char]0x00ac)", "$([char]0x2500)$([char]0x2500)")
$content = $content.Replace("$([char]0x2713)$([char]0x201c)", $check)

# New Nav
$newNav = @"
<nav class="main-nav">
<div class="nav-container">
  <a href="index.html" class="nav-logo-link" aria-label="Securevision" style="gap: 8px;">
    <img src="/proprietary-assets/securevision-dark-logo.png" alt="Securevision" class="nav-logo-img" style="height: 38px;">
    <span style="font-family:'Montserrat',sans-serif;font-weight:700;font-size:22px;color:#ffffff;letter-spacing:0.5px;">Securevision</span>
  </a>
  <ul class="nav-menu">
    <li class="nav-item"><a href="solutions-hub.html" class="nav-link has-dropdown">Solutions</a>
      <div class="mega-menu mega-menu-solutions">
        <div class="mega-guidance"><div class="mega-col-label">Need Help Choosing?</div><h4>Not Sure Which Solution Fits?</h4><p>Every property type has unique risks.</p><a href="solutions-hub.html" class="view-all-link">$arrow View All Solutions</a><div class="mega-trust"><div class="trust-item">$check Police Licensed L/PS/000267/2023P</div><div class="trust-item">$check 19+ Years $middot 2,000+ Sites</div><div class="trust-item">$check bizSAFE Level 4 $middot BCA Registered</div></div></div>
        <div class="mega-links-col"><div class="mega-col-label">By Property Type</div><a href="residential.html" class="solution-link"><strong>$house Private Homes</strong><small>Landed properties, bungalows, terraces</small></a><a href="condominiums.html" class="solution-link"><strong>$houses Condominiums</strong><small>MCSTs, managed estates, apartments</small></a><a href="commercial.html" class="solution-link"><strong>$store Commercial &amp; Retail</strong><small>Shops, offices, hotels</small></a><a href="institutions.html" class="solution-link"><strong>$school Institutions</strong><small>Schools, healthcare, government</small></a><a href="industrial.html" class="solution-link"><strong>$factory Factories &amp; Logistics</strong><small>Factories, warehouses, logistics</small></a></div>
      </div>
    </li>
    <li class="nav-item"><a href="technology.html" class="nav-link has-dropdown">Technology</a>
      <div class="mega-menu mega-menu-technology">
        <div class="mega-guidance"><div class="mega-col-label">Our Systems</div><h4>Systems &amp; Technology</h4><p>Four subsystem groups on the SECURE$tm framework.</p><a href="technology.html" class="view-all-link">$arrow View All Technology</a><div class="mega-trust"><div class="trust-item">$check SECURE$tm Integration</div><div class="trust-item">$check VESTA$tm Enterprise Platform</div><div class="trust-item">$check GantryGo$tm Vehicle Intercom</div></div></div>
        <div class="mega-links-col"><div class="mega-col-label">By System Type</div><a href="surveillance-systems.html" class="product-link"><span class="pl-dot" style="background:#2b6cb0"></span><div><strong>$camera Surveillance &amp; Detection</strong><small>IP cameras, AI analytics, NVR, alarms</small></div></a><a href="people-access.html" class="product-link"><span class="pl-dot" style="background:#319795"></span><div><strong>$door People Access Systems</strong><small>Biometrics, visitor management, intercom</small></div></a><a href="vehicle-access.html" class="product-link"><span class="pl-dot" style="background:#dd6b20"></span><div><strong>$car Vehicle Access Systems</strong><small>Boom gates, ANPR, GantryGo$tm</small></div></a><a href="platform-integration.html" class="product-link"><span class="pl-dot" style="background:#38a169"></span><div><strong>$chart Platform &amp; Integration</strong><small>VESTA$tm dashboard, multi-site</small></div></a></div>
        <div class="mega-brands-col"><div class="mega-col-label">Brands We Represent</div><div class="brand-grid"><a href="hikvision-singapore.html">Hikvision</a><a href="hanwha-samsung-singapore.html">Hanwha</a><a href="uniview-singapore.html">Uniview</a><a href="milesight-singapore.html">Milesight</a><a href="ajax-alarm-singapore.html">AJAX</a><a href="risco-alarm-singapore.html">RISCO</a><a href="paradox-alarm-singapore.html">Paradox</a><a href="dsc-alarm-singapore.html">DSC</a><a href="zkteco-singapore.html">ZKTeco</a><a href="suprema-singapore.html">Suprema</a><a href="hid-singapore.html">HID</a><a href="entrypass-singapore.html">EntryPass</a><a href="akuvox-singapore.html">Akuvox</a><a href="aiphone-singapore.html">Aiphone</a><a href="faac-singapore.html">FAAC</a><a href="mag-gates-singapore.html">MAG</a></div><a href="brands.html" class="view-all-link" style="margin-top:2px;font-size:12px">$arrow All 20 Brands</a></div>
      </div>
    </li>
    <li class="nav-item"><a href="portfolio.html" class="nav-link has-dropdown">Portfolio</a>
      <div class="mega-menu mega-menu-portfolio">
        <div class="mega-links-col"><div class="mega-col-label">By Property</div><a href="portfolio.html?filter=residential" class="port-link"><span class="port-dot" style="background:#38B000"></span>Private Homes</a><a href="portfolio.html?filter=condominium" class="port-link"><span class="port-dot" style="background:#4361EE"></span>Condominiums</a><a href="portfolio.html?filter=commercial" class="port-link"><span class="port-dot" style="background:#FF6D00"></span>Commercial</a><a href="portfolio.html?filter=institution" class="port-link"><span class="port-dot" style="background:#0056b3"></span>Institutions</a><a href="portfolio.html?filter=industrial" class="port-link"><span class="port-dot" style="background:#7209B7"></span>Industrial</a></div>
        <div class="mega-links-col"><div class="mega-col-label">By System</div><a href="portfolio.html?filter=surveillance" class="port-link"><span class="port-dot" style="background:#2b6cb0"></span>Surveillance</a><a href="portfolio.html?filter=people-access" class="port-link"><span class="port-dot" style="background:#319795"></span>People Access</a><a href="portfolio.html?filter=vehicle-access" class="port-link"><span class="port-dot" style="background:#dd6b20"></span>Vehicle Access</a><a href="portfolio.html?filter=platform" class="port-link"><span class="port-dot" style="background:#38a169"></span>Platform</a><a href="portfolio.html" class="port-link"><span class="port-dot" style="background:#888"></span>All Projects</a></div>
        <div class="mega-links-col"><div class="mega-col-label">Featured</div><a href="portfolio-lviv.html" class="port-featured"><div class="pf-label">Condominium</div><div class="pf-title">The L'viv</div><div class="pf-meta">VESTA$tm + GantryGo$tm</div></a><a href="portfolio-scape.html" class="port-featured"><div class="pf-label">Commercial</div><div class="pf-title">SCAPE</div><div class="pf-meta">200-camera AI system</div></a></div>
      </div>
    </li>
    <li class="nav-item"><a href="resources.html" class="nav-link has-dropdown">Resources</a>
      <div class="mega-menu mega-menu-resources">
        <div class="mega-links-col"><div class="res-col-header"><span>$calc</span><h4>Planning Tools</h4></div><a href="resources.html" class="res-link">Security Calculator <span class="rl-soon">Soon</span></a><a href="resources.html" class="res-link">Risk Assessment <span class="rl-soon">Soon</span></a></div>
        <div class="mega-links-col"><div class="res-col-header"><span>$books</span><h4>Guides</h4></div><a href="resources-cctv-guide.html" class="res-link">CCTV Buyer's Guide</a><a href="resources-access-control.html" class="res-link">Access Control</a></div>
        <div class="mega-links-col"><div class="res-col-header"><span>$wrench</span><h4>Support</h4></div><a href="resources-troubleshoot.html" class="res-link">Troubleshooting</a><a href="resources-faq.html" class="res-link">FAQs</a></div>
        <div class="mega-links-col"><div class="res-col-header"><span>$inbox</span><h4>Downloads</h4></div><a href="resources.html" class="res-link">Spec Sheets <span class="rl-soon">Soon</span></a></div>
      </div>
    </li>
    <li class="nav-item"><a href="insights.html" class="nav-link has-dropdown">Insights</a>
      <div class="mega-menu mega-menu-insights">
        <div class="mega-guidance"><div class="mega-col-label">Latest</div><a href="insights-integrated-systems.html" class="insights-featured"><span class="if-tag">Security Planning</span><div class="if-title">Why Integrated Systems Outperform Standalone</div><div class="if-meta">6 min read</div></a><a href="insights.html" class="view-all-link" style="margin-top:10px">$arrow All Articles</a></div>
        <div class="mega-links-col"><div class="mega-col-label">By Topic</div><a href="insights.html?cat=planning" class="insights-cat"><span class="ic-icon">$crane</span><div class="ic-text"><strong>Security Planning</strong><small>Property Managers</small></div></a><a href="insights.html?cat=technology" class="insights-cat"><span class="ic-icon">$robot</span><div class="ic-text"><strong>Technology</strong><small>AI, ANPR, biometrics</small></div></a><a href="insights.html?cat=industry" class="insights-cat"><span class="ic-icon">$sg</span><div class="ic-text"><strong>SG Industry</strong><small>Regulations, trends</small></div></a></div>
      </div>
    </li>
    <li class="nav-item"><a href="contact.html" class="nav-link has-dropdown">Contact</a>
      <div class="mega-menu mega-menu-contact">
        <div class="mega-links-col">
          <div class="mega-col-label">About Securevision</div>
          <div class="about-preview-card">
            <div class="apc-founder"><div class="apc-avatar">$user</div><div><div class="apc-name">Ler Wee Meng</div><div class="apc-title">Founder $middot NUS Eng + UOL Law</div></div></div>
            <div class="apc-quote">Built on engineering. Backed by law. Since 2006.</div>
          </div>
          <a href="about.html" class="about-link"><span>$user</span> Our Full Story</a>
          <a href="awards-certifications.html" class="about-link"><span>$trophy</span> Awards &amp; Certs</a>
        </div>
        <div class="mega-links-col">
          <div class="mega-col-label">Get In Touch</div>
          <a href="https://wa.me/6593860466" class="contact-ch-link whatsapp-ch"><span class="cch-icon">$wa</span><div class="cch-text"><div class="cch-label">WhatsApp $middot Fastest</div><div class="cch-sub">+65 9386 0466</div></div></a>
          <a href="contact.html#callback" class="contact-ch-link"><span class="cch-icon">$tel</span><div class="cch-text"><div class="cch-label">Request Callback</div><div class="cch-sub">+65 6286 4796</div></div></a>
          <div class="contact-hours">$clock Mon$emdashFri 8:00$emdash17:00 $middot Sat by appt</div>
        </div>
      </div>
    </li>
  </ul>
  <div class="nav-right">
    <button class="search-btn" aria-label="Search">
      <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
        <circle cx="11" cy="11" r="8"></circle>
        <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
      </svg>
    </button>
    <a href="https://wa.me/6593860466" class="nav-cta-btn">WhatsApp Us</a>
    <button class="mobile-toggle" onclick="toggleMobileMenu()">$menu</button>
  </div>
</div>
<div class="mobile-menu" id="mobileMenu">
  <div class="mobile-menu-item" onclick="toggleSubmenu('solSub')">Solutions $tri<div class="mobile-submenu" id="solSub"><a href="solutions-hub.html"><strong>$arrow View All Solutions</strong></a><a href="residential.html">$house Private Homes</a><a href="condominiums.html">$houses Condominiums</a><a href="commercial.html">$store Commercial</a><a href="institutions.html">$school Institutions</a><a href="industrial.html">$factory Industrial</a></div></div>
  <div class="mobile-menu-item" onclick="toggleSubmenu('techSub')">Technology $tri<div class="mobile-submenu" id="techSub"><a href="technology.html"><strong>$arrow View All Technology</strong></a><a href="surveillance-systems.html">$camera Surveillance</a><a href="people-access.html">$door People Access</a><a href="vehicle-access.html">$car Vehicle Access</a><a href="platform-integration.html">$chart Platform</a><a href="brands.html">$tag All 20 Brands</a></div></div>
  <div class="mobile-menu-item" onclick="toggleSubmenu('portSub')">Portfolio $tri<div class="mobile-submenu" id="portSub"><a href="portfolio.html"><strong>$arrow All Projects</strong></a><a href="portfolio-lviv.html">The L'viv</a><a href="portfolio-scape.html">SCAPE</a></div></div>
  <div class="mobile-menu-item" onclick="toggleSubmenu('resSub')">Resources $tri<div class="mobile-submenu" id="resSub"><a href="resources.html"><strong>$arrow All Resources</strong></a><a href="resources-cctv-guide.html">CCTV Guide</a><a href="resources-troubleshoot.html">Troubleshooting</a><a href="resources-faq.html">FAQs</a></div></div>
  <div class="mobile-menu-item" onclick="toggleSubmenu('insSub')">Insights $tri<div class="mobile-submenu" id="insSub"><a href="insights.html"><strong>$arrow All Articles</strong></a><a href="insights.html?cat=planning">Security Planning</a><a href="insights.html?cat=technology">Technology</a></div></div>
  <div class="mobile-menu-item" onclick="toggleSubmenu('conSub')">Contact $tri<div class="mobile-submenu" id="conSub"><a href="about.html"><strong>$user About Us</strong></a><a href="https://wa.me/6593860466"><strong>$wa WhatsApp</strong></a><a href="contact.html">Office &amp; Hours</a></div></div>
</div>
</nav>
"@

$newCssHeader = @"
<style id="sv-nav-css">
.main-nav{position:fixed;top:0;left:0;right:0;z-index:1000;background:rgba(14,26,43,.97);backdrop-filter:blur(8px);border-bottom:1px solid rgba(255,255,255,.08);height:68px;font-family:'Inter',sans-serif}
.nav-container{max-width:1200px;margin:0 auto;padding:0 24px;display:flex;align-items:center;justify-content:space-between;height:68px;position:relative}
.nav-logo-link{display:flex;align-items:center;text-decoration:none}
.nav-logo-img{height:40px;width:auto;display:block}
.nav-menu{display:flex;list-style:none;gap:2px;margin:0;padding:0;align-items:center}
.nav-item{position:static}
.nav-link{color:rgba(255,255,255,.8);text-decoration:none;font-size:14px;font-weight:500;display:flex;align-items:center;height:68px;padding:0 13px;white-space:nowrap;transition:.2s}
.nav-link:hover,.nav-link.active{color:#fff}
.has-dropdown::after{content:" $tri";font-size:9px;opacity:.5;margin-left:4px}
.nav-right{display:flex;align-items:center;gap:16px}
.nav-cta-btn{background:#0056b3;color:#fff;padding:9px 16px;border-radius:6px;font-family:'Montserrat',sans-serif;font-size:13px;font-weight:600;text-decoration:none;white-space:nowrap;transition:.2s}
.nav-cta-btn:hover{background:#003d82}
.search-btn{background:none;border:none;color:rgba(255,255,255,.8);cursor:pointer;padding:8px;display:flex;align-items:center;transition:.2s}
.search-btn:hover{color:#fff}
.mobile-toggle{display:none;background:none;border:none;color:#fff;font-size:22px;cursor:pointer;padding:8px}
.mega-menu{position:absolute;top:100%;left:50%;transform:translateX(-50%);background:#fff;border:1px solid #E8EAED;border-radius:12px;box-shadow:0 12px 40px rgba(0,0,0,.15);padding:24px;display:none;z-index:200;width:max-content;max-width:calc(100vw - 48px);overflow-x:auto}
.nav-item:hover>.mega-menu{display:grid;opacity:1}
.mega-menu-solutions{width:820px;grid-template-columns:1fr 1.6fr;gap:24px}
.mega-menu-technology{width:960px;grid-template-columns:1fr 1.3fr 1.3fr;gap:0}
.mega-menu-technology .mega-guidance{padding-right:20px;border-right:1px solid #E8EAED}
.mega-menu-technology .mega-links-col{padding:0 20px;border-right:1px solid #E8EAED}
.mega-brands-col{padding-left:20px}
.mega-menu-portfolio{width:820px;grid-template-columns:1fr 1fr 1fr;gap:20px}
.mega-menu-resources{width:880px;grid-template-columns:repeat(4,1fr);gap:16px}
.mega-menu-insights{width:720px;grid-template-columns:1fr 1.6fr;gap:24px}
.mega-menu-contact{width:640px;grid-template-columns:1fr 1fr;gap:24px}
@media (max-width: 1200px) {
  .mega-menu{left: auto; right: 24px; transform: none; width: auto; max-width: calc(100vw - 48px);}
  .mega-menu-technology{width: 880px; grid-template-columns: 1fr 1fr 1fr;}
}
@media (max-width: 1024px) {
  .mega-menu{right: 12px; max-width: calc(100vw - 24px); padding: 20px;}
  .mega-menu-solutions{width:700px;grid-template-columns:1fr 1fr}
  .mega-menu-technology{width:700px;grid-template-columns:1fr 1.2fr}
  .mega-brands-col{display:none}
  .mega-menu-portfolio{width:700px;grid-template-columns:1fr 1fr 1fr;gap:12px}
  .mega-menu-resources{width:700px;grid-template-columns:repeat(2,1fr)}
  .mega-menu-contact{width:600px}
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
.brand-grid{display:grid;grid-template-columns:1fr 1fr;gap:6px;margin-bottom:12px}
.brand-grid a{font-size:12px;color:#5F6368;text-decoration:none;padding:4px 0;transition:.15s;display:block}
.brand-grid a:hover{color:#0056b3}
.port-link{display:flex;align-items:center;gap:7px;padding:6px 8px;border-radius:5px;text-decoration:none;color:#1B1F23;font-size:13px;transition:.15s}
.port-link:hover{background:#F8F9FA;color:#0056b3}
.port-dot{width:7px;height:7px;border-radius:50%;flex-shrink:0}
.port-featured{display:block;padding:8px 10px;border-radius:7px;text-decoration:none;border:1px solid #E8EAED;margin-bottom:6px;transition:.15s}
.port-featured:hover{border-color:#0056b3;background:#F8F9FA}
.pf-label{font-size:10px;font-weight:700;text-transform:uppercase;letter-spacing:.5px;color:#8a8f98}
.pf-title{font-size:13px;font-weight:700;color:#1B1F23}
.pf-meta{font-size:11px;color:#8a8f98}
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
.about-link{display:flex;align-items:center;gap:7px;padding:7px 8px;border-radius:5px;text-decoration:none;color:#1B1F23;font-size:12px;transition:.15s}
.about-link:hover{background:#F8F9FA;color:#0056b3}
.contact-ch-link{display:flex;align-items:center;gap:9px;padding:9px 11px;border-radius:7px;text-decoration:none;color:#1B1F23;border:1px solid #E8EAED;transition:.15s;margin-bottom:8px}
.contact-ch-link:hover{border-color:#0056b3}
.whatsapp-ch{background:#f0faf4;border-color:#c6e6d1}
.cch-icon{font-size:18px;flex-shrink:0}
.cch-label{font-family:'Montserrat',sans-serif;font-size:11px;font-weight:700;color:#1B1F23}
.cch-sub{font-size:10px;color:#8a8f98}
.contact-hours{font-size:10px;color:#8a8f98;padding-top:8px;border-top:1px solid #E8EAED;line-height:1.6;margin-top:8px}
.mobile-menu{display:none;background:#0E1A2B;padding:10px 20px 20px}
.mobile-menu.active{display:block}
.mobile-menu-item{display:block;padding:12px 0;color:rgba(255,255,255,.85);font-size:14px;font-weight:500;border-bottom:1px solid rgba(255,255,255,.08);cursor:pointer;text-decoration:none}
a.mobile-menu-item:hover{color:#fff}
.mobile-submenu{display:none;padding-left:14px;margin:6px 0 2px}
.mobile-submenu a{display:block;padding:7px 0;color:rgba(255,255,255,.6);text-decoration:none;font-size:13px}
.mobile-submenu a:hover{color:#fff}
@media(max-width:992px){
  .nav-menu{display:none}
  .mobile-toggle{display:block}
  .nav-logo-img{height:32px}
}
</style>
"@

# Surgical replacements for mangled icons in body using bytes for safety
$content = $content.Replace("$([char]0x00f0)$([char]0x0178)$([char]0x203a)$([char]0x00a1)$([char]0x00ef)$([char]0x00b8)$([char]0x008f)", $shield)
$content = $content.Replace("$([char]0x00f0)$([char]0x0178)$([char]0x00a0)$([char]0x0086)", $trophy)
$content = $content.Replace("$([char]0x00f0)$([char]0x0178)$([char]0x201d)$([char]0x0094)", $link)
$content = $content.Replace("$([char]0x00e2)$([char]0x00ad)$([char]0x0090)", $star)
$content = $content.Replace("$([char]0x00f0)$([char]0x0178)$([char]0x203a)$([char]0x00a0)$([char]0x00ef)$([char]0x00b8)$([char]0x008f)", $wrench)
$content = $content.Replace("$([char]0x00f0)$([char]0x0178)$([char]0x2019)$([char]0x00b0)", $money)
$content = $content.Replace("$([char]0x00f0)$([char]0x0178)$([char]0x2019)$([char]0x00ac)", $wa)
$content = $content.Replace("$([char]0x00f0)$([char]0x0178)$([char]0x201c)$([char]0x009e)", $tel)
$content = $content.Replace("$([char]0x00e2)$([char]0x201d)$([char]0x00ac)$([char]0x00e2)$([char]0x201d)$([char]0x00ac)", "$([char]0x2500)$([char]0x2500)")
$content = $content.Replace("$([char]0x00e2)$([char]0x201e)$([char]0x00a2)", $tm)

# Replace OLD style block in head
if ($content -match '(?s)<style>.*?</style>') {
    $content = [regex]::Replace($content, '(?s)<style>.*?</style>', $newCssHeader)
}

# Replace Nav
if ($content -match '(?s)<nav class="main-nav">.*?</nav>') {
    $content = [regex]::Replace($content, '(?s)<nav class="main-nav">.*?</nav>', $newNav)
} elseif ($content -match '<body.*?>') {
    $content = [regex]::Replace($content, '(<body.*?>)', "`$1`n$newNav")
}

[System.IO.File]::WriteAllText($targetFile, $content, $utf8NoBom)
Write-Host "Homepage index.html cleaned and fixed."
