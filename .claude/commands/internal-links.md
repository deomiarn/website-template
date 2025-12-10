---
description: Connect all buttons and links to pages or same-page sections
---

# Internal Links

**Ensure all buttons and links have valid destinations.**

Run for EACH page after sections are installed.

---

## INPUT

**Page Route:** (e.g., /, /leistungen, /kontakt)

**Available Pages:** (from docs/sitemap.md)
- `/` - Homepage
- `/leistungen` - Services
- `/projekte` - Portfolio
- `/ueber-uns` - About
- `/kontakt` - Contact

---

## Steps to Execute

### Step 1: Find All Buttons

In each section component, find:
- `<Button>` components
- `<a>` elements
- Any clickable elements

### Step 2: Wrap Buttons with Link

Every button needs `asChild` and a `<Link>`:

```tsx
// Pattern
<Button asChild size="lg">
  <Link href="/destination">{t("cta")}</Link>
</Button>
```

### Step 3: Choose Destinations

| Section | Primary CTA → | Secondary CTA → |
|---------|---------------|-----------------|
| Hero | `/kontakt` | `/projekte` or `#features` |
| Features | `/leistungen` | `#pricing` |
| Pricing | `/kontakt` | - |
| CTA | `/kontakt` | - |
| Projects | `/projekte` | `/kontakt` |
| FAQ | `/kontakt` | - |

### Step 4: Add Section IDs

For anchor links (`#pricing`), add `id` to target section:

```tsx
<section id="pricing" className="py-16 lg:py-24">
```

**Common IDs:**
- `#features` → Features section
- `#process` → Process/How it works
- `#pricing` → Pricing section
- `#projects` → Portfolio section
- `#faq` → FAQ section
- `#contact` → Contact/CTA section

### Step 5: Verify Imports

Ensure each section has:

```tsx
import Link from "next/link";
```

---

## Quick Reference

### Button Pattern

```tsx
<Button asChild>
  <Link href="/kontakt">{t("cta")}</Link>
</Button>
```

### Anchor Pattern

```tsx
// Link
<Link href="#pricing">View Pricing</Link>

// Target section needs id
<section id="pricing">
```

---

## Checklist

For each section:
- [ ] All buttons have `asChild` prop
- [ ] All buttons wrapped with `<Link href="...">`
- [ ] href points to valid page or `#sectionId`
- [ ] Target sections have matching `id` for anchors
- [ ] `import Link from "next/link"` present

---

## After Completion

Continue with next step in `/build-page` workflow.
