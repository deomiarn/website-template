---
description: Step 02 - Install shadcnblocks sections and implement i18n for a page
---

# Step 02: Install Sections

**Use the `install-sections` skill to complete this task.**

## INPUT

**Page Route:** (e.g., /, /leistungen, /kontakt)
**Sections to Install:**
- @shadcnblocks/section1
- @shadcnblocks/section2
- @shadcnblocks/section3

---

## TASK

1. Install each section in order:
   ```bash
   pnpm dlx shadcn add @shadcnblocks/[section]
   ```

2. Create/update page at app/[locale]/[route]/page.tsx

3. Import and arrange sections in the given order

4. Extract ALL text from sections:
   - Add German text to messages/de.json
   - Add English text to messages/en.json
   - Replace hardcoded text with t('section.key') using useTranslations

5. Ensure 'use client' is added if using hooks

6. Ensure navbar and footer are global in app/[locale]/layout.tsx if not already done

6. Links and buttons should use Next.js <Link> component for navigation

7. All internal links from buttons or else should link to other localized pages or sections in the same page

8. Verify the page renders correctly without errors and all tasks before are completed

Next: Run /03_remove-inline-styles for this page
