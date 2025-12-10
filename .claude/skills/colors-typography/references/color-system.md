# Color System Reference

## Complete CSS Variables

All variables use oklch format for better color manipulation.

### :root (Light Mode)

```css
:root {
    --radius: 0.625rem;
    --background: oklch(96.49% 0.003 197.10);
    --foreground: oklch(22.37% 0.010 196.44);
    --card: oklch(96.49% 0.003 197.10);
    --card-foreground: oklch(22.37% 0.010 196.44);
    --popover: oklch(96.49% 0.003 197.10);
    --popover-foreground: oklch(22.37% 0.010 196.44);
    --primary: oklch(74.5% 0.145 168.5);
    --primary-foreground: oklch(18.69% 0.006 196.63);
    --secondary: oklch(93.25% 0.014 180.69);
    --secondary-foreground: oklch(23.03% 0.019 178.52);
    --muted: oklch(92.87% 0.008 197.03);
    --muted-foreground: oklch(53.30% 0.028 196.34);
    --accent: oklch(81.58% 0.159 169.07);
    --accent-foreground: oklch(18.69% 0.006 196.63);
    --destructive: oklch(0.577 0.245 27.325);
    --border: oklch(85.46% 0.013 196.91);
    --input: oklch(85.46% 0.013 196.91);
    --ring: oklch(74.5% 0.145 168.5);
    --chart-1: oklch(74.5% 0.145 168.5);
    --chart-2: oklch(81.58% 0.159 169.07);
    --chart-3: oklch(66.15% 0.075 176.20);
    --chart-4: oklch(69.98% 0.106 269.62);
    --chart-5: oklch(84.17% 0.144 172.38);
    --sidebar: oklch(96.49% 0.003 197.10);
    --sidebar-foreground: oklch(22.37% 0.010 196.44);
    --sidebar-primary: oklch(74.5% 0.145 168.5);
    --sidebar-primary-foreground: oklch(18.69% 0.006 196.63);
    --sidebar-accent: oklch(92.87% 0.008 197.03);
    --sidebar-accent-foreground: oklch(22.37% 0.010 196.44);
    --sidebar-border: oklch(85.46% 0.013 196.91);
    --sidebar-ring: oklch(62.65% 0.035 196.30);
}
```

### .dark (Dark Mode)

```css
.dark {
    --background: oklch(18.69% 0.006 196.63);
    --foreground: oklch(96.49% 0.003 197.10);
    --card: oklch(22.37% 0.010 196.44);
    --card-foreground: oklch(96.49% 0.003 197.10);
    --popover: oklch(22.37% 0.010 196.44);
    --popover-foreground: oklch(96.49% 0.003 197.10);
    --primary: oklch(74.5% 0.145 168.5);
    --primary-foreground: oklch(18.69% 0.006 196.63);
    --secondary: oklch(33.37% 0.016 196.41);
    --secondary-foreground: oklch(96.49% 0.003 197.10);
    --muted: oklch(33.37% 0.016 196.41);
    --muted-foreground: oklch(62.65% 0.035 196.30);
    --accent: oklch(81.58% 0.159 169.07);
    --accent-foreground: oklch(18.69% 0.006 196.63);
    --destructive: oklch(0.704 0.191 22.216);
    --border: oklch(96.49% 0.003 197.10 / 10%);
    --input: oklch(96.49% 0.003 197.10 / 15%);
    --ring: oklch(74.5% 0.145 168.5);
    --chart-1: oklch(74.5% 0.145 168.5);
    --chart-2: oklch(69.18% 0.134 169.36);
    --chart-3: oklch(73.01% 0.062 177.14);
    --chart-4: oklch(79.99% 0.069 270.98);
    --chart-5: oklch(87.15% 0.117 174.79);
    --sidebar: oklch(22.37% 0.010 196.44);
    --sidebar-foreground: oklch(96.49% 0.003 197.10);
    --sidebar-primary: oklch(74.5% 0.145 168.5);
    --sidebar-primary-foreground: oklch(18.69% 0.006 196.63);
    --sidebar-accent: oklch(33.37% 0.016 196.41);
    --sidebar-accent-foreground: oklch(96.49% 0.003 197.10);
    --sidebar-border: oklch(96.49% 0.003 197.10 / 10%);
    --sidebar-ring: oklch(53.30% 0.028 196.34);
}
```

## Converting Colors

### Hex to OKLCH

Use online converters or CSS color tools:
- oklch.com
- colorjs.io

### Creating Palette from Primary

Given a primary color, derive:
- **background**: Very light version (L: 96%+)
- **foreground**: Very dark version (L: 20-25%)
- **primary**: The brand color (L: 70-80%)
- **secondary**: Muted version (L: 90-95%, low chroma)
- **accent**: Vibrant version (L: 80%+, high chroma)
- **muted**: Neutral gray (L: 90-95%, very low chroma)

### Foreground Rules

For each color, create a foreground that contrasts:
- Light backgrounds → dark foreground (L: 18-25%)
- Dark backgrounds → light foreground (L: 95%+)
