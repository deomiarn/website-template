---
description: Build a single page - install sections, clean styles, add animations, connect links
---

# Build Page

**Run for EACH page in the project.**

---

## Required Input

```
Page Route: (e.g., /, /leistungen, /kontakt)
Sections:
- @shadcnblocks/section1
- @shadcnblocks/section2
- ...
```

---

## Steps

### Step 1: Install Sections

Use `install-sections` skill.

- Install shadcnblocks via pnpm
- Create page file at app/[locale]/[route]/page.tsx
- Extract all text to i18n (de.json, en.json)
- Replace hardcoded text with t() calls

**Output:** Page file + i18n keys

---

### Step 2: Remove Inline Styles

Use `remove-inline-styles` skill.
Use `border-cleanup` skill.

- Strip typography classes from h1-h6
- Remove rounded-* classes (except buttons/avatars)
- Fix heading hierarchy (h1 > h2 > h3)
- Ensure one h1 per page (in Hero only)

**Output:** Clean component files

---

### Step 3: Typography Audit

Use `typography-audit` skill.

- Fix heading skips (h2 to h4 becomes h2 to h3)
- Left-align section headers
- Remove centering classes (text-center, mx-auto)
- Add missing descriptions to sections
- Apply max-w-3xl wrapper to headers

**Output:** Fixed typography + new i18n keys

---

### Step 4: Section Backgrounds

Use `section-backgrounds` skill.

- Apply 60-30-10 color rule:
  - 60% bg-background (dominant)
  - 30% bg-muted (secondary)
  - 10% bg-primary (accent, rare)
- Alternate section backgrounds
- Set proper foreground colors

**Output:** Sections with background classes

---

### Step 5: Framer Animations

Use `framer-animations` skill.

- Add section reveals (fade + slide up)
- Add staggered lists for cards/grids
- Add hover effects (scale, opacity)
- Performance: viewport={{ once: true }}

**Output:** Animated sections

---

### Step 6: Internal Links

Use `internal-links` skill.

- Connect all buttons with Link component
- Add asChild prop to buttons
- Add section IDs for anchor links (#pricing, #faq)
- Verify all CTAs have valid destinations

**Output:** Linked buttons + section IDs

---

## After /page (Manual Steps)

These require human input, run separately:

1. **`/midjourney-prompts`** - Generate image prompts for Midjourney
2. **`/webp-images`** - Implement images after Midjourney generates them
3. **`/seo-content`** - Optimize content for target keywords

---

## Next Steps

- Repeat `/page` for remaining pages in docs/sitemap.md
- When ALL pages done: Run `/release`

---

## Quick Reference

### Common Section IDs
```
#features, #process, #pricing, #projects, #testimonials, #faq, #contact
```

### CTA Destinations
| Section | Primary CTA | Secondary CTA |
|---------|-------------|---------------|
| Hero | /kontakt | /projekte or #features |
| Features | /leistungen | #pricing |
| Pricing | /kontakt | - |
| CTA | /kontakt | - |
| Projects | /projekte | /kontakt |
| FAQ | /kontakt | - |
