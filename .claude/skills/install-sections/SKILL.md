---
name: install-sections
description: Build pages by installing shadcnblocks sections and implementing i18n. Use for each page after branding is defined. Takes page route and list of sections to install. Installs sections in order, creates page file, extracts text to de.json/en.json, and adds useTranslations.
---

# Page Builder

Install shadcnblocks sections and implement i18n for a page.

## Workflow

1. **Install Sections** - Run pnpm dlx shadcn add for each section in order
2. **Create Page File** - Create/update app/[locale]/[route]/page.tsx
3. **Import Sections** - Import all installed components
4. **Arrange Sections** - Place in order as specified
5. **Extract Text** - Find all hardcoded text in sections
6. **Add to i18n** - Add text to messages/de.json and messages/en.json
7. **Replace with t()** - Use useTranslations hook in components

## Installing Sections

Install each section in the order provided:

```bash
pnpm dlx shadcn add @shadcnblocks/hero145
pnpm dlx shadcn add @shadcnblocks/feature139
pnpm dlx shadcn add @shadcnblocks/pricing1
```

Sections are installed to `components/` directory.

## Page Structure

Add navbar and footer to layout if not already present.
Everything else goes into the page file.

```tsx
// app/[locale]/page.tsx (homepage)
// app/[locale]/leistungen/page.tsx (services)
// app/[locale]/kontakt/page.tsx (contact)

import { Hero145 } from '@/components/hero145'
import { Feature139 } from '@/components/feature139'

export default function Page() {
  return (
    <>
      <Hero145 />
      <Feature139 />
    </>
  )
}
```

## i18n Implementation

### 1. Extract Text

Find all hardcoded strings in the section component.

### 2. Add to JSON files

```json
// messages/de.json
{
  "hero": {
    "title": "Willkommen",
    "subtitle": "Beschreibung hier",
    "cta": "Jetzt starten"
  }
}

// messages/en.json
{
  "hero": {
    "title": "Welcome",
    "subtitle": "Description here",
    "cta": "Get Started"
  }
}
```

### 3. Use in Component

```tsx
'use client'
import { useTranslations } from 'next-intl'

export function Hero145() {
  const t = useTranslations('hero')

  return (
    <section>
      <h1>{t('title')}</h1>
      <p>{t('subtitle')}</p>
      <button>{t('cta')}</button>
    </section>
  )
}
```

## Key Naming Convention

Use consistent key structure:
- `{section}.title`
- `{section}.subtitle`
- `{section}.description`
- `{section}.cta`
- `{section}.items.0.title`
- `{section}.items.0.description`

## Output

- Sections installed in components/
- Page created at app/[locale]/[route]/page.tsx
- Text added to messages/de.json
- Text added to messages/en.json
- Components using useTranslations
