---
name: Clinical Clarity
colors:
  surface: '#f8f9ff'
  surface-dim: '#cddbf0'
  surface-bright: '#f8f9ff'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#eef4ff'
  surface-container: '#e4efff'
  surface-container-high: '#dbe9ff'
  surface-container-highest: '#d5e4f9'
  on-surface: '#0e1d2c'
  on-surface-variant: '#3f484f'
  inverse-surface: '#233142'
  inverse-on-surface: '#e9f1ff'
  outline: '#6f7880'
  outline-variant: '#bfc8d0'
  surface-tint: '#00658d'
  primary: '#00658d'
  on-primary: '#ffffff'
  primary-container: '#4da8da'
  on-primary-container: '#003a53'
  inverse-primary: '#82cfff'
  secondary: '#00639b'
  on-secondary: '#ffffff'
  secondary-container: '#7ec1ff'
  on-secondary-container: '#004f7d'
  tertiary: '#556066'
  on-tertiary: '#ffffff'
  tertiary-container: '#95a1a7'
  on-tertiary-container: '#2d383d'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#c6e7ff'
  primary-fixed-dim: '#82cfff'
  on-primary-fixed: '#001e2d'
  on-primary-fixed-variant: '#004c6b'
  secondary-fixed: '#cee5ff'
  secondary-fixed-dim: '#97cbff'
  on-secondary-fixed: '#001d33'
  on-secondary-fixed-variant: '#004a76'
  tertiary-fixed: '#d8e4eb'
  tertiary-fixed-dim: '#bcc8cf'
  on-tertiary-fixed: '#121d22'
  on-tertiary-fixed-variant: '#3d484e'
  background: '#f8f9ff'
  on-background: '#0e1d2c'
  surface-variant: '#d5e4f9'
typography:
  display:
    fontFamily: Plus Jakarta Sans
    fontSize: 48px
    fontWeight: '700'
    lineHeight: 56px
    letterSpacing: -0.02em
  display-mobile:
    fontFamily: Plus Jakarta Sans
    fontSize: 36px
    fontWeight: '700'
    lineHeight: 44px
    letterSpacing: -0.02em
  headline-lg:
    fontFamily: Plus Jakarta Sans
    fontSize: 32px
    fontWeight: '700'
    lineHeight: 40px
    letterSpacing: -0.015em
  headline-lg-mobile:
    fontFamily: Plus Jakarta Sans
    fontSize: 26px
    fontWeight: '600'
    lineHeight: 34px
    letterSpacing: -0.01em
  headline-md:
    fontFamily: Plus Jakarta Sans
    fontSize: 24px
    fontWeight: '600'
    lineHeight: 32px
    letterSpacing: -0.01em
  headline-sm:
    fontFamily: Plus Jakarta Sans
    fontSize: 20px
    fontWeight: '600'
    lineHeight: 28px
  body-lg:
    fontFamily: Inter
    fontSize: 18px
    fontWeight: '400'
    lineHeight: 28px
  body-md:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
  body-sm:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '400'
    lineHeight: 20px
  label-lg:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '600'
    lineHeight: 20px
    letterSpacing: 0.01em
  label-md:
    fontFamily: Inter
    fontSize: 12px
    fontWeight: '600'
    lineHeight: 16px
    letterSpacing: 0.02em
  label-sm:
    fontFamily: Inter
    fontSize: 11px
    fontWeight: '600'
    lineHeight: 14px
    letterSpacing: 0.03em
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  gutter: 1.5rem
  gutter-mobile: 1rem
  margin: 2rem
  margin-mobile: 1rem
  space-xs: 0.25rem
  space-sm: 0.5rem
  space-md: 1rem
  space-lg: 1.5rem
  space-xl: 2.5rem
---

## Brand & Style
The brand voice projects world-class clinical precision, approachable warmth, and unwavering hygiene. Operating in Kot Addu, Pakistan, the design system bridges accessible local care with high-tier international dental standards. The interface must immediately dissolve patient anxiety through generous negative space, serene oceanic tones, and structural order.

The visual direction combines **Modern Clinical Minimalism** with **Soft Tactility**:
- **Tone:** Empathetic, immaculate, authoritative, reassuring.
- **Atmosphere:** Sunlit surgical suites, polished architectural glass, and refined medical clarity.
- **Visual anchors:** High-clarity micro-details, trust markers, verified doctor accreditations, and crisp typographic hierarchy.

## Colors
The palette evokes sterilised purity, calm waters, and deep clinical stability. Pure white and soft glacial tints dominate the background canvas to maximize perceived cleanliness and optical breathing room.

- **Primary Accent (`#4DA8DA`):** Fresh sky-cerulean used for primary actions, active indicators, and high-priority visual cues.
- **Secondary (`#1E6FA8`):** Deep oceanic navy applied to interaction states (hover, focus rings), text links, and prominent callouts requiring sustained trust.
- **Tertiary Tint (`#E8F4FB`):** Soft luminous blue wash dedicated to section highlights, badge fills, and structural alternations.
- **Surface Canvas (`#FFFFFF` & `#F8FAFC`):** Base canvas environments. `#FFFFFF` drives pure elevated cards; `#F8FAFC` grounds structural page sections.
- **Typography Neutrals:** Deep navy-slate (`#1F2D3D`) preserves strong contrast without the severity of pure black; muted slate (`#64748B`) handles captions, metadata, and secondary disclosures.
- **Borders & Partitions:** Subtle cool grey (`#E2E8F0`) for general containment and soft sky tint (`#BAE6FD`) for highlighted card borders or active field definitions.

## Typography
The system employs **Plus Jakarta Sans** for headlines to convey modern warmth, geometric balance, and reassuring presence. For body copy, data tables, and medical records, **Inter** provides objective, legible, and uncompromised rendering across all screen densities.

- Use negative letter tracking on headings (`-0.01em` to `-0.02em`) to maintain tightness and editorial confidence.
- Body copy should never drop below 14px for critical patient details, medication instructions, and clinical timings.
- Accreditations, status indicators, and operational hours use uppercase or small-caps styling via `label-sm` or `label-md`.

## Layout & Spacing
The layout follows a fluid 12-column grid on desktop and tablet, adapting to a 4-column flow on mobile viewports.

- **Desktop (1024px+):** 12 columns, 1.5rem (`24px`) gutters, with page margins set to an expansive max-width container of 1280px padded by 2rem (`32px`) lateral margins.
- **Tablet (640px – 1023px):** 8 columns, 1.25rem (`20px`) gutters, 1.5rem (`24px`) outer margin.
- **Mobile (<640px):** 4 columns, 1rem (`16px`) gutters, 1rem (`16px`) outer margins. Reflow two-column card grids into single vertical sequences.

Vertical rhythm relies heavily on `space-lg` and `space-xl` to enforce a sense of roominess, eliminating cramped UI configurations that provoke subconscious clutter and stress.

## Elevation & Depth
Depth mimics architectural light passing through clear medical partitions. No harsh grey or black drop shadows are permitted; all shadows utilize cool slate-tinted ambient casts with wide blur radii and faint opacity.

- **Level 0 (Flat):** Zero shadow. Elements sit on `#F8FAFC` or `#FFFFFF` bounded by an `#E2E8F0` border.
- **Level 1 (Subtle / Card Baseline):** `0 2px 8px -2px rgba(30, 111, 168, 0.05), 0 1px 4px -1px rgba(31, 45, 61, 0.04)`. Used for resting state treatment cards, patient review panels, and consultation slots.
- **Level 2 (Interactive Hover & Modals):** `0 12px 24px -4px rgba(30, 111, 168, 0.08), 0 4px 8px -2px rgba(31, 45, 61, 0.03)`. Applied to hovered procedure cards, appointment booking sheets, and clinical notification toasts.
- **Surface Layering:** Elevated surfaces use pure white (`#FFFFFF`) against soft tinted page segments (`#E8F4FB` or `#F8FAFC`) to visually separate actionable tools from structural backdrops.

## Shapes
To reinforce an approachable, friendly, yet rigorous atmosphere, standard containers and interactable components follow a generous rounded radius. 

- **Primary Cards & Containers:** 1rem (`16px`, equivalent to `rounded-2xl`) for a soft, reassuring perimeter.
- **Buttons, Inputs, & Chips:** 0.5rem (`8px`) for structured interactives, balancing precision with tactile comfort.
- **Trust Badges & Status Pills:** Full-radius pill shapes (`9999px`) to distinguish clinical tags, doctor verification seals, and operating badges from standard utility boxes.

## Components

### Buttons
- **Primary:** Background `#4DA8DA`, text `#FFFFFF`, font weight 600. On hover, background shifts to `#1E6FA8` with a transition of 150ms ease-in-out. Padding: `12px 24px`. Corner radius: `8px`.
- **Secondary / Outline:** Background transparent, border `1.5px solid #BAE6FD`, text `#1E6FA8`. On hover, background `#E8F4FB`.
- **Ghost:** Text `#1E6FA8`, no border. Background shifts to `#E8F4FB` on hover.

### Badges & Trust Credentials
- **Credential Pill:** Background `#E8F4FB`, border `1px solid #BAE6FD`, text `#1E6FA8`, uppercase `11px` label with an embedded verification icon (e.g., checkmark or medical cross). Full-radius (`9999px`).
- **Emergency / Active Pill:** Subtle mint/green or soft azure indicator dot with live ping animation alongside clinic status text.

### Cards
- **Procedure & Service Cards:** `#FFFFFF` background, `16px` rounded corners, `1px solid #E2E8F0` border, resting Level 1 elevation. Hover transitions to `1px solid #BAE6FD` with Level 2 elevation and a subtle `-2px` vertical translation.
- **Doctor Profile Card:** Split layout featuring high-resolution photography on a soft `#E8F4FB` base, verified PMDC/specialty credentials pill, and direct one-click WhatsApp/Call appointment triggers.

### Form Inputs
- **Text & Date Pickers:** Background `#FFFFFF`, height `48px`, border `1.5px solid #E2E8F0`, corner radius `8px`, typography `Inter 16px` with color `#1F2D3D`. Placeholder in `#64748B`.
- **Focus State:** Border shifts to `#4DA8DA` with an ambient glow ring: `0 0 0 3px rgba(77, 168, 218, 0.20)`.

### Checkboxes & Radio Buttons
- Base border `1.5px solid #CBD5E1`, background `#FFFFFF`.
- Checked state fills with `#4DA8DA` featuring a pure white checkmark or inner dot. Active focus ring mirrors input glow.

### Lists & Timelines
- Step-by-step treatment roadmaps use vertical soft blue guidelines (`2px solid #BAE6FD`) connecting circular sequence numbers with `#E8F4FB` fill and `#1E6FA8` text.