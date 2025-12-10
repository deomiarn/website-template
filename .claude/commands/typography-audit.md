---
description: Check and fix typography hierarchy on a page - fixes heading skips, left-aligns section headers, adds max-w-3xl
---

# Typography Audit

**Audit and fix typography structure in page sections.**

Run this after installing sections or as a standalone check.

---

## INPUT

**Page Route:** (e.g., /, /leistungen, /kontakt)

---

## Steps to Execute

### Step 1: Identify Section Components

Read the page file and list all imported section components.

### Step 2: Audit Each Section

For each section component (skip Hero and CTA):

#### 2a. Check Heading Hierarchy
- Verify h1 → h2 → h3 → h4 sequence (no skipping)
- Fix h4 → h3 if parent is h2
- Ensure only Hero has h1

#### 2b. Check Section Header
- Must have h2 title + p description
- If missing description, add `<p className="mt-4">{t("description")}</p>`

#### 2c. Fix Centering
Remove these classes from section headers:
- `text-center` (from wrapper, h2, p)
- `mx-auto` (from p)
- `items-center`, `justify-center` (from flex wrapper)

#### 2d. Apply Standard Structure
Ensure header wrapper has:
```tsx
<div className="max-w-3xl mb-10">
  <h2>{t("title")}</h2>
  <p className="mt-4">{t("description")}</p>
</div>
```

### Step 3: Update i18n

Add missing keys to `messages/de.json` and `messages/en.json`:

```json
{
  "sectionKey": {
    "description": "[ADD DESCRIPTION]"
  }
}
```

### Step 4: Report Changes

List all modifications:
- Heading hierarchy fixes (h4 → h3)
- Centering classes removed
- Missing descriptions added
- i18n keys added

---

## Quick Reference

### Remove These Classes

| From | Classes to Remove |
|------|-------------------|
| Header wrapper | `text-center`, `items-center`, `justify-center` |
| Description p | `mx-auto`, `text-center` |
| h2 heading | `text-center` |

### Standard Header Structure

```tsx
<div className="max-w-3xl mb-10">
  <h2>{t("title")}</h2>
  <p className="mt-4">{t("description")}</p>
</div>
```

### Skip These Sections

- `hero*.tsx` - Custom layout, has h1
- `cta*.tsx` - Image overlay, centered by design

---

## After Completion

Continue with next step in `/build-page` workflow or run standalone as needed.
