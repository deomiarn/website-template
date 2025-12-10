---
description: Convert and implement images into page sections
---

# WebP Images

Convert images to WebP and implement in components.

## Input Required

```
Page Route: (e.g., /, /leistungen)
Source Folder: public/raw/[page]/
```

## What This Does

Uses `webp-images` skill to:

**Convert images:**
- Source: public/raw/[page]/*.{jpg,png}
- Output: public/images/[page]/*.webp
- Create responsive variants:
  - 640w (mobile)
  - 1024w (tablet)
  - 1920w (desktop)

**Replace in components:**
- Find CDN placeholder URLs
- Replace with Next.js Image component:

```tsx
import Image from 'next/image'

<Image
  src="/images/homepage/hero.webp"
  alt={t('hero.imageAlt')}
  width={1920}
  height={1080}
  sizes="(max-width: 768px) 100vw, 50vw"
  priority // for above-fold images
/>
```

**Add to i18n:**
- Alt text keys for accessibility
- SEO-friendly descriptions

## Output

- WebP images in public/images/
- Components using Next.js Image
- i18n alt text keys

## When to Use

- After Midjourney images are ready
- When optimizing existing images
