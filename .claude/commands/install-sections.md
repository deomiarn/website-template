---
description: Install shadcnblocks sections and implement i18n for a page
---

# Install Sections

Install shadcnblocks components and set up i18n.

## Input Required

```
Page Route: (e.g., /, /leistungen)
Sections:
- @shadcnblocks/hero145
- @shadcnblocks/feature139
- ...
```

## What This Does

Uses `install-sections` skill to:
- Run `pnpm dlx shadcn add` for each section
- Create page file at app/[locale]/[route]/page.tsx
- Extract all hardcoded text
- Add text to messages/de.json and messages/en.json
- Replace text with t() calls using useTranslations

## Output

- Sections in components/
- Page file created
- i18n keys added

## When to Use

- During page build (via /page)
- When adding new sections to existing page
