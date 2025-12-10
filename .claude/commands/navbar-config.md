---
description: Configure navbar menu items, logo, buttons, z-index, and i18n
---

# Navbar Configuration

**Use the `navbar-configuration` skill to complete this task.**

## INPUT

**Logo Type:** (text / image)
**Logo Text or Image Path:**
**Background:** (transparent / background / muted)
**Show Outline Button:** (yes / no)
**Show Primary Button:** (yes / no)
**Outline Button Label:** (e.g., Contact)
**Primary Button Label:** (e.g., Book Now)

---

## TASK

Configure the navbar component:

1. **Find navbar component** - Glob for `website/components/navbar*.tsx`
2. Read `docs/sitemap.md` to get all page routes
3. Set navbar als global in `app/[locale]/layout.tsx` if not already done 
4. Update menu items to match sitemap pages 
5. Replace all `<a>` tags with Next.js `<Link>` for internal navigation 
6. Add `z-50` class to NavigationMenuContent for dropdown visibility 
7. Add `z-50` class to SheetContent for mobile menu visibility 
8. Configure logo (text or image based on input)
9. Configure button visibility based on input 
10. Set background class based on input 
11. Update navbar keys in `messages/de.json`
12. Update navbar keys in `messages/en.json`

Ensure all menu item translations are complete for both languages.

Verify by checking that dropdowns appear above all page content.

Next: Run /footer-config for footer configuration
