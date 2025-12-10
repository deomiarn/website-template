---
name: remove-inline-styles
description: Clean up shadcnblocks sections by removing inline typography styles and fixing heading hierarchy. Use after installing sections with install-sections. Removes text-xl, font-bold, tracking-tight from headings. Ensures proper h1 to h2 to h3 order and one h1 per page.
---

# Style Cleanup

Remove inline typography styles from shadcnblocks sections and fix heading hierarchy.

## Workflow

1. **Read Component** - Load the section component file
2. **Remove Typography Classes** - Strip inline styles from h1-h6
3. **Check Heading Hierarchy** - Verify proper h1 > h2 > h3 order
4. **Fix Hierarchy Issues** - Adjust heading levels if needed
5. **Verify Single H1** - Ensure only one h1 per page

## Classes to REMOVE from h1-h6

See references/cleanup-rules.md for complete list.

**Typography sizes:**
- text-4xl, text-5xl, text-6xl, text-7xl
- text-3xl, text-2xl, text-xl, text-lg

**Font weights:**
- font-bold, font-semibold, font-medium, font-light

**Letter spacing:**
- tracking-tight, tracking-wide, tracking-normal, tracking-tighter

**Line height:**
- leading-tight, leading-snug, leading-normal, leading-relaxed

**Text colors on headings:**
- bg-muted-foreground (when used with bg-clip-text)

## Classes to KEEP

**Layout:**
- flex, inline-flex, grid, block, inline-block
- gap-*, space-*, items-*, justify-*

**Responsive prefixes:**
- sm:, md:, lg:, xl:, 2xl:

**Spacing:**
- p-*, m-*, px-*, py-*, pt-*, pb-*, pl-*, pr-*
- mt-*, mb-*, ml-*, mr-*, mx-*, my-*

**Colors on containers:**
- bg-muted, bg-primary, bg-secondary, bg-accent
- text-muted-foreground (on p, span - not headings)

**Other:**
- w-*, h-*, max-w-*, min-h-*
- border-*, rounded-*
- transition-*, animate-*, duration-*
- relative, absolute, fixed, sticky

## Heading Hierarchy Rules

1. **One H1 per page** - Only the main page title uses h1
2. **Sequential order** - h1 → h2 → h3 → h4 (no skipping)
3. **Section titles** - Use h2 for section headings
4. **Subsections** - Use h3 for subsection headings

### Fixing Hierarchy

If a section has:
```jsx
<h1>Section Title</h1>  // Wrong - should be h2
<h3>Feature</h3>         // Wrong - should follow h2
```

Change to:
```jsx
<h2>Section Title</h2>  // Correct
<h3>Feature</h3>         // Now correct (follows h2)
```

## Example Cleanup

Before:
```jsx
<h1 className="text-5xl font-bold tracking-tight leading-tight">
  Page Title
</h1>
<h2 className="text-3xl font-semibold tracking-tight">
  Section Title
</h2>
```

After:
```jsx
<h1>Page Title</h1>
<h2>Section Title</h2>
```

## Output

- Components with clean heading tags
- Proper heading hierarchy
- Typography controlled by globals.css
