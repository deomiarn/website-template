---
description: Step 06 - Generate Midjourney prompts for all images in a page
---

# Step 06: Midjourney Image Prompts

**Use the `midjourney-prompts` skill to complete this task.**

## INPUT

**Page to generate prompts for:** (e.g., Homepage, /leistungen)

---

## TASK

Generate Midjourney V7 prompts for all images needed in the page:

1. **Analyze Page Sections:**
   - Identify all sections with images (hero, projects, testimonials, etc.)
   - Extract aspect ratios from CSS classes
   - Note image purpose for each slot

2. **Read Branding:**
   - Get style keywords from docs/styleguide.md
   - Apply brand aesthetic to all prompts

3. **Generate Prompts:**
   - Follow MJ V7 formula from references
   - Include: scene description, camera, lighting, technical specs, mood
   - Add correct --ar flag for each image
   - Suggest SEO-friendly filename

4. **Human Guidelines:**
   - Avoid showing faces by default
   - Use silhouettes, backs, or backlit figures if humans needed

Output: List of prompts ready to copy into Midjourney.

Next: After generating images, use /07_implement-images
