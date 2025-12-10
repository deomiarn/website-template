# Button Patterns Reference

## Complete Unified Button Component

```tsx
import * as React from "react";
import { Slot } from "@radix-ui/react-slot";
import { cva, type VariantProps } from "class-variance-authority";

import { cn } from "@/lib/utils";

const buttonVariants = cva(
  // BASE STYLES - Applied to ALL button variants
  [
    // Layout
    "inline-flex items-center justify-center",
    "gap-2",
    "whitespace-nowrap",
    "shrink-0",

    // Typography
    "text-sm font-medium",

    // Shape
    "rounded-md",

    // Transitions
    "transition-all duration-150",

    // Disabled state
    "disabled:pointer-events-none disabled:opacity-50",

    // Icon sizing
    "[&_svg]:pointer-events-none",
    "[&_svg:not([class*='size-'])]:size-4",
    "[&_svg]:shrink-0",

    // Focus ring
    "outline-none",
    "focus-visible:border-ring",
    "focus-visible:ring-ring/50",
    "focus-visible:ring-[3px]",

    // Error state
    "aria-invalid:ring-destructive/20",
    "dark:aria-invalid:ring-destructive/40",
    "aria-invalid:border-destructive",
  ].join(" "),
  {
    variants: {
      // VARIANT STYLES - Colors and backgrounds
      variant: {
        default: "bg-primary text-primary-foreground hover:bg-primary/90",

        destructive: [
          "bg-destructive text-white hover:bg-destructive/90",
          "focus-visible:ring-destructive/20",
          "dark:focus-visible:ring-destructive/40",
          "dark:bg-destructive/60",
        ].join(" "),

        outline: [
          "border bg-background shadow-xs",
          "hover:bg-accent hover:text-accent-foreground",
          "dark:bg-input/30 dark:border-input dark:hover:bg-input/50",
        ].join(" "),

        secondary: "bg-secondary text-secondary-foreground hover:bg-secondary/80",

        ghost: "hover:bg-accent hover:text-accent-foreground dark:hover:bg-accent/50",

        link: "text-primary underline-offset-4 hover:underline",
      },

      // SIZE STYLES - Dimensions and spacing
      size: {
        // Default: h-9 (36px)
        default: "h-9 px-4 py-2 has-[>svg]:px-3",

        // Small: h-8 (32px)
        sm: "h-8 px-3 gap-1.5 has-[>svg]:px-2.5",

        // Large: h-10 (40px)
        lg: "h-10 px-6 has-[>svg]:px-4",

        // Icon buttons (square)
        icon: "size-9",
        "icon-sm": "size-8",
        "icon-lg": "size-10",
      },
    },
    defaultVariants: {
      variant: "default",
      size: "default",
    },
  }
);

function Button({
  className,
  variant,
  size,
  asChild = false,
  ...props
}: React.ComponentProps<"button"> &
  VariantProps<typeof buttonVariants> & {
    asChild?: boolean;
  }) {
  const Comp = asChild ? Slot : "button";

  return (
    <Comp
      data-slot="button"
      className={cn(buttonVariants({ variant, size, className }))}
      {...props}
    />
  );
}

export { Button, buttonVariants };
```

## Size Comparison Table

| Property | default | sm | lg |
|----------|---------|-----|-----|
| Height | h-9 (36px) | h-8 (32px) | h-10 (40px) |
| Horizontal Padding | px-4 (16px) | px-3 (12px) | px-6 (24px) |
| With Icon Padding | px-3 (12px) | px-2.5 (10px) | px-4 (16px) |
| Gap | gap-2 (8px) | gap-1.5 (6px) | gap-2 (8px) |
| Border Radius | rounded-md | rounded-md | rounded-md |
| Font Size | text-sm | text-sm | text-sm |
| Font Weight | font-medium | font-medium | font-medium |

## Icon Button Sizes

| Size | Dimensions |
|------|------------|
| icon | size-9 (36x36px) |
| icon-sm | size-8 (32x32px) |
| icon-lg | size-10 (40x40px) |

## Usage Examples

### Basic Usage

```tsx
import { Button } from "@/components/ui/button";

// Default variant, default size
<Button>Click me</Button>

// Outline variant, small size
<Button variant="outline" size="sm">Cancel</Button>

// Primary with icon
<Button>
  <Plus className="size-4" />
  Add Item
</Button>

// Icon-only button
<Button variant="ghost" size="icon">
  <Settings className="size-4" />
</Button>
```

### With Next.js Link (REQUIRED for navigation)

When a button needs to navigate, always use the `asChild` prop with Next.js `<Link>`:

```tsx
import Link from "next/link";
import { Button } from "@/components/ui/button";

// Correct pattern - Button wraps Link with asChild
<Button asChild>
  <Link href="/login">Login</Link>
</Button>

<Button asChild variant="outline" size="sm">
  <Link href="/contact">Contact</Link>
</Button>

<Button asChild variant="ghost" size="icon">
  <Link href="/settings">
    <Settings className="size-4" />
  </Link>
</Button>

// With i18n
<Button asChild>
  <Link href="/kontakt">{t("bookNow")}</Link>
</Button>
```

**Key points:**
- Always use `asChild` prop when wrapping Link
- Link is the child, Button provides styling
- Works with all variants and sizes
- Preserves Next.js client-side navigation

**DO NOT do this:**

```tsx
// WRONG - Button onClick with router.push (loses prefetching)
<Button onClick={() => router.push('/login')}>Login</Button>

// WRONG - Link wrapping Button (double nesting)
<Link href="/login"><Button>Login</Button></Link>

// WRONG - <a> tag instead of Link (loses Next.js benefits)
<Button asChild>
  <a href="/login">Login</a>
</Button>
```

### Button Row Alignment

```tsx
// Buttons in a row should align perfectly
<div className="flex gap-2">
  <Button>Primary</Button>
  <Button variant="outline">Outline</Button>
  <Button variant="secondary">Secondary</Button>
</div>

// Different sizes should align to bottom
<div className="flex items-end gap-2">
  <Button size="lg">Large</Button>
  <Button size="default">Default</Button>
  <Button size="sm">Small</Button>
</div>
```

## Testing Checklist

### Visual Alignment Test

Place buttons side by side and verify:

```tsx
<div className="flex gap-2 items-center p-4 border">
  <Button variant="default">Default</Button>
  <Button variant="outline">Outline</Button>
  <Button variant="secondary">Secondary</Button>
  <Button variant="ghost">Ghost</Button>
</div>
```

Expected: All buttons have identical height and vertical alignment.

### Size Consistency Test

```tsx
<div className="space-y-4">
  <div className="flex gap-2">
    <Button size="sm" variant="default">Small</Button>
    <Button size="sm" variant="outline">Small</Button>
    <Button size="sm" variant="secondary">Small</Button>
  </div>
  <div className="flex gap-2">
    <Button size="default" variant="default">Default</Button>
    <Button size="default" variant="outline">Default</Button>
    <Button size="default" variant="secondary">Default</Button>
  </div>
  <div className="flex gap-2">
    <Button size="lg" variant="default">Large</Button>
    <Button size="lg" variant="outline">Large</Button>
    <Button size="lg" variant="secondary">Large</Button>
  </div>
</div>
```

Expected: Each row has identical heights.

## Common Issues and Fixes

### Issue: Outline button appears taller

**Cause:** Border adds to height if not accounted for.

**Fix:** The height classes (h-9, h-8, h-10) include border in box-sizing by default with Tailwind's border-box.

### Issue: Link variant has different height

**Cause:** Link variant might not have explicit height.

**Fix:** Link variant should still use the same height class for consistency.

### Issue: Icon buttons not square

**Cause:** Using h-9 without w-9.

**Fix:** Use size-9 which sets both width and height.

### Issue: Inconsistent hover transitions

**Cause:** Different transition properties per variant.

**Fix:** Use `transition-all` in base class for all variants.
