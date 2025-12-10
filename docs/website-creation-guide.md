# Website Creation Guide A-Z

Complete workflow for creating a website from start to finish.

---

## Phase 1: Project Setup

### Step 1: Run `/project-setup`

This meta-command runs three steps in sequence:

**1a. Sitemap** (`/00_sitemap`)
```
Business Type: [e.g., Beauty Salon]
Business Name: [Company name]
Location: [City, Country]
Primary Goal: [Lead generation, Bookings]
Target Audience: [Who are the customers]
Unique Selling Points: [What makes them different]
Number of Pages: [1-10 typical]
```
→ Output: `docs/sitemap.md`

**1b. SEO Research** (`/00_seo-research`)
```
Primary Keyword: [main keyword to rank for]
Location: [target area]
Business Type: [from above]
Known Competitors: [URLs, optional]
```
→ Output: `docs/seo-analysis.md`

**2. Branding** (`/01_colors-typography`)
```
Primary Color: [hex or name]
Secondary Color: [hex or name]
Accent Color: [hex or name]
Font Family: [e.g., Inter, Poppins]
Style: [modern, elegant, playful]
```
→ Output: `globals.css` updated

---

## Phase 2: Build Pages

For each page in `docs/sitemap.md`, run `/build-page`:

### Per-Page Steps

| Step | Command | What It Does |
|------|---------|--------------|
| 02 | `/02_install-sections` | Install shadcnblocks + add i18n |
| 03 | `/03_remove-inline-styles` | Clean typography classes |
| 04 | `/04_section-backgrounds` | Apply 60-30-10 color rule |
| 05 | `/05_framer-animations` | Add micro-animations |

### Build Order

1. **Homepage** `/` (P0)
2. **Main pages** - Services, About, Contact (P1)
3. **Secondary pages** - Pricing, Portfolio, etc. (P2)

---

## Phase 3: Images

After building page sections:

| Step | Command | What It Does |
|------|---------|--------------|
| 06 | `/06_midjourney-prompts` | Generate image prompts per page |
| 07 | `/07_webp-images` | Convert & implement images |

**Image Workflow:**
1. Run `/06_midjourney-prompts` for a page
2. Generate images in Midjourney
3. Save to `public/raw/[page]/`
4. Run `/07_webp-images` to convert and implement

---

## Phase 4: SEO Content

For each page, optimize content:

| Step | Command | What It Does |
|------|---------|--------------|
| 08 | `/08_seo-content-optimization` | Integrate keywords from seo-analysis.md |

Uses `docs/seo-analysis.md` to:
- Optimize H1 with primary keyword
- Add secondary keywords to content
- Write meta title (50-60 chars)
- Write meta description (150-160 chars)

---

## Phase 5: Global Configuration

Configure shared components:

| Command | What It Does |
|---------|--------------|
| `/navbar-config` | Menu items, logo, buttons, z-index |
| `/footer-config` | Links, contact info, social |
| `/button-config` | Standardize button styles |

---

## Phase 6: Final Release

Run `/final-release` which includes:

| Skill | Output |
|-------|--------|
| legal-pages | `/impressum`, `/datenschutz` |
| favicon-pwa | favicon.ico, manifest |
| error-pages | 404, 500 pages |
| technical-seo | sitemap.xml, robots.txt, schema |
| performance-audit | Lighthouse check |
| final-checklist | Pre-launch verification |

**Optional:**
| Command | What It Does |
|---------|--------------|
| `/10_cookies-analytics` | GA4 + DSGVO cookie consent |

---

## Quick Reference

### Meta Commands

| Command | Runs |
|---------|------|
| `/project-setup` | 00a → 00b → 01 |
| `/build-page` | 02 → 03 → 04 → 05 |
| `/final-release` | All Phase 6 skills |

### File Outputs

| File | Purpose |
|------|---------|
| `docs/sitemap.md` | Page structure & sections |
| `docs/seo-analysis.md` | Keywords & per-page SEO |
| `globals.css` | Colors & typography |
| `messages/de.json` | German translations |
| `messages/en.json` | English translations |

### Typical Project Timeline

```
Day 1: Project Setup (Phase 1)
Day 2-3: Build Pages (Phase 2)
Day 4: Images (Phase 3)
Day 5: SEO Content (Phase 4)
Day 6: Config + Final Release (Phase 5-6)
```

---

## Checklist

### Before Starting
- [ ] Client info gathered (business type, name, location, USPs)
- [ ] Primary keyword defined
- [ ] Brand colors available
- [ ] Font choice made

### During Build
- [ ] Homepage built first
- [ ] All pages from sitemap completed
- [ ] Images generated and implemented
- [ ] SEO content optimized per page
- [ ] Navbar and footer configured

### Before Launch
- [ ] Legal pages added (Impressum, Datenschutz)
- [ ] Favicon and PWA manifest
- [ ] Error pages (404, 500)
- [ ] Technical SEO (sitemap.xml, robots.txt, schema)
- [ ] Performance audit passed
- [ ] Final checklist completed
