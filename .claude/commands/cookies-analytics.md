---
description: Set up Google Analytics 4 with DSGVO-compliant cookie consent
---

# Cookies & Analytics

Add GA4 with cookie consent banner.

## Input Required

```
GA4 Measurement ID: G-XXXXXXXXXX
```

## What This Does

Uses `cookies-analytics` skill to:

**Create cookie consent banner:**
- "Nur notwendige" button (reject)
- "Alle akzeptieren" button (accept)
- Link to Datenschutz page
- Stores consent in localStorage

**Set up GA4:**
- Only loads after user consent
- Environment variable for Measurement ID
- gtag.js integration

**Update Datenschutz:**
- Add Google Analytics section
- Explain data collection
- Opt-out instructions

## Output

- Cookie consent component
- GA4 script integration
- Updated Datenschutz page
- Environment variable setup

## When to Use

- After /release (optional)
- When analytics tracking is required
