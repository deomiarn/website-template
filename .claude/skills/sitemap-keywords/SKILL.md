---
name: sitemap-keywords
description: Generate sitemap and SEO strategy for new website projects with keyword research. Use when creating a new website - includes online competitor analysis, keyword research via web search, and content strategy. Outputs docs/sitemap.md and docs/seo-strategy.md. Triggers on "sitemap", "seo strategy", "keyword research", "new website project".
---

# Website Sitemap & SEO Strategy

Generate sitemaps and keyword-driven SEO strategies for new website projects.

## Workflow

1. **Gather Input** - Business type, name, location, goals, target audience, USPs
2. **Keyword Research (Web Search)** - Analyze competitors, find keywords
3. **Define Pages** - Based on keywords and user requirements
4. **Select Sections** - Choose shadcnblocks sections for each page
5. **Create SEO Strategy** - Keyword clusters, content plan, ranking targets
6. **Write Files** - Output to docs/sitemap.md and docs/seo-strategy.md

## Keyword Research Process

**Use WebSearch tool to:**

1. Search for `[business type] [location]` to find competitors
2. Search for `[primary service] [location] site:google.ch` or `site:google.de`
3. Analyze competitor titles/descriptions for keyword ideas
4. Search for related long-tail keywords

**Keyword Types to Find:**
- **Primary Keywords:** High volume, main services (e.g., "Webdesign Zürich")
- **Secondary Keywords:** Medium volume, specific services (e.g., "Website erstellen lassen")
- **Long-Tail Keywords:** Low competition, high intent (e.g., "Webdesign Agentur Zürich KMU")
- **Local Keywords:** Location variations (e.g., "Webdesign Winterthur", "Webdesign Kanton Zürich")

**Competitor Analysis:**
- Identify top 3-5 ranking competitors
- Note their title tags and meta descriptions
- Identify content gaps we can fill
- Find keywords they rank for that we should target

## Legal Pages (Always Required)

These are MANDATORY for every project but excluded from main page count:
- /impressum
- /datenschutz

## Section Selection

See references/shadcnblocks-catalog.md for available sections.

Typical page structures:
- **Homepage:** Navbar, Hero, Logos, Feature, Process, Stats, Pricing, Projects, Testimonial, FAQ, CTA, Footer
- **Services:** Navbar, Hero, Services, Feature, Process, CTA, Footer
- **About:** Navbar, Hero, About, Team, Timeline, CTA, Footer
- **Contact:** Navbar, Contact, FAQ, Footer
- **Pricing:** Navbar, Hero, Pricing, Feature, FAQ, CTA, Footer
- **Portfolio:** Navbar, Hero, Projects, Gallery, CTA, Footer
- **Blog:** Navbar, Hero, Blog, CTA, Footer

## Output Format

### docs/sitemap.md

```markdown
# Sitemap

## Core Pages

| Route | Page | Purpose | Priority | Sections |
|-------|------|---------|----------|----------|
| `/` | Homepage | Main landing | P0 | Navbar, Hero, ... |
| `/leistungen` | Services | Service overview | P1 | ... |

## Legal Pages (Required)

| Route | Page |
|-------|------|
| `/impressum` | Impressum |
| `/datenschutz` | Datenschutz |

## URL Structure

/ → Homepage (DE default)
/en → Homepage (EN)
```

### docs/seo-strategy.md

```markdown
# SEO Strategy

## Goal
[Target market and objectives]
**Ranking Target:** Top 3 for primary keywords, Top 10 for secondary

## Competitor Analysis

| Competitor | Domain | Strengths | Weaknesses | Keywords |
|------------|--------|-----------|------------|----------|
| [Name] | [URL] | [What they do well] | [Gaps we can fill] | [Their keywords] |

## Keyword Clusters

### Primary Keywords (Target: Position 1-3)
| Keyword | Search Volume | Difficulty | Target Page | Current Rank |
|---------|---------------|------------|-------------|--------------|
| Webdesign Zürich | High | Medium | Homepage | - |

### Secondary Keywords (Target: Position 1-10)
| Keyword | Search Volume | Target Page |
|---------|---------------|-------------|

### Long-Tail Keywords (Quick Wins)
| Keyword | Target Page | Content Angle |
|---------|-------------|---------------|

### Local Keywords
| Keyword | Target Page |
|---------|-------------|

## On-Page SEO Targets (Per Page)

| Page | Primary Keyword | H1 | Meta Title | Target Position |
|------|-----------------|----|-----------:|-----------------|
| Homepage | Webdesign Zürich | [H1 with keyword] | [Title 50-60 chars] | #1 |
| Services | Website erstellen | [H1] | [Title] | #3 |

## Content Strategy

### Phase 1: Core Pages
[List of priority pages with keyword focus]

### Phase 2: Expansion
[Additional pages for long-tail keywords]

## Competitor Differentiation
[USPs and market positioning]
```

## Rules

1. Impressum and Datenschutz are MANDATORY (excluded from page count)
2. All sections must come from shadcnblocks.com
3. Bilingual support (DE/EN) via next-intl
4. Local SEO pages only when explicitly requested
5. Write output to docs/ folder (sitemap.md, seo-strategy.md)
