$directoryPath = "c:\Users\Ler Wee Meng\OneDrive - Securevision Pte Ltd\Web2026"

$metaDescription = '<meta name="description" content="Securevision provides integrated security systems engineered for Singapore''s homes, condominiums, and businesses. Authorised installers of 20 global brands.">'

$whatsappButton = @"
<!-- Floating WhatsApp Button -->
<a href="https://wa.me/6593860466" class="floating-wa" target="_blank" rel="noopener" aria-label="Chat with Securevision on WhatsApp">
    <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor">
        <path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"/>
    </svg>
</a>
"@

$cssAdditions = @"
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
"@

$socialFooterLinksBlock = @"
<div style="display:flex;gap:8px;margin-top:12px">
<a href="https://www.facebook.com/securevision" target="_blank" rel="noopener" aria-label="Facebook" style="width:32px;height:32px;background:rgba(255,255,255,.08);border:1px solid rgba(255,255,255,.1);border-radius:6px;display:flex;align-items:center;justify-content:center;color:rgba(255,255,255,.6);text-decoration:none"><svg width="14" height="14" viewBox="0 0 24 24" fill="currentColor"><path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"/></svg></a>
<a href="https://www.linkedin.com/company/securevision-pte-ltd" target="_blank" rel="noopener" aria-label="LinkedIn" style="width:32px;height:32px;background:rgba(255,255,255,.08);border:1px solid rgba(255,255,255,.1);border-radius:6px;display:flex;align-items:center;justify-content:center;color:rgba(255,255,255,.6);text-decoration:none"><svg width="14" height="14" viewBox="0 0 24 24" fill="currentColor"><path d="M16 8a6 6 0 0 1 6 6v7h-4v-7a2 2 0 0 0-2-2 2 2 0 0 0-2 2v7h-4v-7a6 6 0 0 1 6-6z"/><rect x="2" y="9" width="4" height="12"/><circle cx="4" cy="4" r="2"/></svg></a>
<a href="https://wa.me/6593860466" target="_blank" rel="noopener" aria-label="WhatsApp" style="width:32px;height:32px;background:rgba(255,255,255,.08);border:1px solid rgba(255,255,255,.1);border-radius:6px;display:flex;align-items:center;justify-content:center;color:rgba(255,255,255,.6);text-decoration:none"><svg width="14" height="14" viewBox="0 0 24 24" fill="currentColor"><path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"/></svg></a>
</div>
"@

$jsonLd = @"
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "LocalBusiness",
  "name": "Securevision Pte Ltd",
  "image": "https://www.securevision.com.sg/images/securevision-logo-light.svg",
  "@id": "https://www.securevision.com.sg",
  "url": "https://www.securevision.com.sg",
  "telephone": "+65 6286 4796",
  "email": "info@securevision.com.sg",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "Blk 1013 Geylang East Ave 3 #02-142",
    "addressLocality": "Singapore",
    "postalCode": "389728",
    "addressCountry": "SG"
  },
  "geo": {
    "@type": "GeoCoordinates",
    "latitude": 1.3182, 
    "longitude": 103.8893
  },
  "openingHoursSpecification": {
    "@type": "OpeningHoursSpecification",
    "dayOfWeek": [
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
      "Friday"
    ],
    "opens": "08:00",
    "closes": "17:00"
  },
  "sameAs": [
    "https://www.facebook.com/securevision",
    "https://www.linkedin.com/company/securevision-pte-ltd"
  ]
}
</script>
"@

$files = Get-ChildItem -Path $directoryPath -Filter *.html

$modifiedCount = 0

foreach ($file in $files) {
    $content = Get-Content -Path $file.FullName -Raw
    $modified = $false

    # 1. Add Meta Description
    if (-not $content.Contains('<meta name="description"')) {
        $content = $content -replace '(?s)(<title>.*?</title>)', "`$1`n    $metaDescription"
        $modified = $true
    }

    # 2. Add Floating WhatsApp Button & CSS
    if (-not $content.Contains('class="floating-wa"')) {
        $content = $content -replace '(</body>)', "$whatsappButton`n`$1"
        $content = $content -replace '(</style>)', "$cssAdditions`n    `$1"
        $modified = $true
    }

    # 3. Add Social Footer Links
    if (-not $content.Contains('aria-label="Facebook"')) {
        $content = $content -replace '(<a href="mailto:info@securevision\.com\.sg"[^>]*>info@securevision\.com\.sg</a>\s*</p>)', "`$1`n                    $socialFooterLinksBlock"
        $modified = $true
    }

    # 4. Add JSON-LD to specific files
    if (($file.Name -eq 'index.html' -or $file.Name -eq 'contact.html') -and -not $content.Contains('application/ld+json')) {
        $content = $content -replace '(</head>)', "$jsonLd`n`$1"
        $modified = $true
    }

    if ($modified) {
        Set-Content -Path $file.FullName -Value $content -Encoding UTF8
        $modifiedCount++
        Write-Host "Updated: $($file.Name)"
    }
}

Write-Host "`nTask Complete. Modified $modifiedCount files."
