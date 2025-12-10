---
description: Configure footer navigation links for SEO, contact info, and branding
---

# Footer Configuration

**Use the `footer-configuration` skill to complete this task.**

## INPUT

**Business Name:**
**Phone:**
**Email:**
**Address:**
**Instagram URL:** (optional)
**Facebook URL:** (optional)

---

## TASK

Configure the footer component for complete SEO coverage:

1. **Find footer component** - Glob for `website/components/footer*.tsx`
2. Read `docs/sitemap.md` to get all page routes
3. Set footer as global in `app/[locale]/layout.tsx` if not already done 
4. Add all main pages to navigation group:
   - Homepage (/)
   - Services (/dienstleistungen)
   - About (/ueber-uns)
   - Contact (/kontakt)
5. Add legal pages to legal group:
   - Datenschutz (/datenschutz)
   - Impressum (/impressum)
6. Add social media links with proper external attributes:
   - `target="_blank"`
   - `rel="noopener noreferrer"`
7. Add contact information (phone, email, address)
8. Replace all `<a>` with Next.js `<Link>` for internal navigation 
9. Update branding section with business name 
10. Update copyright with current year 
11. Update all footer keys in `messages/de.json`
12. Update all footer keys in `messages/en.json`

Verify all 6 pages are linked in footer for SEO completeness.

Next: Continue with other configuration tasks
