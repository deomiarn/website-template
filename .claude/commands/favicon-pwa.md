---
description: Create favicon and PWA manifest
---

# Favicon & PWA

Set up favicon and Progressive Web App manifest.

## Input Required

```
App Name:
Short Name:
Theme Color: (from globals.css --primary)
Background Color: (from globals.css --background)
Logo Source: (path to logo image)
```

## What This Does

Uses `favicon-pwa` skill to:

**Create favicon variants:**
- public/favicon.ico (16x16, 32x32, 48x48 combined)
- public/favicon-16x16.png
- public/favicon-32x32.png
- public/apple-touch-icon.png (180x180)
- public/android-chrome-192x192.png
- public/android-chrome-512x512.png

**Create site.webmanifest:**
```json
{
  "name": "App Name",
  "short_name": "Short",
  "icons": [...],
  "theme_color": "#...",
  "background_color": "#...",
  "display": "standalone"
}
```

**Update layout metadata:**
```tsx
export const metadata = {
  icons: {
    icon: '/favicon.ico',
    apple: '/apple-touch-icon.png',
  },
  manifest: '/site.webmanifest',
}
```

## Output

- Favicon files in public/
- site.webmanifest
- Updated layout metadata

## When to Use

- During release (via /release)
- When updating branding
