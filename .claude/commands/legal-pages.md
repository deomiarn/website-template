---
description: Create Impressum and Datenschutz pages for legal compliance
---

# Legal Pages

Create legally required pages for German/Swiss websites.

## Input Required

```
Company Name:
Company Address:
Company Email:
Company Phone:
Managing Director: (Geschaeftsfuehrer)
VAT ID: (optional, Umsatzsteuer-ID)
Register Court: (optional, Registergericht)
Register Number: (optional, Registernummer)
```

## What This Does

Uses `legal-pages` skill to create:

**Impressum (/impressum):**
- Company information
- Contact details
- Responsible person
- VAT ID (if applicable)
- Register information (if applicable)
- Professional regulations (if applicable)

**Datenschutz (/datenschutz):**
- Data controller information
- Types of data collected
- Purpose of data processing
- Legal basis (DSG/DSGVO)
- Third-party services (hosting, fonts, etc.)
- User rights (access, deletion, objection)
- Cookie policy
- Contact for privacy concerns

## Output

- app/[locale]/impressum/page.tsx
- app/[locale]/datenschutz/page.tsx
- i18n translations (de.json, en.json)

## When to Use

- During release (via /release)
- When legal requirements change
- When company information changes
