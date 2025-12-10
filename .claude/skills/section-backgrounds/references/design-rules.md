# Design Rules Reference

## 60-30-10 Color Rule

A classic interior design principle applied to web design.

### Distribution

| Percentage | Role | CSS Classes |
|------------|------|-------------|
| 60% | Dominant | bg-background, bg-card |
| 30% | Secondary | bg-muted, bg-secondary |
| 10% | Accent | bg-primary, bg-accent |

### Application

**60% Dominant:**
- Page background
- Most section backgrounds
- Card backgrounds
- Modal backgrounds

**30% Secondary:**
- Alternating sections
- Sidebar backgrounds
- Input field backgrounds
- Secondary cards

**10% Accent:**
- Primary buttons
- Active states
- Important highlights
- One accent section (usually CTA)

## Background Alternation

### Standard Pattern

```
Hero:        bg-background (or gradient)
Logos:       bg-muted
Features 1:  bg-background
Process:     bg-muted
Pricing:     bg-background
Testimonial: bg-muted
FAQ:         bg-background
CTA:         bg-primary ← Only accent section
Footer:      bg-muted
```

### Foreground Colors

Always pair with correct foreground:

| Background | Foreground |
|------------|------------|
| bg-background | text-foreground |
| bg-muted | text-foreground or text-muted-foreground |
| bg-primary | text-primary-foreground |
| bg-secondary | text-secondary-foreground |
| bg-accent | text-accent-foreground |

## Visual Hierarchy

### Size Hierarchy

| Element | Treatment |
|---------|-----------|
| Page title (h1) | Largest, boldest |
| Section titles (h2) | Large, prominent |
| Subsections (h3) | Medium, clear |
| Card titles (h4) | Moderate |
| Body text (p) | Standard, readable |
| Captions | Smaller, muted |

### Weight Hierarchy

- **Bold**: Titles, CTAs, important labels
- **Semibold**: Subtitles, card headers
- **Medium**: Navigation, secondary buttons
- **Regular**: Body text, descriptions

### Color Hierarchy

- **Primary color**: Main CTAs, key actions
- **Foreground**: Titles, important text
- **Muted foreground**: Descriptions, secondary text

## Spacing System

### Section Padding

```css
/* Standard section */
py-12 md:py-16 lg:py-24

/* Hero section (extra space) */
py-16 md:py-24 lg:py-32

/* Compact section */
py-8 md:py-12 lg:py-16
```

### Content Gaps

```css
/* Between major elements */
gap-8 md:gap-12

/* Between cards */
gap-4 md:gap-6

/* Between text elements */
gap-2 md:gap-4
```

## Button Styling

### Primary CTA
```jsx
<Button className="bg-primary text-primary-foreground hover:bg-primary/90">
  Primary Action
</Button>
```

### Secondary CTA
```jsx
<Button variant="outline">
  Secondary Action
</Button>
```

### Ghost/Tertiary
```jsx
<Button variant="ghost">
  Learn More →
</Button>
```

## Card Styling

```jsx
<div className="bg-card text-card-foreground rounded-lg border p-6">
  {/* Card content */}
</div>
```

On muted background:
```jsx
<div className="bg-background rounded-lg border p-6">
  {/* Card stands out */}
</div>
```

## Clean Design Checklist

- [ ] 60-30-10 color distribution
- [ ] Alternating section backgrounds
- [ ] Consistent section padding
- [ ] Clear visual hierarchy
- [ ] Proper text/background contrast
- [ ] One accent CTA section max
- [ ] Container used for content
- [ ] Responsive spacing adjustments
