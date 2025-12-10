# Footer Patterns Reference

## Complete Footer Component Structure

```tsx
"use client";

import Link from "next/link";
import { Instagram, Facebook, Phone, Mail, MapPin, ArrowUpRight } from "lucide-react";
import { useTranslations } from "next-intl";

const Footer = () => {
  const t = useTranslations("footer");

  // Navigation - All main pages (SEO important)
  const navigation = [
    { name: t("navigation.home"), href: "/" },
    { name: t("navigation.services"), href: "/dienstleistungen" },
    { name: t("navigation.about"), href: "/ueber-uns" },
    { name: t("navigation.contact"), href: "/kontakt" },
  ];

  // Services - Subsections (optional, for more internal links)
  const services = [
    { name: t("services.hair"), href: "/dienstleistungen#haare" },
    { name: t("services.nails"), href: "/dienstleistungen#naegel" },
    { name: t("services.facials"), href: "/dienstleistungen#gesicht" },
  ];

  // Legal - Required pages
  const legal = [
    { name: t("legal.privacy"), href: "/datenschutz" },
    { name: t("legal.imprint"), href: "/impressum" },
  ];

  // Social - External links
  const social = [
    {
      name: t("social.instagram"),
      href: "https://instagram.com/salonelegance",
      icon: Instagram,
    },
    {
      name: t("social.facebook"),
      href: "https://facebook.com/salonelegance",
      icon: Facebook,
    },
  ];

  // Contact info
  const contact = {
    phone: "+41 44 XXX XX XX",
    email: "info@salon-elegance.ch",
    address: "Musterstrasse 123, 8001 Zürich",
  };

  return (
    <footer className="bg-foreground text-background">
      <div className="container py-16 lg:py-24">
        {/* Top Section - Links Grid */}
        <div className="grid gap-8 md:grid-cols-2 lg:grid-cols-4">
          {/* Brand Column */}
          <div className="lg:col-span-1">
            <Link href="/" className="font-serif text-2xl">
              {t("brand")}
            </Link>
            <p className="mt-4 max-w-xs text-sm text-background/70">
              {t("tagline")}
            </p>
          </div>

          {/* Navigation Column */}
          <div>
            <h4 className="mb-4 font-semibold">{t("navigation.title")}</h4>
            <ul className="space-y-3">
              {navigation.map((item) => (
                <li key={item.name}>
                  <Link
                    href={item.href}
                    className="text-background/70 transition-colors hover:text-background"
                  >
                    {item.name}
                  </Link>
                </li>
              ))}
            </ul>
          </div>

          {/* Services Column */}
          <div>
            <h4 className="mb-4 font-semibold">{t("services.title")}</h4>
            <ul className="space-y-3">
              {services.map((item) => (
                <li key={item.name}>
                  <Link
                    href={item.href}
                    className="text-background/70 transition-colors hover:text-background"
                  >
                    {item.name}
                  </Link>
                </li>
              ))}
            </ul>
          </div>

          {/* Contact Column */}
          <div>
            <h4 className="mb-4 font-semibold">{t("contact.title")}</h4>
            <ul className="space-y-3">
              <li className="flex items-center gap-2 text-background/70">
                <Phone className="size-4" />
                <a href={`tel:${contact.phone.replace(/\s/g, "")}`}>
                  {contact.phone}
                </a>
              </li>
              <li className="flex items-center gap-2 text-background/70">
                <Mail className="size-4" />
                <a href={`mailto:${contact.email}`}>{contact.email}</a>
              </li>
              <li className="flex items-start gap-2 text-background/70">
                <MapPin className="mt-0.5 size-4 shrink-0" />
                <span>{contact.address}</span>
              </li>
            </ul>
          </div>
        </div>

        {/* Divider */}
        <div className="mt-12 border-t border-background/20 pt-8">
          <div className="flex flex-col items-center justify-between gap-4 md:flex-row">
            {/* Legal Links */}
            <ul className="flex gap-6">
              {legal.map((item) => (
                <li key={item.name}>
                  <Link
                    href={item.href}
                    className="text-sm text-background/50 transition-colors hover:text-background/70"
                  >
                    {item.name}
                  </Link>
                </li>
              ))}
            </ul>

            {/* Social Links */}
            <ul className="flex gap-4">
              {social.map((item) => (
                <li key={item.name}>
                  <a
                    href={item.href}
                    target="_blank"
                    rel="noopener noreferrer"
                    className="flex items-center gap-1 text-background/70 transition-colors hover:text-background"
                  >
                    <item.icon className="size-5" />
                    <span className="sr-only">{item.name}</span>
                  </a>
                </li>
              ))}
            </ul>

            {/* Copyright */}
            <p className="text-sm text-background/50">{t("copyright")}</p>
          </div>
        </div>
      </div>
    </footer>
  );
};

export { Footer };
```

## Alternative Layout: Centered Minimal

For simpler footer designs:

```tsx
const FooterMinimal = () => {
  const t = useTranslations("footer");

  const allLinks = [
    { name: t("navigation.home"), href: "/" },
    { name: t("navigation.services"), href: "/dienstleistungen" },
    { name: t("navigation.about"), href: "/ueber-uns" },
    { name: t("navigation.contact"), href: "/kontakt" },
    { name: t("legal.privacy"), href: "/datenschutz" },
    { name: t("legal.imprint"), href: "/impressum" },
  ];

  return (
    <footer className="bg-foreground py-16 text-background">
      <div className="container text-center">
        {/* All Links */}
        <nav className="mb-8 flex flex-wrap justify-center gap-6">
          {allLinks.map((item) => (
            <Link
              key={item.name}
              href={item.href}
              className="text-background/70 transition-colors hover:text-background"
            >
              {item.name}
            </Link>
          ))}
        </nav>

        {/* Brand */}
        <p className="mb-4 font-serif text-4xl md:text-6xl">{t("brand")}</p>

        {/* Copyright */}
        <p className="text-sm text-background/50">{t("copyright")}</p>
      </div>
    </footer>
  );
};
```

## SEO Best Practices

### All Pages Must Be Linked

Every page in the sitemap should have at least one footer link:

| Page | Route | Footer Group |
|------|-------|--------------|
| Homepage | `/` | Navigation |
| Services | `/dienstleistungen` | Navigation |
| About | `/ueber-uns` | Navigation |
| Contact | `/kontakt` | Navigation |
| Privacy | `/datenschutz` | Legal |
| Imprint | `/impressum` | Legal |

### Link Attributes

```tsx
// Internal links - use Next.js Link
<Link href="/page">Page</Link>

// External links - add security attributes
<a
  href="https://external.com"
  target="_blank"
  rel="noopener noreferrer"
>
  External
</a>
```

### Semantic Structure

Use proper semantic elements:

```tsx
<footer>           {/* Footer landmark */}
  <nav>            {/* Navigation landmark for link groups */}
  <address>        {/* Contact information */}
</footer>
```

## Accessibility Considerations

### Screen Reader Labels

```tsx
// Social icons need text for screen readers
<a href="..." aria-label="Follow us on Instagram">
  <Instagram className="size-5" />
</a>

// Or use sr-only text
<a href="...">
  <Instagram className="size-5" />
  <span className="sr-only">Instagram</span>
</a>
```

### Color Contrast

Ensure text colors meet WCAG AA standards:

```tsx
// Primary text: text-background (full contrast)
// Secondary text: text-background/70 (70% opacity - verify contrast)
// Tertiary text: text-background/50 (only for non-essential info)
```

## i18n Keys Template

### German (de.json)

```json
{
  "footer": {
    "brand": "Salon Elegance",
    "tagline": "Ihr Salon in Zürich",
    "navigation": {
      "title": "Navigation",
      "home": "Startseite",
      "services": "Dienstleistungen",
      "about": "Über uns",
      "contact": "Kontakt"
    },
    "services": {
      "title": "Dienstleistungen",
      "hair": "Haare",
      "nails": "Nägel",
      "facials": "Gesicht"
    },
    "legal": {
      "title": "Rechtliches",
      "privacy": "Datenschutz",
      "imprint": "Impressum"
    },
    "social": {
      "title": "Social Media",
      "instagram": "Instagram",
      "facebook": "Facebook"
    },
    "contact": {
      "title": "Kontakt",
      "phone": "Telefon",
      "email": "E-Mail",
      "address": "Adresse"
    },
    "copyright": "© 2024 Salon Elegance Zürich. Alle Rechte vorbehalten."
  }
}
```

### English (en.json)

```json
{
  "footer": {
    "brand": "Salon Elegance",
    "tagline": "Your salon in Zurich",
    "navigation": {
      "title": "Navigation",
      "home": "Home",
      "services": "Services",
      "about": "About Us",
      "contact": "Contact"
    },
    "services": {
      "title": "Services",
      "hair": "Hair",
      "nails": "Nails",
      "facials": "Facials"
    },
    "legal": {
      "title": "Legal",
      "privacy": "Privacy Policy",
      "imprint": "Legal Notice"
    },
    "social": {
      "title": "Social Media",
      "instagram": "Instagram",
      "facebook": "Facebook"
    },
    "contact": {
      "title": "Contact",
      "phone": "Phone",
      "email": "Email",
      "address": "Address"
    },
    "copyright": "© 2024 Salon Elegance Zurich. All rights reserved."
  }
}
```
