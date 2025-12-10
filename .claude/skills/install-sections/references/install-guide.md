# shadcnblocks Installation Guide

## Installation Command

```bash
pnpm dlx shadcn add @shadcnblocks/[section-name]
```

## Section Naming

Sections use format: `[type][number]`
- hero145
- feature139
- pricing1
- testimonial25
- footer16

## Common Section Types

| Type | Examples | Use For |
|------|----------|---------|
| navbar | navbar2, navbar5 | Navigation |
| hero | hero79, hero145 | Page headers |
| feature | feature15, feature139, feature207 | Features |
| logos | logos10 | Client logos |
| process | process2 | How it works |
| pricing | pricing1, pricing14 | Pricing tables |
| testimonial | testimonial25 | Reviews |
| faq | faq1, faq7 | Questions |
| cta | cta14, cta26 | Call to action |
| footer | footer16, footer25 | Page footer |
| contact | contact1, contact17 | Contact forms |
| projects | projects15a | Portfolio |
| team | team14 | Team members |
| compare | compare1 | Comparisons |
| stats | stats18 | Statistics |

## Installation Order

Install in the order sections appear on page:

```bash
# Homepage example
pnpm dlx shadcn add @shadcnblocks/navbar2
pnpm dlx shadcn add @shadcnblocks/hero145
pnpm dlx shadcn add @shadcnblocks/logos10
pnpm dlx shadcn add @shadcnblocks/feature139
pnpm dlx shadcn add @shadcnblocks/process2
pnpm dlx shadcn add @shadcnblocks/pricing1
pnpm dlx shadcn add @shadcnblocks/testimonial25
pnpm dlx shadcn add @shadcnblocks/faq1
pnpm dlx shadcn add @shadcnblocks/cta14
pnpm dlx shadcn add @shadcnblocks/footer16
```

## Post-Installation

After installation:
1. Component available at `components/[section].tsx`
2. May install dependencies (ui components)
3. Ready to import and use

## Troubleshooting

**Section not found:**
- Check exact name on shadcnblocks.com
- Verify spelling and number

**Dependency errors:**
- Run `pnpm install` to install missing deps
- Check components.json configuration

## i18n Key Structure

When extracting text, use this structure:

```
pageName:
  sectionName:
    title: "..."
    subtitle: "..."
    description: "..."
    cta: "..."
    items:
      - title: "..."
        description: "..."
```

Example for homepage hero:
```json
{
  "home": {
    "hero": {
      "title": "...",
      "subtitle": "...",
      "cta": "..."
    }
  }
}
```
