# Typography Hierarchy Rules

Complete reference for heading hierarchy and section header structure.

## Heading Hierarchy

### Valid Heading Sequences

| Pattern | Example | Valid |
|---------|---------|-------|
| h1 → h2 | Page title → Section title | Yes |
| h2 → h3 | Section title → Subsection | Yes |
| h3 → h4 | Subsection → Sub-subsection | Yes |
| h2 → h3 → h4 | Nested structure | Yes |

### Invalid Heading Sequences

| Pattern | Problem | Fix |
|---------|---------|-----|
| h2 → h4 | Skips h3 | Change h4 to h3 |
| h1 → h3 | Skips h2 | Change h3 to h2 |
| h1 → h4 | Skips h2, h3 | Change h4 to h2 |
| Multiple h1 | Only 1 per page | Change extras to h2 |

### Page-Level Rules

1. **One h1 per page** - Only in Hero section
2. **Sections start with h2** - Main section title
3. **Cards/items use h3** - Individual items within section
4. **Sub-items use h4** - Rarely needed, only for deep nesting

## Section Header Template

### Standard Section (Left-Aligned)

```tsx
<section className="py-16 lg:py-24">
  <div className="container">
    {/* Section Header */}
    <div className="max-w-3xl mb-10">
      <h2>{t("title")}</h2>
      <p className="mt-4">{t("description")}</p>
    </div>

    {/* Content */}
    <div className="...">
      {items.map((item) => (
        <div key={item.id}>
          <h3>{item.title}</h3>
          <p>{item.description}</p>
        </div>
      ))}
    </div>
  </div>
</section>
```

### Key Classes

| Element | Classes | Purpose |
|---------|---------|---------|
| Header wrapper | `max-w-3xl mb-10` | Constrain width, add spacing |
| Description | `mt-4` | Space between h2 and p |
| h2 | (none) | Styled by globals.css |
| p | (none or `mt-4`) | Styled by globals.css |

## Classes to Remove

### Centering Classes (REMOVE from headers)

```css
/* Remove from header wrapper div */
text-center
items-center
justify-center
flex-col items-center

/* Remove from description paragraph */
mx-auto
text-center

/* Remove from h2 */
text-center
```

### Why Remove?
- Section headers should be left-aligned for readability
- `max-w-3xl` naturally constrains width without centering
- Consistent alignment across all sections

## Before/After Examples

### Example 1: Centered Header Fix

**Before:**
```tsx
<motion.div className="flex flex-col items-center gap-4 text-center">
  <h2 className="mb-2">{t("title")}</h2>
  <p className="max-w-lg">{t("description")}</p>
</motion.div>
```

**After:**
```tsx
<motion.div className="max-w-3xl mb-10">
  <h2>{t("title")}</h2>
  <p className="mt-4">{t("description")}</p>
</motion.div>
```

### Example 2: Hierarchy Skip Fix

**Before:**
```tsx
<h2>{t("title")}</h2>
<div className="grid">
  {projects.map((p) => (
    <div>
      <h4>{p.title}</h4>  {/* WRONG: skips h3 */}
    </div>
  ))}
</div>
```

**After:**
```tsx
<h2>{t("title")}</h2>
<div className="grid">
  {projects.map((p) => (
    <div>
      <h3>{p.title}</h3>  {/* CORRECT */}
    </div>
  ))}
</div>
```

### Example 3: Heading Only (No Description)

**Before:**
```tsx
<h2 className="mb-12 mt-2">{t("title")}</h2>
<Accordion>...</Accordion>
```

**After:**
```tsx
<div className="max-w-3xl mb-10">
  <h2>{t("title")}</h2>
  <p className="mt-4">{t("description")}</p>
</div>
<Accordion>...</Accordion>
```

### Example 4: motion.h2 Without Description

**Before:**
```tsx
<motion.h2
  initial={{ opacity: 0, y: 20 }}
  whileInView={{ opacity: 1, y: 0 }}
  transition={{ duration: 0.5 }}
  viewport={{ once: true }}
  className="mb-8"
>
  {t("title")}
</motion.h2>
```

**After:**
```tsx
<motion.div
  initial={{ opacity: 0, y: 20 }}
  whileInView={{ opacity: 1, y: 0 }}
  transition={{ duration: 0.5 }}
  viewport={{ once: true }}
  className="max-w-3xl mb-10"
>
  <h2>{t("title")}</h2>
  <p className="mt-4">{t("description")}</p>
</motion.div>
```

### Example 5: Standalone h2 with Classes

**Before:**
```tsx
<div className="container">
  <h2 className="uppercase">{t("title")}</h2>
  <div className="mt-10 grid">...</div>
</div>
```

**After:**
```tsx
<div className="container">
  <div className="max-w-3xl mb-10">
    <h2>{t("title")}</h2>
    <p className="mt-4">{t("description")}</p>
  </div>
  <div className="grid">...</div>
</div>
```

**Note:** Remove `uppercase`, `mb-*`, `mt-*` from h2 - spacing handled by wrapper.

## Exception Sections

### Keep Centered (Do Not Fix)

1. **Hero Sections** (`hero*.tsx`)
   - Custom full-width layout
   - Centered or custom alignment allowed
   - Contains the only h1 on page

2. **CTA Sections** (`cta*.tsx`)
   - Image overlay with centered text
   - Intentionally centered design
   - Usually h2 only, no description needed

### How to Identify Exceptions

```tsx
// Hero - has h1
<h1>{t("title")}</h1>

// CTA - has image overlay structure
<div className="absolute inset-0 ... items-center justify-center">
  <h2 className="text-center text-white">{t("title")}</h2>
</div>
```

## Checklist

When auditing a section, verify:

### Structure
- [ ] Section has h2 title
- [ ] Section has p description **immediately after h2** (unless CTA/Hero)
- [ ] h2 and p are wrapped in `<div className="max-w-3xl mb-10">`
- [ ] Heading hierarchy is sequential (no h2→h4 skips)

### Classes to Remove
- [ ] No `text-center` on header wrapper
- [ ] No `mx-auto` on description p
- [ ] No `items-center justify-center` on header flex
- [ ] No `uppercase` on h2
- [ ] No `mb-*` or `mt-*` on h2 (spacing handled by wrapper)

### Classes to Add
- [ ] `max-w-3xl mb-10` on header wrapper div
- [ ] `mt-4` on description p

### i18n
- [ ] `sectionKey.title` exists in de.json/en.json
- [ ] `sectionKey.description` exists in de.json/en.json

### Common Patterns to Fix
- [ ] `<h2>` alone → wrap in div, add `<p>`
- [ ] `<motion.h2>` → convert to `<motion.div>` with h2 + p inside
- [ ] Centered header → remove centering classes, add max-w-3xl
