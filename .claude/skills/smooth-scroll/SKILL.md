---
name: smooth-scroll
description: Add smooth scrolling behavior to the website. Implements CSS scroll-behavior and handles same-page anchor links. Add to layout once, works across all pages.
---

# Smooth Scroll

Enable smooth scrolling for the entire website, including same-page anchor links.

## Workflow

1. **Check globals.css** - Verify if smooth scroll is already implemented
2. **Add CSS Rule** - Add `scroll-behavior: smooth` to html element
3. **Verify Layout** - Ensure no conflicting scroll settings
4. **Test Anchor Links** - Confirm same-page links work smoothly

## Implementation

### Method 1: CSS (Recommended)

Add to `globals.css` in the `@layer base` section:

```css
@layer base {
    html {
        scroll-behavior: smooth;
    }
}
```

This is the simplest and most performant approach.

### Full globals.css Example

```css
@layer base {
    * {
        @apply border-border outline-ring/50;
    }

    html {
        scroll-behavior: smooth;
    }

    body {
        @apply bg-background text-foreground antialiased;
    }
}
```

## Same-Page Anchor Links

For links that scroll to sections on the same page, use the `#` anchor format:

```tsx
// In navbar or any component
<Link href="#pricing">Pricing</Link>
<Link href="#faq">FAQ</Link>
<Link href="#contact">Contact</Link>

// Target sections need matching IDs
<section id="pricing">...</section>
<section id="faq">...</section>
<section id="contact">...</section>
```

### Adding Section IDs

Each section that should be a scroll target needs an `id` attribute:

```tsx
// Before
<section className="py-16 lg:py-24">

// After
<section id="features" className="py-16 lg:py-24">
```

### Common Section IDs

| Section | ID |
|---------|-----|
| Hero | `hero` |
| Features | `features` |
| Pricing | `pricing` |
| FAQ | `faq` |
| Contact | `contact` |
| About | `about` |
| Portfolio/Projects | `projects` |
| Testimonials | `testimonials` |

## Scroll Offset for Fixed Navbar

If navbar is fixed/sticky, add scroll padding to prevent content from hiding behind it:

```css
@layer base {
    html {
        scroll-behavior: smooth;
        scroll-padding-top: 5rem; /* Adjust based on navbar height */
    }
}
```

## Checklist

- [ ] `scroll-behavior: smooth` added to html in globals.css
- [ ] `scroll-padding-top` set if navbar is fixed (typically 4-5rem)
- [ ] Section IDs added to scrollable targets
- [ ] Anchor links using `#sectionId` format
- [ ] Test: clicking anchor link scrolls smoothly
- [ ] Test: browser back button works correctly after scroll

## Accessibility Note

Some users prefer reduced motion. The CSS approach respects the user's `prefers-reduced-motion` setting when combined with:

```css
@media (prefers-reduced-motion: reduce) {
    html {
        scroll-behavior: auto;
    }
}
```

This is optional but recommended for accessibility.

## Output

After running this skill:
- `globals.css` updated with smooth scroll CSS
- Scroll padding added if navbar is fixed
- Section IDs documented for anchor links
