# Navbar Patterns Reference

## Complete Navbar Component Structure

```tsx
"use client";

import Link from "next/link";
import Image from "next/image";
import * as NavigationMenuPrimitive from "@radix-ui/react-navigation-menu";
import { Menu, ChevronDown } from "lucide-react";
import React from "react";
import { useTranslations } from "next-intl";

import { cn } from "@/lib/utils";
import {
  Accordion,
  AccordionContent,
  AccordionItem,
  AccordionTrigger,
} from "@/components/ui/accordion";
import { Button } from "@/components/ui/button";
import {
  NavigationMenu,
  NavigationMenuContent,
  NavigationMenuItem,
  NavigationMenuLink,
  NavigationMenuList,
  NavigationMenuTrigger,
} from "@/components/ui/navigation-menu";
import {
  Sheet,
  SheetContent,
  SheetHeader,
  SheetTitle,
  SheetTrigger,
} from "@/components/ui/sheet";

interface MenuItem {
  title: string;
  url: string;
  description?: string;
  icon?: React.ReactNode;
  items?: MenuItem[];
}

interface NavbarConfig {
  logo: {
    type: "text" | "image";
    url: string;
    title?: string;
    src?: string;
    alt?: string;
    width?: number;
    height?: number;
  };
  buttons: {
    showOutline: boolean;
    showPrimary: boolean;
  };
  background: "transparent" | "background" | "muted";
}

const Navbar = () => {
  const t = useTranslations("navbar");

  // Configuration
  const config: NavbarConfig = {
    logo: {
      type: "text",
      url: "/",
      title: t("logo"),
    },
    buttons: {
      showOutline: true,
      showPrimary: true,
    },
    background: "background",
  };

  // Menu items - configure from sitemap
  const menu: MenuItem[] = [
    { title: t("home"), url: "/" },
    {
      title: t("services"),
      url: "/dienstleistungen",
      items: [
        {
          title: t("servicesOverview"),
          description: t("servicesDescription"),
          url: "/dienstleistungen",
        },
        // Add more submenu items as needed
      ],
    },
    { title: t("about"), url: "/ueber-uns" },
    { title: t("contact"), url: "/kontakt" },
  ];

  // Button URLs
  const auth = {
    contact: { title: t("contact"), url: "/kontakt" },
    cta: { title: t("bookNow"), url: "/kontakt" },
  };

  const bgClass = {
    transparent: "bg-transparent",
    background: "bg-background",
    muted: "bg-muted",
  }[config.background];

  return (
    <section className={cn("py-4", bgClass)}>
      <div className="container">
        {/* Desktop Navigation */}
        <nav className="hidden justify-between lg:flex">
          {/* Logo */}
          <Link href={config.logo.url} className="flex items-center gap-2">
            {config.logo.type === "text" ? (
              <span className="font-serif text-xl">{config.logo.title}</span>
            ) : (
              <Image
                src={config.logo.src!}
                alt={config.logo.alt!}
                width={config.logo.width}
                height={config.logo.height}
              />
            )}
          </Link>

          {/* Menu Items */}
          <div className="flex items-center gap-6">
            <NavigationMenu>
              <NavigationMenuList>
                {menu.map((item) => renderMenuItem(item))}
              </NavigationMenuList>
            </NavigationMenu>
          </div>

          {/* Buttons */}
          <div className="flex gap-2">
            {config.buttons.showOutline && (
              <Button asChild variant="outline" size="sm">
                <Link href={auth.contact.url}>{auth.contact.title}</Link>
              </Button>
            )}
            {config.buttons.showPrimary && (
              <Button asChild size="sm">
                <Link href={auth.cta.url}>{auth.cta.title}</Link>
              </Button>
            )}
          </div>
        </nav>

        {/* Mobile Navigation */}
        <div className="block lg:hidden">
          <div className="flex items-center justify-between">
            <Link href={config.logo.url} className="flex items-center gap-2">
              <span className="font-serif text-xl">{config.logo.title}</span>
            </Link>
            <Sheet>
              <SheetTrigger asChild>
                <Button variant="outline" size="icon">
                  <Menu className="size-4" />
                </Button>
              </SheetTrigger>
              <SheetContent className="z-50 overflow-y-auto">
                <SheetHeader>
                  <SheetTitle>
                    <Link href={config.logo.url}>
                      <span className="font-serif text-xl">{config.logo.title}</span>
                    </Link>
                  </SheetTitle>
                </SheetHeader>
                <div className="flex flex-col gap-6 p-4">
                  <Accordion type="single" collapsible className="flex w-full flex-col gap-4">
                    {menu.map((item) => renderMobileMenuItem(item))}
                  </Accordion>
                  <div className="flex flex-col gap-3">
                    {config.buttons.showOutline && (
                      <Button asChild variant="outline">
                        <Link href={auth.contact.url}>{auth.contact.title}</Link>
                      </Button>
                    )}
                    {config.buttons.showPrimary && (
                      <Button asChild>
                        <Link href={auth.cta.url}>{auth.cta.title}</Link>
                      </Button>
                    )}
                  </div>
                </div>
              </SheetContent>
            </Sheet>
          </div>
        </div>
      </div>
    </section>
  );
};

// Desktop menu item renderer
const renderMenuItem = (item: MenuItem) => {
  if (item.items && item.items.length > 0) {
    return (
      <NavigationMenuItem key={item.title}>
        <NavigationMenuTrigger>{item.title}</NavigationMenuTrigger>
        <NavigationMenuContent className="z-50 bg-popover p-4 rounded-md border shadow-lg">
          <ul className="grid w-[300px] gap-2">
            {item.items.map((subItem) => (
              <li key={subItem.title}>
                <NavigationMenuLink asChild>
                  <Link
                    href={subItem.url}
                    className="block select-none rounded-md p-3 leading-none no-underline outline-none transition-colors hover:bg-accent hover:text-accent-foreground"
                  >
                    <div className="text-sm font-medium">{subItem.title}</div>
                    {subItem.description && (
                      <p className="text-muted-foreground mt-1 text-sm">
                        {subItem.description}
                      </p>
                    )}
                  </Link>
                </NavigationMenuLink>
              </li>
            ))}
          </ul>
        </NavigationMenuContent>
      </NavigationMenuItem>
    );
  }

  return (
    <NavigationMenuItem key={item.title}>
      <NavigationMenuLink asChild>
        <Link
          href={item.url}
          className="bg-background hover:bg-muted hover:text-accent-foreground group inline-flex h-10 w-max items-center justify-center rounded-md px-4 py-2 text-sm font-medium transition-colors"
        >
          {item.title}
        </Link>
      </NavigationMenuLink>
    </NavigationMenuItem>
  );
};

// Mobile menu item renderer
const renderMobileMenuItem = (item: MenuItem) => {
  if (item.items && item.items.length > 0) {
    return (
      <AccordionItem key={item.title} value={item.title} className="border-b-0">
        <AccordionTrigger className="text-md py-0 font-semibold hover:no-underline">
          {item.title}
        </AccordionTrigger>
        <AccordionContent className="mt-2">
          {item.items.map((subItem) => (
            <Link
              key={subItem.title}
              href={subItem.url}
              className="block py-2 text-muted-foreground hover:text-foreground"
            >
              {subItem.title}
            </Link>
          ))}
        </AccordionContent>
      </AccordionItem>
    );
  }

  return (
    <Link key={item.title} href={item.url} className="text-md font-semibold">
      {item.title}
    </Link>
  );
};

export { Navbar };
```

## Z-Index Hierarchy

For proper layering, use these z-index values:

| Element | Z-Index | Purpose |
|---------|---------|---------|
| Page content | z-0 (default) | Regular content |
| Section overlays | z-10 | Overlay elements |
| Fixed elements | z-30 | Sticky headers, etc. |
| Dropdown menus | z-50 | Navigation dropdowns |
| Mobile sheet | z-50 | Mobile navigation |
| Modals | z-[100] | Dialog overlays |

## Link Types

### Internal Links (Next.js Link)

```tsx
import Link from "next/link";

// Page links
<Link href="/dienstleistungen">Services</Link>

// Anchor links (same page)
<Link href="#contact">Contact Section</Link>

// Anchor links (other page)
<Link href="/dienstleistungen#haare">Hair Services</Link>
```

### External Links

```tsx
// External links use <a> with security attributes
<a
  href="https://instagram.com/salon"
  target="_blank"
  rel="noopener noreferrer"
>
  Instagram
</a>
```

## Common Issues and Fixes

### Dropdown Hidden Behind Content

**Problem:** NavigationMenuContent appears behind page sections.

**Fix:** Add z-50 to NavigationMenuContent:
```tsx
<NavigationMenuContent className="z-50 ...">
```

### Mobile Menu Not Scrolling

**Problem:** Long mobile menu content cuts off.

**Fix:** Add overflow-y-auto to SheetContent:
```tsx
<SheetContent className="z-50 overflow-y-auto">
```

### Links Not Working in NavigationMenu

**Problem:** Regular Link components don't work inside NavigationMenuLink.

**Fix:** Use asChild pattern:
```tsx
<NavigationMenuLink asChild>
  <Link href="/page">Page</Link>
</NavigationMenuLink>
```

### Button Not Navigating

**Problem:** Button click doesn't navigate.

**Fix:** Use asChild with Link:
```tsx
<Button asChild>
  <Link href="/contact">Contact</Link>
</Button>
```

## i18n Keys Template

### German (de.json)

```json
{
  "navbar": {
    "logo": "Salon Elegance",
    "logoAlt": "Salon Elegance Logo",
    "home": "Startseite",
    "services": "Dienstleistungen",
    "servicesOverview": "Übersicht",
    "servicesDescription": "Alle unsere Dienstleistungen",
    "about": "Über uns",
    "contact": "Kontakt",
    "bookNow": "Termin buchen"
  }
}
```

### English (en.json)

```json
{
  "navbar": {
    "logo": "Salon Elegance",
    "logoAlt": "Salon Elegance Logo",
    "home": "Home",
    "services": "Services",
    "servicesOverview": "Overview",
    "servicesDescription": "All our services",
    "about": "About Us",
    "contact": "Contact",
    "bookNow": "Book Now"
  }
}
```
