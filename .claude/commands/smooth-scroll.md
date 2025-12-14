---
description: Add smooth scrolling to the website - CSS scroll-behavior and anchor link support
---

# Smooth Scroll

**Add smooth scrolling behavior to the entire website.**

Run once per project, applies to all pages.

---

## Steps to Execute

### Step 1: Update globals.css

Add smooth scroll CSS to `website/app/globals.css`:

```css
@layer base {
    html {
        scroll-behavior: smooth;
        scroll-padding-top: 5rem; /* Offset for fixed navbar */
    }
}
```

Place this in the existing `@layer base` block, after the `*` selector.

### Step 2: Add Reduced Motion Support (Optional)

For accessibility, add after the base layer:

```css
@media (prefers-reduced-motion: reduce) {
    html {
        scroll-behavior: auto;
    }
}
```

### Step 3: Add Section IDs

Ensure sections have IDs for anchor navigation:

```tsx
<section id="features" className="py-16 lg:py-24">
<section id="pricing" className="py-16 lg:py-24">
<section id="faq" className="py-16 lg:py-24">
```

### Step 4: Update Navbar Links (if needed)

For same-page scroll links:

```tsx
<Link href="#pricing">Pricing</Link>
<Link href="#faq">FAQ</Link>
```

---

## Quick Reference

### CSS to Add

```css
html {
    scroll-behavior: smooth;
    scroll-padding-top: 5rem;
}
```

### Common Section IDs

| Section | ID |
|---------|-----|
| Hero | `#hero` |
| Features | `#features` |
| Pricing | `#pricing` |
| FAQ | `#faq` |
| Contact | `#contact` |

---

## Verification

After implementation, test:
- [ ] Click anchor link → smooth scroll to section
- [ ] Section visible below navbar (not hidden)
- [ ] Browser back button works after scroll
