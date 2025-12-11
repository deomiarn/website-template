# Typography Reference

## Commercial-Free Fonts

Recommended fonts (Google Fonts, free for commercial use):

| Font | Style | Best For |
|------|-------|----------|
| Inter | Modern, clean | SaaS, tech |
| Geist | Contemporary | Startups, modern |
| DM Sans | Geometric | Professional |
| Plus Jakarta Sans | Rounded | Friendly, approachable |
| Manrope | Geometric | Corporate |
| Outfit | Modern | Versatile |
| Space Grotesk | Technical | Tech, developer |
| Sora | Geometric | Clean, minimal |

## Loading Fonts in Next.js

```tsx
// app/layout.tsx
import { Inter } from 'next/font/google'

const inter = Inter({ subsets: ['latin'] })

export default function RootLayout({ children }) {
  return (
    <html className={inter.className}>
      <body>{children}</body>
    </html>
  )
}
```

## Typography Styles

Add to globals.css after color variables:

```css
/* Typography */
h1 {
    @apply text-4xl font-bold tracking-tight sm:text-5xl lg:text-6xl mb-6;
}

h2 {
    @apply text-3xl font-semibold tracking-tight sm:text-4xl mb-5;
}

h3 {
    @apply text-2xl font-semibold tracking-tight sm:text-3xl mb-4;
}

h4 {
    @apply text-xl font-semibold sm:text-2xl mb-3;
}

h5 {
    @apply text-lg font-medium sm:text-xl mb-2;
}

h6 {
    @apply text-base font-medium sm:text-lg mb-2;
}

p {
    @apply text-base leading-relaxed text-muted-foreground;
}

/* No global link styles - components handle their own */

blockquote {
    @apply border-l-4 border-primary pl-4 italic text-muted-foreground;
}
```

## Responsive Scale

| Element | Mobile | Tablet (sm) | Desktop (lg) |
|---------|--------|-------------|--------------|
| h1 | text-4xl | text-5xl | text-6xl |
| h2 | text-3xl | text-4xl | text-4xl |
| h3 | text-2xl | text-3xl | text-3xl |
| h4 | text-xl | text-2xl | text-2xl |
| h5 | text-lg | text-xl | text-xl |
| h6 | text-base | text-lg | text-lg |
| p | text-base | text-base | text-base |

## Line Heights

- Headings: tracking-tight (tighter letter spacing)
- Body: leading-relaxed (1.625 line height)
- Small text: leading-normal (1.5)

## Container

```css
.container {
    @apply mx-auto px-4 sm:px-6 lg:px-8;
    max-width: 80rem; /* 1280px */
}
```
