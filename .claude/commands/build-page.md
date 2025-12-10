---
description: META COMMAND - Build a single page with sections, cleanup, backgrounds, and animations
---

# Build Page

**This is a META command that runs multiple steps in sequence for ONE page.**

Run for EACH page in the project.

---

## INPUT

**Page Route:** (e.g., /, /leistungen, /kontakt)
**Sections:**
- @shadcnblocks/section1
- @shadcnblocks/section2
- ...

---

## Steps to Execute

### Step 1: Install Sections

Run `/02_install-sections`:
- Install shadcnblocks sections
- Create page file
- Extract text to i18n

### Step 2: Remove Inline Styles

Run `/03_remove-inline-styles`:
- Remove typography classes from h1-h6
- Fix heading hierarchy

### Step 3: Section Backgrounds

Run `/04_section-backgrounds`:
- Apply 60-30-10 color rule
- Set section backgrounds

### Step 4: Framer Animations

Run `/05_framer-animations`:
- Add section reveals
- Add staggered lists
- Add hover effects

---

## After Completion

Continue with MANUAL steps for this page:
1. `/06_midjourney-prompts` - Generate image prompts
2. `/07_webp-images` - Implement images (after MJ done)
3. `/08_seo-content-optimization` - Optimize keywords

Then repeat `/build-page` for remaining pages.

When ALL pages are done: Run `/final-release`
