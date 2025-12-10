# Claude Instructions

## Project Overview

Local Studios - Webdesign agency website (Productized Service).
Target: KMUs in Zürich + Swiss cantons.
USP: Handcoded websites, subscription from CHF 100/mo.

## Tech Stack

- Next.js 16 (App Router)
- React 19
- Tailwind CSS v4
- next-intl (DE/EN)
- shadcn/ui
- shadcnblocks.com for sections

## Critical Rules

### 1. Font Cleanup (MANDATORY)

When installing sections from shadcnblocks.com, **ALWAYS** remove typography classes from heading tags.

**REMOVE from h1-h6:**
```
text-4xl, text-5xl, text-6xl, text-7xl
font-bold, font-semibold, font-medium, font-light
tracking-tight, tracking-wide, tracking-normal
leading-tight, leading-snug, leading-normal
bg-muted-foreground
```

**WHY:** Typography is defined globally in `globals.css`. Inline styles cause inconsistency.

**EXAMPLE:**
```jsx
// BEFORE (shadcnblocks default)
<h1 className="text-5xl font-bold tracking-tight leading-tight">
  Page Title
</h1>
<h2 className="text-3xl font-semibold tracking-tight">
  Section Title
</h2>
<p className="text-lg leading-relaxed text-muted-foreground">
  Body text
</p>

// AFTER (cleaned)
<h1>Page Title</h1>
<h2>Section Title</h2>
<p>Body text</p>
```

### 2. What to KEEP

**DO NOT remove:**
- Layout: `flex`, `grid`, `gap-*`, `space-*`, `items-*`, `justify-*`
- Responsive: `sm:`, `md:`, `lg:`, `xl:`, `2xl:`
- Colors: `bg-muted`, `text-accent`
- Sizing: `w-*`, `h-*`, `max-w-*`, `min-h-*`
- Spacing: `p-*`, `m-*`, `px-*`, `py-*`
- Position: `relative`, `absolute`, `fixed`
- Animations: `transition-*`, `animate-*`, `duration-*`
- Borders: `border-*`, `rounded-*` (on non-heading elements)

### 3. No Custom Sections

All sections come from [shadcnblocks.com](https://shadcnblocks.com). By the client prompter.
Do NOT write custom section components from scratch.

Center all sections in the page as it should be in a website layout.

### 4. i18n

All user-facing text must be in:
- `messages/de.json` (German - primary)
- `messages/en.json` (English)

Use `useTranslations` hook:
```tsx
import { useTranslations } from 'next-intl';

export function Hero() {
  const t = useTranslations('hero');
  return <h1>{t('title')}</h1>;
}
```

## File Structure

```
app/
├── app/[locale]/           # Pages
├── components/blocks/      # shadcnblocks sections
├── components/ui/          # shadcn/ui components
├── config/cities.ts        # Local SEO data
├── messages/               # i18n files
└── lib/                    # Utilities
```

## Documentation

Read before working:
- `README.md` - Project overview
- `docs/sitemap.md` - All pages & sections
- `docs/styleguide.md` - Design system
- `docs/shadcnblocks-workflow.md` - How to add sections
- `docs/seo-strategy.md` - SEO plan

## Page Sections Reference

### Homepage `/`
1. Navbar
2. Hero
3. Logos (optional)
4. Feature
5. Process
6. Stats
7. Pricing
8. Projects
9. Testimonial
10. FAQ
11. CTA
12. Footer

### Local SEO `/webdesign/[city]`
Uses dynamic content from `config/cities.ts`.
Same section structure, different content per city.

## Workflow Summary

1. Check `docs/sitemap.md` for page sections
2. Install section from shadcnblocks.com
3. **Remove font styles from h1-h6**
4. Add i18n strings
5. Customize content
6. Test responsive
