---
description: Create custom 404 and 500 error pages
---

# Error Pages

Create branded error pages.

## Input Required

None (uses existing brand styling)

## What This Does

Uses `error-pages` skill to create:

**404 Page (app/not-found.tsx):**
- Branded design matching site
- Clear "Page not found" message
- Helpful navigation options:
  - Link to homepage
  - Link to contact page
  - Search (if applicable)
- i18n translations

**500 Page (app/error.tsx):**
- Branded design matching site
- Clear "Something went wrong" message
- Options to:
  - Try again
  - Go to homepage
  - Contact support
- Error boundary implementation
- i18n translations

## Output

- app/not-found.tsx
- app/error.tsx
- i18n keys in de.json, en.json

## When to Use

- During release (via /release)
- When customizing error experience
