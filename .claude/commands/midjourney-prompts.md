---
description: Generate Midjourney V7 image prompts for page sections
---

# Midjourney Prompts

Generate image prompts for Midjourney.

## Input Required

```
Page Route: (e.g., /, /leistungen)
```

## What This Does

Uses `midjourney-prompts` skill to:
- Analyze page sections requiring images
- Extract aspect ratios from CSS/design
- Read docs/styleguide.md for brand aesthetics
- Generate MJ V7 prompts with:
  - Subject description
  - Style modifiers
  - Aspect ratio (--ar)
  - Quality settings

**Prompt formula:**
```
[subject], [style], [lighting], [mood], [details] --ar [ratio] --v 7
```

**Human guideline:**
- Avoid showing faces unless specifically needed
- Use abstract/partial views

## Output

- List of copy-paste ready Midjourney prompts
- SEO-friendly filenames for each image

## After This Command

1. Generate images in Midjourney
2. Download and place in public/raw/[page]/
3. Run `/webp-images` to implement

## When to Use

- After /page completes (manual step)
- When adding new images to existing page
