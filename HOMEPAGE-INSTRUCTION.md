# SECUREVISION — HOMEPAGE PAGE INSTRUCTION
## File: index.html
## Use with: GLOBAL-INSTRUCTION.md (paste that document above this one)

---

## PAGE IDENTITY

```
Page:      Homepage
File:      index.html
URL:       https://www.securevision.com.sg/
Template:  CLARITY Framework (13 sections)
Accent:    #0056b3 (Primary Blue)
```

## SEO

```html
<title>Securevision | Integrated Security Systems Singapore</title>
<meta name="description" content="Singapore's integrated security systems specialist since 2006. CCTV, alarm, access control, vehicle barriers & AI platforms. Police Licensed L/PS/000267/2023P. WhatsApp +65 9386 0466.">
<link rel="canonical" href="https://www.securevision.com.sg/">
<meta property="og:title" content="Securevision | Integrated Security Systems Singapore">
<meta property="og:description" content="Singapore's integrated security systems specialist since 2006. CCTV, alarm, access control, vehicle barriers & AI platforms. Police Licensed L/PS/000267/2023P.">
<meta property="og:url" content="https://www.securevision.com.sg/">
```

Include LocalBusiness JSON-LD schema from Global Instruction Section 14.

---

## NAVIGATION (from Global Instruction — include in full)

Build the complete 7-item navigation exactly as specified in Global Instruction Section 7.

**Active state:** `Home` link gets `class="nav-link active"`

**All 7 mega/mini menus must be included:**

### Solutions Mega Menu (2-col, 820px)
```
LEFT COLUMN — "Need Help Choosing?"
  Heading: "Not Sure Which Solution Fits?"
  Text: "Every property type has unique risks. We'll guide you to the right fit."
  CTA link: → View All Solutions  →  solutions-hub.html
  Trust items:
    ✓ Police Licensed L/PS/000267/2023P
    ✓ 19+ Years · 2,000+ Sites
    ✓ bizSAFE Level 4 · BCA Registered

RIGHT COLUMN — "By Property Type"
  🏠 Private Homes → residential.html
     Landed properties, bungalows, terraces, semi-Ds
  🏘️ Condominiums & Apartments → condominiums.html
     MCSTs, managed estates, apartment buildings
  🏪 Commercial & Retail → commercial.html
     Shops, offices, hotels, commercial buildings
  🏫 Institutions & Critical Facilities → institutions.html
     Schools, churches, healthcare, government
  🏭 Industrial & Logistics → industrial.html
     Factories, warehouses, manufacturing, logistics
```

### Technology Mega Menu (3-col, 980px)
```
COL 1 — "Our Systems"
  Heading: "Security Systems & Technology"
  Text: "Four subsystem groups — one cohesive infrastructure built on the SECURE™ framework."
  CTA link: → View All Technology  →  technology.html
  Items:
    ✓ SECURE™ Integration Methodology
    ✓ VESTA™ Enterprise Platform
    ✓ GantryGo™ Vehicle Intercom

COL 2 — "By System Type"
  🔵 📹 Surveillance & Detection → surveillance-systems.html
     IP cameras, AI analytics, NVR, alarms
  🟢 🚪 People Access Systems → people-access.html
     Turnstiles, biometrics, visitor management, intercom
  🟠 🚗 Vehicle Access Systems → vehicle-access.html
     Boom gates, ANPR, road blockers, GantryGo™
  🟢 📊 Platform & Integration → platform-integration.html
     VESTA™ dashboard, multi-site, API connectors

COL 3 — "Brands We Install"
  Surveillance: Hikvision · Hanwha · Uniview · Milesight
  Alarm:        AJAX · RISCO · Paradox · DSC · GE Caddx
  Access:       ZKTeco · Suprema · HID · EntryPass · MicroEngine
  Intercom:     Akuvox · Aiphone · Kocom
  Gates:        FAAC · MAG · Dormer
  Bottom link:  → All 20 Brands  →  brands.html

  Each brand name is a link to its brand page:
    hikvision-singapore.html, ajax-alarm-singapore.html,
    zkteco-singapore.html, akuvox-singapore.html,
    faac-singapore.html, [etc — all 20]
```

### Portfolio Mega Menu (3-col, 860px)
```
COL 1 — "By Property Type"
  🟢 Private Homes      → portfolio.html?filter=residential
  🔵 Condominiums       → portfolio.html?filter=condominium
  🟠 Commercial         → portfolio.html?filter=commercial
  🔵 Institutions       → portfolio.html?filter=institution
  🟣 Industrial         → portfolio.html?filter=industrial

COL 2 — "By System Type"
  📹 Surveillance       → portfolio.html?filter=surveillance
  🚪 People Access      → portfolio.html?filter=people-access
  🚗 Vehicle Access     → portfolio.html?filter=vehicle-access
  📊 Platform           → portfolio.html?filter=platform
  View All Projects     → portfolio.html

COL 3 — "Featured Projects"
  [Condominium] The L'viv
    Buona Vista · VESTA™ + GantryGo™  → portfolio-lviv.html
  [Commercial] SCAPE
    Orchard · 200-camera AI system  → portfolio-scape.html
  [Institution] STA Vehicle Inspection
    Multi-site · 99.7% uptime  → portfolio-sta.html
  [Industrial] Cyrus Tech
    Jurong · AI perimeter, –85% callouts  → portfolio-cyrus.html
```

### Resources Mega Menu (4-col, 900px)
```
COL 1 — 🧮 Planning Tools
  Security System Calculator [Soon]  → resources.html#calculator-notify
  Property Risk Assessment [Soon]    → resources.html
  Camera Coverage Planner [Soon]     → resources.html
  Budget Estimator [Soon]            → resources.html

COL 2 — 📚 Learning & Guides
  CCTV Buyer's Guide                 → resources-cctv-guide.html
  Access Control Explained           → resources-access-control.html
  How ANPR Works                     → resources-anpr.html
  Integrated vs Standalone           → resources-integrated-systems.html

COL 3 — 🔧 Support
  Troubleshooting Checklists         → resources-troubleshoot.html
  Maintenance Schedules              → resources-maintenance.html
  System FAQs                        → resources-faq.html
  Contact Support                    → contact.html

COL 4 — 📥 Downloads
  Spec Sheets [Soon]
  Wiring Guides [Soon]
  Proposal Templates [Soon]
  System Diagrams [Soon]
  (all Soon items link to resources.html)
```

### Insights Mega Menu (2-col, 780px)
```
LEFT COLUMN — "Latest Articles"
  Featured 1:
    Tag: Security Planning
    Title: Why Integrated Systems Outperform Standalone Devices
    Meta: 6 min read · March 2026
    → insights-integrated-systems.html
  Featured 2:
    Tag: Case Study
    Title: How SCAPE Cut Incident Response Time by 87%
    Meta: 4 min read · February 2026
    → portfolio-scape.html
  Link: → All Articles  →  insights.html

RIGHT COLUMN — "Browse by Topic"
  🏗️ Security Planning
     Guides for property managers & owners  → insights.html?cat=planning
  🤖 Technology Deep-Dives
     AI, ANPR, biometrics, integration  → insights.html?cat=technology
  📊 Case Studies
     Real projects, real outcomes  → insights.html?cat=casestudy
  🇸🇬 Singapore Industry News
     Regulations, trends, SPF updates  → insights.html?cat=industry
```

### About Mini-Dropdown (340px, single column)
```
Eyebrow: "About Securevision"
Founder preview card:
  Avatar: placeholder circle with 👤 icon
  Name: Ler Wee Meng
  Title: Founder · NUS Engineering + UOL Law
  Quote: "Built on engineering. Backed by law. Serving Singapore since 2006."

Links:
  👤 Founder's Story     → about.html#founder
  🛡️ Credentials & Licences → about.html
  🏷️ Brand Partnerships  → about.html
  🏆 Awards & Certifications → awards-certifications.html
```

### Contact Mini-Dropdown (300px, single column)
```
Eyebrow: "Get In Touch"
3 channel cards:
  💬 WhatsApp — Fastest (green highlight card)
     +65 9386 0466 · Same-day response  → https://wa.me/6593860466
  📋 Contact Form
     Detailed enquiries · 1 business day  → contact.html#contact-form
  📞 Request Callback
     +65 6286 4796 · Scheduled  → contact.html#callback

Footer text:
  🕐 Mon–Fri 8:00–17:00 · Sat by appt
  📍 Geylang East Ave 3 (opp Paya Lebar MRT)
```

### Mobile Menu (hamburger, all 7 collapsible submenus)
```
Home → index.html
Solutions ▾
  → View All Solutions (solutions-hub.html)
  🏠 Private Homes (residential.html)
  🏘️ Condominiums (condominiums.html)
  🏪 Commercial & Retail (commercial.html)
  🏫 Institutions (institutions.html)
  🏭 Industrial (industrial.html)
Technology ▾
  → View All Technology (technology.html)
  📹 Surveillance & Detection (surveillance-systems.html)
  🚪 People Access (people-access.html)
  🚗 Vehicle Access (vehicle-access.html)
  📊 Platform & Integration (platform-integration.html)
  🏷️ All 20 Brands (brands.html)
Portfolio ▾
  → All Projects (portfolio.html)
  The L'viv — Condominium (portfolio-lviv.html)
  SCAPE — Commercial (portfolio-scape.html)
  STA — Institution (portfolio-sta.html)
  Cyrus Tech — Industrial (portfolio-cyrus.html)
Resources ▾
  → All Resources (resources.html)
  🧮 Security Calculator (resources.html)
  📚 CCTV Buyer's Guide (resources-cctv-guide.html)
  🔧 Troubleshooting (resources-troubleshoot.html)
  ❓ FAQs (resources-faq.html)
Insights ▾
  → All Articles (insights.html)
  Security Planning (insights.html?cat=planning)
  Technology (insights.html?cat=technology)
  Case Studies (insights.html?cat=casestudy)
About ▾
  → About Securevision (about.html)
  👤 Founder's Story (about.html#founder)
  🛡️ Credentials & Licences (about.html)
  🏆 Awards (awards-certifications.html)
Contact ▾
  💬 WhatsApp +65 9386 0466 (https://wa.me/6593860466)
  📋 Contact Form (contact.html#contact-form)
  📞 Request Callback (contact.html#callback)
  📍 Office & Hours (contact.html)
```

---

## PAGE SECTIONS (13 total — CLARITY Framework)

Build all 13 sections in this exact order with the content specified below.

---

### SECTION 1 — HERO
```
Background:   Dark gradient (--bg-dark → --bg-dark-mid) with blue radial glow
Layout:       Centred, full-width
Padding:      calc(68px + 80px) top, 80px bottom

Eyebrow:      "Singapore's Integrated Security Specialists"
              [colour: rgba(255,255,255,0.5)]

H1:           "Stop Guessing.
               Start Seeing."
              ["Start Seeing." in em tag — colour #5b9ee1]

Lead text:    "Old security systems tell you something is wrong. We show you
               exactly what is happening — and give you the control to act on it."

Quick-nav pills row (6 pills, horizontal, wrap on mobile):
  🏠 Solutions by Property  → solutions-hub.html
  📹 Products & Systems     → technology.html
  🏷️ 20 Brands              → brands.html
  📂 Our Portfolio           → portfolio.html
  📚 Resources               → resources.html
  👤 About Us                → about.html

Button group (3 buttons):
  [Primary]   Book Smart Assessment   → contact.html
  [Outline white] Explore Solutions   → solutions-hub.html
  [WhatsApp]  💬 WhatsApp Us          → https://wa.me/6593860466

Trust note (small, below buttons):
  "Police Licensed L/PS/000267/2023P · [YEARS] Years Protecting Singapore · 2,000+ Sites"
  [YEARS calculated dynamically: new Date().getFullYear() - 2006]
```

---

### SECTION 2 — TRUST BAR
```
Background:   White (#FFFFFF)
Border:       1px bottom border in --border
Padding:      20px top/bottom

Layout:       Horizontal flex row, space-between, wraps on mobile

Left label:   "Vetted & Certified:"  [uppercase, small, --text-light]

Items (● prefix each):
  ● Police Licensed L/PS/000267/2023P
  ● bizSAFE Level 4
  ● BCA Registered
  ● [YEARS] Years in Operation  [dynamic]
  ● 2,000+ Sites Secured

Mobile:       Stack vertically, label at top
```

---

### SECTION 3 — LOGIC (The Problem)
```
Background:   --bg-light (#F8F9FA)
Layout:       Centred, text-align centre

Eyebrow:      "The Problem"
H2:           "Why Standard Security Leaves You Blind"

Intro text (centred, max-width 750px, --text-gray):
  Para 1: "Most security systems are designed to detect problems — not solve them.
           They beep when something moves. But they can't tell you if it's a
           threat or a delivery driver at the wrong gate. They record footage —
           but you have to scrub through hours to find what matters."
  Para 2: "We built Securevision to fix that gap."  [bold]

3-column card grid:
  Card 1:
    H3: 🎯 See & Unify
    Text: "AI-powered analytics filter false alarms and alert you only when
           there's a real security event — saving time, stress, and unnecessary
           guard callouts."

  Card 2:
    H3: 🔐 Control & Entry
    Text: "One unified platform manages all your gates, doors, intercoms, and
           cameras. No more juggling five different apps or chasing contractors
           for access."

  Card 3:
    H3: ⚡ Respond & Engage
    Text: "Connect security staff, residents, and management through intelligent
           mobile platforms. Everyone knows what's happening, in real time."
```

---

### SECTION 4 — ASSURANCE (Corporate Trust)
```
Background:   White (#FFFFFF)
Layout:       2-column grid (1fr 1fr), gap 72px, align items centre

LEFT COLUMN — Credentials card (--bg-light background, no border):
  H3: "Built on Engineering, Backed by Law"
  Para 1: "Securevision isn't run by salespeople. Our founder, Ler Wee Meng,
           holds degrees in Engineering (NUS) and Law (UOL), with 35+ years
           of hands-on industry experience."
  Para 2: "We don't just install equipment. We architect systems that work
           the way you actually live and operate."
  2×2 badge grid:
    [SPF]       Police Licensed
    [bizSAFE 4] Workplace Safety
    [BCA]       Registered Contractor
    [Est. 2006] 19+ Years
  Note: Each badge is a placeholder box for trustmark logo image
        img src="/images/badges/badge-spf.png" etc.
        Show text fallback if image missing

RIGHT COLUMN — Story text:
  Eyebrow: "Our Foundation"
  H2: "Why We Built the SECURE™ Framework"
  Para 1: "In 2006, our founder noticed a fatal flaw: security systems could
           detect problems but couldn't show you what was wrong."
  Para 2: "An alarm goes off. You get a call. But no one can tell you if it's
           a break-in, a system glitch, or a delivery driver at the wrong gate."
  Para 3: "That's the 'Blind Alarm Problem.' We started Securevision to solve
           it. Today, we combine AI-powered visual intelligence with unified
           control platforms — so you always see what's happening and can
           act on it instantly."
  Arrow link: "Read Our Founder's Story →"  → about.html
```

---

### SECTION 5 — RELEVANCE (Solutions by Sector)
```
Background:   --bg-light (#F8F9FA)
Layout:       Centred heading, then 2×2 card grid

Eyebrow:      "Solutions by Property Type"  [centred]
H2:           "We've Secured Every Type of Site in Singapore"

2×2 grid of clickable cards (each is an <a> tag):

  Card 1 → condominiums.html
    H3: 🏢 Condominiums & Estates
    Bold subtitle: Resident Management · GantryGo™ · MCST Compliance
    Text: "450+ residents at The L'viv use our VESTA™ app for seamless visitor
           management and self-service gate access."
    Footer: "View Condominium Solutions →"

  Card 2 → commercial.html
    H3: 🏪 Offices & Retail
    Bold subtitle: AI Surveillance · Access Control · Loss Prevention
    Text: "200-camera AI system at SCAPE monitors crowds and delivers real-time
           safety intelligence for management."
    Footer: "View Commercial Solutions →"

  Card 3 → industrial.html
    H3: 🏭 Industrial & Logistics
    Bold subtitle: Perimeter Security · ANPR · Hazardous Zone Control
    Text: "Perimeter AI detection at Cyrus Tech eliminated false alarms and
           cut guard callouts by 85%."
    Footer: "View Industrial Solutions →"

  Card 4 → residential.html
    H3: 🏠 Private Homes
    Bold subtitle: Smart Gates · CCTV · Mobile Control · Intercom
    Text: "Total mobile control for landed properties — unlock gates, view
           cameras, and manage access from anywhere."
    Footer: "View Residential Solutions →"

Centred CTA below grid:
  [Primary button] "View All Solutions →"  → solutions-hub.html
```

---

### SECTION 6 — TECHNOLOGY (Systems & Technology showcase)
```
Background:   White (#FFFFFF)
Layout:       Centred header, then 2-col intro grid, then 4-col subsystem cards

Section header (centred):
  Eyebrow: "Systems & Technology"
  H2: "Four Integrated Subsystem Groups"
  Lead: "Securevision doesn't sell individual products — we engineer complete,
         layered security infrastructure using the SECURE™ framework. Every
         subsystem connects to every other."

2-column intro grid (1fr 1fr), gap 56px:
  LEFT — intro text:
    H3: "Systems, Not Just Products"
    Para 1: "Most vendors sell you cameras, access readers, or boom gates in
             isolation. Securevision designs the entire system architecture
             first — then specifies hardware that integrates natively across
             all four subsystem groups."
    Para 2: "The result: your cameras trigger access events, your ANPR opens
             barriers automatically, and your security dashboard shows
             everything in one screen — in real time."
    Para 3: "This is the SECURE™ difference."
    Button: "Explore All Systems →"  → technology.html  [primary button]

  RIGHT — SECURE™ dark callout card:
    Dark gradient card (--bg-dark → --bg-dark-mid)
    Small label: "Securevision Methodology"
    Large text: "SECURE™"  [letter-spacing 4px, 40px, bold]
    Subtitle: "Site-Engineered Controls for Unified Risk Elimination"
    6 step rows (letter + word + description):
      S — Survey & Site Assessment
          Risk mapping, coverage planning, site walkthrough
      E — Engineer the System Design
          Custom architecture for your property and risk profile
      C — Configure & Commission
          Installation, integration testing, staff handover
      U — Unify All Subsystems
          CCTV, access, barriers, alarms — one coherent system
      R — Review & Optimise
          Quarterly health checks, firmware, coverage audits
      E — Evolve & Scale
          Add sites, upgrade tech, expand as you grow

4-column subsystem card grid (below the 2-col intro):
  Card 1 — Surveillance (border-top: #2b6cb0)
    Icon: 📹
    H3: Surveillance & Detection
    Text: "IP cameras, AI analytics, 4K resolution, thermal imaging,
           NVR infrastructure, and VMS platform."
    Link: "Explore →"  → surveillance-systems.html
    Link colour: #2b6cb0

  Card 2 — People Access (border-top: #319795)
    Icon: 🚪
    H3: People Access Systems
    Text: "Turnstiles, biometric readers, electric locks, visitor management,
           and video intercom stations."
    Link: "Explore →"  → people-access.html
    Link colour: #319795

  Card 3 — Vehicle Access (border-top: #dd6b20)
    Icon: 🚗
    H3: Vehicle Access Systems
    Text: "Boom gates, ANPR, UHF long-range, road blockers, GantryGo™ intercom,
           and parking management."
    Link: "Explore →"  → vehicle-access.html
    Link colour: #dd6b20

  Card 4 — Platform (border-top: #38a169)
    Icon: 📊
    H3: Platform & Integration
    Text: "VESTA™ unified dashboard, multi-site management, incident management,
           and API integrations."
    Link: "Explore →"  → platform-integration.html
    Link colour: #38a169

CTA row (centred, below cards):
  [Primary] "View Full Technology Range"  → technology.html
  [WhatsApp] "💬 Ask a Product Specialist"  → https://wa.me/6593860466
```

---

### SECTION 7 — PROCESS (4-Stage Framework)
```
Background:   --bg-light (#F8F9FA)
Layout:       Centred heading, then 4-column step row

Eyebrow:      "How We Work"  [centred]
H2:           "Our Proven 4-Stage Implementation Framework"
Lead text:    "We don't install equipment and walk away. We follow an
               engineering-led process refined over [YEARS] years and 2,000+
               projects — so your system works from Day 1 and keeps working."
              [[YEARS] = dynamic calculation]

4-column step grid:
  Step 1:
    Circle: "1"  [primary blue, 60px diameter]
    Bold: "Assessment"
    Text: "We conduct a Threat & Vulnerability Assessment — not a sales pitch."

  Step 2:
    Circle: "2"
    Bold: "Architecture"
    Text: "Custom system design using our SECURE™ Integration Framework."

  Step 3:
    Circle: "3"
    Bold: "Implementation"
    Text: "Phased rollout with minimal disruption to your operations."

  Step 4:
    Circle: "4"
    Bold: "Support"
    Text: "24/7 remote diagnostics and maintenance — not 'call us if it breaks.'"
```

---

### SECTION 8 — TECH FIT (SECURE™ Framework Deep Dive)
```
Background:   Dark gradient (--bg-dark → --bg-dark-mid)
Layout:       Centred heading, then dark panel with 2-col split

Eyebrow:      "Our Technology"  [colour: rgba(255,255,255,0.5), centred]
H2:           "The SECURE™ Integration Framework"  [white, centred]
Lead text:    "Most security companies sell you products. We build you a unified
               operating system that connects every camera, sensor, gate, and
               access point into one intelligent platform."
              [centred, max-width 700px, rgba(255,255,255,0.8)]

Dark panel (semi-transparent, rounded 20px, border rgba(255,255,255,0.1)):
  2-column split, gap 48px:

  LEFT — SYSTEMS (GantryGo™)  [border-right: rgba(255,255,255,0.12)]
    H3: "SYSTEMS (GantryGo™)"  [colour: #5b9ee1]
    Bold: "SEE · CONTROL · UNIFY"
    Checklist (no bullets, ✓ prefix):
      ✓ AI-powered video analytics filter false alarms
      ✓ ANPR-integrated boom gates — no manual intervention
      ✓ Unified dashboards replace fragmented systems
      ✓ Cloud-based control means access from anywhere

  RIGHT — PEOPLE (VESTA™)
    H3: "PEOPLE (VESTA™)"  [colour: #25d366 whatsapp green]
    Bold: "ENTRY · RESPOND · ENGAGE"
    Checklist:
      ✓ Mobile apps for residents, guards, and staff
      ✓ Self-service visitor registration and QR entry
      ✓ Real-time alerts and two-way communication
      ✓ Multi-site dashboard with incident management
```

---

### SECTION 9 — RESULTS (Case Studies)
```
Background:   White (#FFFFFF)
Layout:       Centred heading, then 2×2 result card grid

Eyebrow:      "Case Studies"  [centred]
H2:           "Real Sites. Real Results."
Lead text:    "We've secured over 2,000 sites across Singapore — from 450-unit
               condominiums to government facilities."
              [centred, --text-light]

2×2 grid of result cards (hover: primary blue border, lift):

  Card 1:
    Bold title: "The L'viv (Residential)"
    Text: "450+ residents now use VESTA™ for self-service gate access,
           eliminating manual logbooks and reducing security guard workload by 40%."
    "40%" in --primary colour

  Card 2:
    Bold title: "SCAPE (Commercial)"
    Text: "200-camera AI system provides real-time crowd monitoring, reducing
           incident response time from 15 minutes to under 2 minutes."
    "200-camera" in --primary colour

  Card 3:
    Bold title: "STA Vehicle Inspection (Institutional)"
    Text: "24/7 remote diagnostics ensure mission-critical operations stay
           online, with 99.7% uptime across two facilities."
    "99.7% uptime" in --primary colour

  Card 4:
    Bold title: "Cyrus Tech (Industrial)"
    Text: "AI perimeter detection eliminated false alarms from wildlife and
           weather, cutting guard callouts by 85%."
    "85%" in --primary colour
```

---

### SECTION 10 — TESTIMONIALS
```
Background:   --bg-light (#F8F9FA)
Layout:       Centred heading, then 3-column testimonial card grid

Eyebrow:      "Client Feedback"  [centred]
H2:           "What Our Clients Say"
Lead text:    "Trusted by architects, property managers, and business owners
               across Singapore."

3-column testimonial cards (white bg, border, hover lift):

  Card 1:
    Quote icon: large " in --primary
    Quote: [PLACEHOLDER — Request quote from Hyla Architects about technical
            competence, coordination during projects, reliability]
    Attribution:
      Name: Han Loke Kwang
      Title: Principal Architect, Hyla Architects
      Logo placeholder: img src="/images/clients/hyla-architects.png"
                        alt="Hyla Architects" height="24"
                        [greyscale, show text fallback if missing]

  Card 2:
    Quote icon: large " in --primary
    Quote: [PLACEHOLDER — Request quote from MCST managing agent about
            smooth upgrade, resident satisfaction, minimal disruption]
    Attribution:
      Name: [Name]
      Title: Managing Agent, [Company]

  Card 3:
    Quote icon: large " in --primary
    Quote: [PLACEHOLDER — Request quote from commercial/industrial client
            about operational improvement, AI detection, reduced overhead]
    Attribution:
      Name: [Name]
      Title: [Position], [Company]

Note: Placeholder text appears in the HTML as visible content
      (italicised, greyed out) so it's clear it needs replacing.
```

---

### SECTION 11 — WHY CHOOSE
```
Background:   White (#FFFFFF)
Layout:       Centred heading, then 3×2 card grid

Eyebrow:      "Why Securevision"  [centred]
H2:           "Why Choose Securevision"

3-column × 2-row grid (6 cards):
  Each card: --bg-light background, centre-aligned, hover: white bg, primary border, lift

  Card 1:
    Icon: 🛡️  [36px]
    H4: "Police-Licensed & Certified"
    Text: "License L/PS/000267/2023P ensures we meet Singapore Police Force
           standards for professionalism and technical competence."

  Card 2:
    Icon: 🏆
    H4: "19+ Years of Experience"
    Text: "Established in 2006, we've served thousands of clients across
           residential, commercial, and industrial sectors."

  Card 3:
    Icon: 🔗
    H4: "Integrated Solutions"
    Text: "Systems that talk to each other. CCTV + access control + vehicle
           barriers + platform — one coherent infrastructure."

  Card 4:
    Icon: ⭐
    H4: "Authorised Partners"
    Text: "Hikvision, Hanwha, Akuvox, AJAX, RISCO, ZKTeco. No generic imports
           — premium brands, full manufacturer warranties."

  Card 5:
    Icon: 🛠️
    H4: "Post-Installation Support"
    Text: "We answer the phone. Maintenance contracts, spare parts stocked,
           rapid response. We're not disappearing after handover."

  Card 6:
    Icon: 💰
    H4: "You Own the Equipment"
    Text: "Unlike subscription models, you purchase outright. Lower total cost
           of ownership for long-term deployments at any scale."
```

---

### SECTION 12 — CLIENT LOGOS
```
Background:   --bg-light (#F8F9FA)
Layout:       Centred heading, then 4-column logo grid

H2:           "Trusted by Industry Leaders"
Intro text:   "Delivering security solutions for Singapore's leading architects,
               developers, and businesses."

4-column logo grid (white bg boxes, border, hover: primary border):
  Box 1: img src="/images/clients/hyla-architects.png"
         alt="Hyla Architects — Architecture Partner"
         Text fallback: "HYLA ARCHITECTS / Architecture Partner"

  Box 2: img src="/images/clients/di-plus-architects.png"
         alt="DI+ Architects — Architecture Partner"
         Text fallback: "DI+ ARCHITECTS / Architecture Partner"

  Box 3: img src="/images/clients/client-condo.png"
         alt="[Condominium Client]"
         Text fallback: "[CONDO NAME] / Condominium Client"

  Box 4: img src="/images/clients/client-commercial.png"
         alt="[Commercial Client]"
         Text fallback: "[CLIENT NAME] / Commercial Client"

Disclaimer (centred, small, italic):
  "Client logos displayed with permission. Thousands of additional projects
   across residential, commercial, and industrial sectors."
```

---

### SECTION 13 — FINAL CTA
```
Background:   Dark gradient (--bg-dark → --bg-dark-mid)
Layout:       Centred, full-width

Eyebrow:      "Get Started"  [colour: rgba(255,255,255,0.5), centred]
H2:           "Stop Operating Blind.
               Start Operating Smart."  [white]
Lead text:    "Book a Smart Assessment with our engineering team. We'll walk
               your site, identify vulnerabilities, and show you exactly how
               the SECURE™ Framework solves them — with no obligation."
              [max-width 620px, centred, rgba(255,255,255,0.8)]

Button group (3 buttons, centred):
  [Primary]       "Book Smart Assessment"         → contact.html
  [WhatsApp]      "💬 WhatsApp Us"                → https://wa.me/6593860466
  [Outline white] "Explore Technology"            → technology.html

Footer note (centred, small, rgba(255,255,255,0.45)):
  "Police Licensed: L/PS/000267/2023P  |  bizSAFE Level 4  |  BCA Registered
   Serving Singapore Since 2006  |  2,000+ Sites Secured"
```

---

## FOOTER (from Global Instruction)

Build exactly as specified in Global Instruction Section 11.

**6 columns:**
Brand block | Solutions | Technology & Brands | Portfolio | Resources & Insights | Company

**Brand block specifics:**
- Logo: `<img src="/images/securevision-logo-light.svg" alt="Securevision" height="36">`
- Tagline: "Singapore's integrated security systems specialist since 2006. Licensed, certified, and trusted by 2,000+ sites across every property sector."
- Contact: 📞 +65 9386 0466 · ✉️ info@securevision.com.sg
- Social icons: Facebook + LinkedIn + WhatsApp (SVG icons from Global Instruction Section 12)

**Solutions column:**
Private Homes · Condominiums · Commercial · Institutions · Industrial · Find My Solution

**Technology & Brands column:**
Surveillance · People Access · Vehicle Access · Platform · All 20 Brands

**Portfolio column:**
All Projects · The L'viv · SCAPE · STA · Cyrus Tech

**Resources & Insights column:**
All Resources · CCTV Guide · All Insights · Security Planning · Case Studies

**Company column:**
About Us · Awards · Contact · WhatsApp · SECURE™ Framework

**Bottom bar:**
© 2025 Securevision Pte Ltd  |  Police License L/PS/000267/2023P  |  bizSAFE Level 4  |  BCA Registered
Serving Singapore Since 2006  |  info@securevision.com.sg

---

## FLOATING WHATSAPP BUTTON

Include exactly as specified in Global Instruction Section 15.
Place just before `</body>`.

---

## JAVASCRIPT (place in `<script>` block before `</body>`)

```javascript
// Dynamic years since establishment
const yearsSince = new Date().getFullYear() - 2006;
document.querySelectorAll('.years-since').forEach(el => el.textContent = yearsSince);
// Also update any inline spans
const y1 = document.getElementById('years-val');
const y2 = document.getElementById('years-val-2');
if(y1) y1.textContent = yearsSince;
if(y2) y2.textContent = yearsSince;

// Mobile menu toggle
function toggleMobileMenu() {
  document.getElementById('mobileMenu').classList.toggle('active');
}

// Mobile submenu accordion
function toggleSubmenu(id) {
  const sub = document.getElementById(id);
  const isOpen = sub.style.display === 'block';
  document.querySelectorAll('.mobile-submenu').forEach(s => s.style.display = 'none');
  if (!isOpen) sub.style.display = 'block';
}
```

---

## IMPORTANT BUILD NOTES

1. **Logo placeholder:** Use text fallback `Securevision` in Montserrat 700 if logo image is missing. The `<img>` tag must still be present with the correct `src` path.

2. **Trustmark badges in Section 4:** Use `<img>` tags with text fallbacks. Show both — the image and the text — so the layout holds even without images.

3. **Client logo boxes in Section 12:** Each box should gracefully show text if the image is missing. Use a `<figure>` with both `<img>` and `<figcaption>`.

4. **Testimonial placeholders:** The placeholder text in Section 10 should be clearly marked as placeholders — use a subtle italic style and a soft background so it's obvious what needs replacing. Do NOT remove the cards.

5. **Mega menus on mobile:** All mega menus must be `display:none` on screens ≤768px. Only the mobile hamburger menu shows on small screens.

6. **Hero pills on mobile:** Hide the quick-nav pills row on screens ≤480px (`display:none`).

7. **Active nav state:** The `Home` link only gets `class="active"` on this page. On all other pages the relevant nav item gets active.

8. **Year calculation:** Use JavaScript — never hardcode "19 years" or "2025" anywhere. The year count must always be current.

9. **All links must be functional** — no `href="#"` placeholders except where explicitly noted as coming soon.

10. **Validate HTML** — single H1 only, all images have alt text, all form elements have labels.

---

*Homepage Page Instruction v1.0 — March 2026*
*Use with GLOBAL-INSTRUCTION.md*
