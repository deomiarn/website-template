---
description: Standardize button heights, padding, and transitions across all variants
---

# Button Unification

**Use the `button-unification` skill to complete this task.**

## TASK

Update the button component in `website/components/ui/button.tsx` to ensure all variants have unified styling:

1. **Unified Heights per Size:**
   - default: h-9 (36px)
   - sm: h-8 (32px)
   - lg: h-10 (40px)

2. **Unified Padding per Size:**
   - default: px-4, has-[>svg]:px-3
   - sm: px-3, has-[>svg]:px-2.5
   - lg: px-6, has-[>svg]:px-4

3. **Unified Border-Radius:**
   - All variants: rounded-md

4. **Unified Transitions:**
   - All variants: transition-all

5. **Unified Font:**
   - All variants: text-sm font-medium

6. **Unified Gap:**
   - default/lg: gap-2
   - sm: gap-1.5

7. **Icon Button Sizes:**
   - icon: size-9
   - icon-sm: size-8
   - icon-lg: size-10

After updating, verify by placing different variant buttons side by side - they should have identical heights and align perfectly.

Next: Continue with /navbar-config or /footer-config
