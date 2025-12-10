# Style Cleanup Rules

## Complete List of Classes to REMOVE

### From h1, h2, h3, h4, h5, h6 Tags

**Text sizes (remove all):**
```
text-xs text-sm text-base text-lg text-xl text-2xl text-3xl
text-4xl text-5xl text-6xl text-7xl text-8xl text-9xl
```

**Font weights (remove all):**
```
font-thin font-extralight font-light font-normal font-medium
font-semibold font-bold font-extrabold font-black
```

**Tracking/letter-spacing (remove all):**
```
tracking-tighter tracking-tight tracking-normal tracking-wide
tracking-wider tracking-widest
```

**Leading/line-height (remove all):**
```
leading-none leading-tight leading-snug leading-normal
leading-relaxed leading-loose leading-3 leading-4 leading-5
leading-6 leading-7 leading-8 leading-9 leading-10
```

**Gradient text utilities (remove):**
```
bg-clip-text text-transparent bg-gradient-to-r bg-gradient-to-l
```

**Background colors on text (remove from headings):**
```
bg-muted-foreground (when on heading text)
```

## Classes to KEEP

### Always Keep These

**Layout & Display:**
```
flex inline-flex grid inline-grid block inline-block hidden
flex-row flex-col flex-wrap flex-nowrap
items-start items-center items-end items-baseline items-stretch
justify-start justify-center justify-end justify-between justify-around
gap-* space-x-* space-y-*
```

**Positioning:**
```
relative absolute fixed sticky
top-* right-* bottom-* left-*
z-*
```

**Sizing:**
```
w-* h-* min-w-* max-w-* min-h-* max-h-*
```

**Spacing:**
```
p-* px-* py-* pt-* pb-* pl-* pr-*
m-* mx-* my-* mt-* mb-* ml-* mr-*
```

**Responsive Prefixes:**
```
sm:* md:* lg:* xl:* 2xl:*
```

**Background Colors (on containers, not text):**
```
bg-background bg-foreground bg-primary bg-secondary
bg-accent bg-muted bg-card bg-popover bg-destructive
```

**Borders & Rounded:**
```
border border-* rounded rounded-*
```

**Effects & Animations:**
```
shadow-* opacity-* transition-* duration-* ease-*
animate-* transform translate-* rotate-* scale-*
```

**Overflow:**
```
overflow-* truncate line-clamp-*
```

## Heading Hierarchy Reference

### Page Structure

```
<h1> - Page title (ONE per page)
  <h2> - Section title
    <h3> - Subsection title
      <h4> - Sub-subsection title
        <h5> - Minor heading
          <h6> - Smallest heading
```

### Common Fixes

| Found | Problem | Fix |
|-------|---------|-----|
| h1 in non-hero section | Multiple h1s | Change to h2 |
| h3 directly under h1 | Skipped h2 | Change to h2 or add h2 parent |
| h4 at top of section | Wrong hierarchy | Change to h2 |
| No h1 on page | Missing main title | Ensure hero has h1 |

## Regex Patterns for Cleanup

Find typography classes:
```regex
\btext-[2-9]?xl\b|\btext-[3-9]xl\b
\bfont-(bold|semibold|medium|light|thin|black|extrabold)\b
\btracking-(tight|tighter|wide|wider|widest|normal)\b
\bleading-(tight|snug|normal|relaxed|loose|none|\d+)\b
```

Match heading tags with classes:
```regex
<h[1-6]\s+className="[^"]*"
```
