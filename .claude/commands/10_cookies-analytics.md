---
description: Step 10 - Set up Google Analytics 4 with DSGVO-compliant cookie consent (optional)
---

# Step 10: Cookies & Analytics

**Use the `cookies-analytics` skill to complete this task.**

This step is OPTIONAL - only run if analytics tracking is needed.

---

## TASK

Set up GA4 with DSGVO-compliant cookie consent:

1. **Cookie Consent Banner:**
   - Create components/cookie-consent.tsx
   - "Nur notwendige" and "Alle akzeptieren" buttons
   - Store consent in localStorage

2. **Google Analytics 4:**
   - Only load after user consent
   - Add NEXT_PUBLIC_GA_ID to .env.local

3. **Layout Integration:**
   - Add CookieConsent component to layout

4. **Datenschutz Update:**
   - Add Google Analytics section to Datenschutz page

5. **Test:**
   - Banner displays on first visit
   - "Nur notwendige" does NOT load GA
   - "Alle akzeptieren" loads GA
   - Consent persists across visits

---

Done: Analytics tracking configured with DSGVO compliance.
