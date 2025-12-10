---
description: Step 00b - Deep competitive keyword research and SEO strategy
---

# Step 00b: SEO Keyword Research

**Use the `seo-keyword-research` skill to complete this task.**

## INPUT

Gather this information from the user:

```
Primary Keyword: [The main keyword you want to rank for]
Location: [Target geographic area]
Business Type: [Industry/niche]
Known Competitors: [URLs, if known - optional]
```

---

## PREREQUISITES

- docs/sitemap.md should exist (run `/00_sitemap` first)

---

## TASK

Conduct comprehensive keyword research to build a winning SEO strategy.

### 1. Competitor Analysis (WebSearch)

Use WebSearch to find and analyze top 5 competitors:
- Search for primary keyword + location
- Analyze their title tags, H1s, content structure
- Identify strengths and weaknesses
- Find gaps we can exploit

### 2. Keyword Discovery (WebSearch)

Research keywords across all types:
- **Primary keywords** (high competition, must rank)
- **Secondary keywords** (supporting, should rank)
- **Long-tail keywords** (quick wins, lower competition)
- **Local keywords** (geographic variations)
- **Question keywords** (FAQ opportunities)
- **Semantic keywords** (LSI, related terms)

### 3. Intent Classification

Classify every keyword by search intent:
- **Transactional** (ready to buy/book)
- **Commercial Investigation** (comparing options)
- **Informational** (learning/researching)
- **Navigational** (finding specific site)

### 4. Per-Page Mapping

Using docs/sitemap.md, assign keywords to each page:
- One primary keyword per page
- 2-3 secondary keywords per page
- Long-tail opportunities where relevant

### 5. Content Gap Analysis

Identify what competitors miss:
- Topics they don't cover
- Questions they don't answer
- Local variations they lack

### 6. Output File

Create **docs/seo-analysis.md** with:
- Executive summary
- Competitor analysis table
- Complete keyword strategy (by type)
- Per-page optimization guide (title, meta, H1, H2s)
- Content gap opportunities
- Implementation priority phases

---

## OUTPUT

- docs/seo-analysis.md

---

## SUCCESS CRITERIA

- [ ] Top 5 competitors analyzed with WebSearch
- [ ] 20+ keywords identified across all types
- [ ] All keywords classified by intent
- [ ] Keywords mapped to pages from sitemap
- [ ] At least 3 content gaps identified
- [ ] Actionable recommendations per page

---

## Next Steps

After completing SEO research:
1. Run `/01_colors-typography` for branding
2. Build pages with `/build-page`
3. Use docs/seo-analysis.md during `/08_seo-content-optimization`
