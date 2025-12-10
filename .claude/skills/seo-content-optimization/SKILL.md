---
name: seo-content-optimization
description: Optimize page content for target keywords. Use per page after building to integrate keywords naturally into headings, text, and i18n files. Reads docs/seo-strategy.md for keyword targets. Triggers on "optimize content for SEO", "keyword optimization", "SEO text", "integrate keywords".
---

# SEO Content Optimization

Optimize page content for target keywords to rank #1 on Google.

## Prerequisites

- docs/seo-strategy.md must exist with keyword targets
- Page must be built (sections installed, i18n added)

## Workflow

1. **Read SEO Strategy** - Get target keywords for this page from docs/seo-strategy.md
2. **Analyze Current Content** - Review existing text in components and i18n files
3. **Optimize H1** - Ensure primary keyword is in H1 (naturally)
4. **Optimize Headings** - Include keywords in H2/H3 where relevant
5. **Optimize Body Text** - Integrate keywords naturally (1-2% density)
6. **Optimize Meta** - Title tag and meta description with keywords
7. **Update i18n** - Apply changes to de.json and en.json

## Keyword Integration Rules

**DO:**
- Place primary keyword in H1 (required)
- Include keyword in first 100 words
- Use keyword variations and synonyms
- Write naturally for humans first
- Use keywords in image alt text

**DON'T:**
- Keyword stuff (max 1-2% density)
- Force unnatural phrasing
- Repeat exact keyword excessively
- Sacrifice readability for SEO

## Content Optimization Checklist

### H1 (Most Important)
- [ ] Contains primary keyword
- [ ] Compelling and clear
- [ ] Only ONE H1 per page
- [ ] Different from meta title (can be similar)

### H2 Headings
- [ ] Include secondary keywords where natural
- [ ] Describe section content accurately
- [ ] Use question format for FAQ keywords

### Body Text
- [ ] Keyword in first paragraph
- [ ] Natural keyword variations throughout
- [ ] Semantic keywords (LSI) included
- [ ] Minimum 300 words per major section

### Meta Title (50-60 chars)
```
[Primary Keyword] | [Brand] - [Benefit]
```
Example: `Webdesign Zürich | Local Studios - Professionelle Websites`

### Meta Description (150-160 chars)
```
[What you offer] + [Unique value] + [CTA]
```
Example: `Professionelles Webdesign in Zürich für KMUs. Handcodierte Websites ab CHF 100/Monat. Jetzt kostenloses Erstgespräch vereinbaren.`

### Image Alt Text
- [ ] Descriptive and keyword-relevant
- [ ] Not keyword-stuffed
- [ ] Describes actual image content

## Example Optimization

**Before (generic):**
```json
{
  "hero": {
    "title": "Willkommen bei uns",
    "subtitle": "Wir erstellen Websites"
  }
}
```

**After (SEO-optimized):**
```json
{
  "hero": {
    "title": "Webdesign Zürich für KMUs",
    "subtitle": "Professionelle Websites, die Kunden bringen. Handcodiert, schnell, SEO-optimiert."
  }
}
```

## Keyword Density Check

Target: 1-2% keyword density

Formula: `(keyword count / total words) × 100`

For a 500-word page targeting "Webdesign Zürich":
- Minimum: 5 mentions (1%)
- Maximum: 10 mentions (2%)
- Include variations: "Webdesign in Zürich", "Zürcher Webdesign", "Website Zürich"

## Output

- Updated messages/de.json with SEO-optimized text
- Updated messages/en.json with SEO-optimized text
- Meta title and description for the page
- All headings optimized for keywords
