---
description: Step 07 - Convert and implement images into page sections
---

# Step 07: WebP Images

**Use the `webp-images` skill to complete this task.**

## INPUT

- **Page route:** (e.g., /, /leistungen)
- **Source folder:** /public/raw/[page]/
- **Image filenames:** (user provides mapping to sections)

---

## TASK

Implement images into page sections:

1. **Convert to WebP:**
   - Run scripts/convert-to-webp.sh
   - Input: /public/raw/[page]/
   - Output: /public/images/[page]/
   - Generate responsive variants (640w, 1024w, 1920w)

2. **Replace Filler Images:**
   - Find CDN placeholder URLs in section components
   - Replace with Next.js <Image> component
   - Preserve aspect ratio and CSS classes
   - Add `fill` prop for background images
   - Add `priority` for above-the-fold images

3. **Add Alt Text:**
   - Add alt text keys to messages/de.json
   - Add alt text keys to messages/en.json
   - Use t() hook in components

4. **Verify:**
   - All images load correctly
   - Responsive sizes working
   - No CLS (layout shift) issues

Next: /08_seo-content-optimization for this page, then /final-release when all pages done
