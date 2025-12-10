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

**Border-Radius (REMOVE from ALL elements):**

All border-radius should be controlled via `--radius` in globals.css.
Remove ALL rounded-* classes from divs, images, sections, spans, etc.

```
# Standard rounded classes
rounded-sm rounded rounded-md rounded-lg rounded-xl rounded-2xl rounded-3xl rounded-full

# Directional rounded (top, bottom, left, right)
rounded-t-sm rounded-t rounded-t-md rounded-t-lg rounded-t-xl rounded-t-2xl rounded-t-full
rounded-b-sm rounded-b rounded-b-md rounded-b-lg rounded-b-xl rounded-b-2xl rounded-b-full
rounded-l-sm rounded-l rounded-l-md rounded-l-lg rounded-l-xl rounded-l-2xl rounded-l-full
rounded-r-sm rounded-r rounded-r-md rounded-r-lg rounded-r-xl rounded-r-2xl rounded-r-full

# Corner-specific rounded (top-left, top-right, bottom-left, bottom-right)
rounded-tl-sm rounded-tl rounded-tl-md rounded-tl-lg rounded-tl-xl rounded-tl-2xl rounded-tl-full
rounded-tr-sm rounded-tr rounded-tr-md rounded-tr-lg rounded-tr-xl rounded-tr-2xl rounded-tr-full
rounded-bl-sm rounded-bl rounded-bl-md rounded-bl-lg rounded-bl-xl rounded-bl-2xl rounded-bl-full
rounded-br-sm rounded-br rounded-br-md rounded-br-lg rounded-br-xl rounded-br-2xl rounded-br-full

# Arbitrary values
rounded-[0.75rem] rounded-[10px] rounded-[50%] (any custom value)
```

**Buttons:**
Remove any custom button styles, they all should inherit from <Button> component itself.

```
px-4 py-2 bg-primary text-white hover:bg-primary/90 etc.
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

**Borders (KEEP these only):**

```
border          # Basic border
border-border   # Uses CSS variable for border color
```

Note: Do NOT keep rounded-* classes - these are removed (see above)

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

| Found                  | Problem            | Fix                           |
|------------------------|--------------------|-------------------------------|
| h1 in non-hero section | Multiple h1s       | Change to h2                  |
| h3 directly under h1   | Skipped h2         | Change to h2 or add h2 parent |
| h4 at top of section   | Wrong hierarchy    | Change to h2                  |
| No h1 on page          | Missing main title | Ensure hero has h1            |

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
