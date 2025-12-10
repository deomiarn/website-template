# Next.js Image Patterns

## Import

```tsx
import Image from 'next/image';
```

## Fixed-Size Images

For images with known dimensions (testimonials, avatars, logos):

```tsx
<Image
  src="/images/home/testimonial-customer.webp"
  alt={t('testimonials.items.0.imageAlt')}
  width={288}
  height={288}
  className="object-cover object-top"
/>
```

## Fill Images

For images that fill their container (hero backgrounds, project thumbnails):

```tsx
<div className="relative h-[50vh] w-full">
  <Image
    src="/images/home/project-ecommerce.webp"
    alt={t('projects.items.0.imageAlt')}
    fill
    className="object-cover"
    sizes="(max-width: 768px) 100vw, 50vw"
  />
</div>
```

**Note:** Parent must have `position: relative` and defined dimensions.

## CSS Background Replacement

Replace `bg-[url(...)]` with Image component for SEO:

**Before:**
```tsx
<section className="bg-[url('https://cdn.example.com/hero.jpg')] bg-cover">
  <div className="relative z-10">Content</div>
</section>
```

**After:**
```tsx
<section className="relative">
  <Image
    src="/images/home/hero-background.webp"
    alt=""
    fill
    className="object-cover"
    sizes="100vw"
    priority
  />
  <div className="absolute inset-0 bg-gradient-to-t from-black/75" />
  <div className="relative z-10">Content</div>
</section>
```

## Priority for LCP

Add `priority` to above-the-fold images (hero, first visible):

```tsx
<Image
  src="/images/home/hero.webp"
  alt={t('hero.imageAlt')}
  fill
  className="object-cover"
  sizes="100vw"
  priority
/>
```

## Sizes Prop Reference

| Layout | sizes value |
|--------|-------------|
| Full width | `100vw` |
| Half width on desktop | `(max-width: 768px) 100vw, 50vw` |
| Third width on desktop | `(max-width: 768px) 100vw, 33vw` |
| Fixed container | `(max-width: 768px) 100vw, 600px` |

## Replace CDN URLs

**Before:**
```tsx
<img
  src="https://deifkwefumgah.cloudfront.net/shadcnblocks/block/photo.jpg"
  alt="Description"
  className="h-full w-full object-cover"
/>
```

**After:**
```tsx
<Image
  src="/images/home/photo.webp"
  alt={t('section.imageAlt')}
  fill
  className="object-cover"
  sizes="100vw"
/>
```

## Common Patterns by Section

| Section | Pattern | Props |
|---------|---------|-------|
| Hero background | Fill + priority | `fill sizes="100vw" priority` |
| Project thumbnail | Fill | `fill sizes="(max-width: 768px) 100vw, 50vw"` |
| Testimonial avatar | Fixed | `width={288} height={288}` |
| Feature image | Fill | `fill sizes="(max-width: 768px) 100vw, 420px"` |
| Logo | Fixed | `width={120} height={40}` |
| CTA background | Fill + priority | `fill sizes="100vw" priority` |
