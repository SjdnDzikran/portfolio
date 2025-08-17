# 🎨 Portfolio Design System
## Terminal-Inspired UI Framework

---

## 📋 Table of Contents
- [Brand Identity](#brand-identity)
- [Color System](#color-system)
- [Typography](#typography)
- [Spacing System](#spacing-system)
- [Components](#components)
- [Layout Guidelines](#layout-guidelines)
- [Animation & Interactions](#animation--interactions)
- [Code Implementation](#code-implementation)

---

## 🎯 Brand Identity

### Theme
**Futuristic, Technical, Retro-Computer Terminal**

### Mood
- Data-driven
- Precise
- Innovative
- Approachable
- Professional

### Keywords
- Grid
- Pixel
- Modular
- Terminal
- Neon
- Documentation
- Monospace
- System

---

## 🌈 Color System

### Primary Palette

| Color Name | Hex Code | Usage | Flutter Constant |
|------------|----------|--------|------------------|
| **Base Dark** | `#15243D` | Main dark backgrounds, text | `BrandColors.baseDark` |
| **Manela Light** | `#F7F0E2` | Page backgrounds, neutral base | `BrandColors.manelaLight` |
| **Purple** | `#C8B9FF` | Secondary accent, highlights | `BrandColors.purple` |
| **Cream** | `#FCEAB8` | Card backgrounds, neutral content | `BrandColors.cream` |
| **Soft Green** | `#77FF85` | Secondary indicators, softer accent | `BrandColors.softGreen` |
| **Clean White** | `#FFFFFF` | Clean backgrounds, high contrast | `BrandColors.cleanWhite` |

### Highlight Accent

| Color Name | Hex Code | Usage | Flutter Constant |
|------------|----------|--------|------------------|
| **Bright Green** | `#52FF00` | Primary CTA, neon effects, active states | `BrandColors.brightGreen` |

### Supporting Colors

| Color Name | Hex Code | Usage | Flutter Constant |
|------------|----------|--------|------------------|
| **Dark Text** | `#000000` | High contrast text | `BrandColors.darkText` |
| **Medium Gray** | `#666666` | Secondary text, descriptions | `BrandColors.mediumGray` |

### Usage Guidelines

#### Dark Backgrounds (`#15243D`)
- Use: **Bright Green**, **Purple**, **Cream**, **White** for contrast
- Avoid: **Base Dark**, **Medium Gray**

#### Light Backgrounds (`#F7F0E2`, `#FFFFFF`)
- Use: **Base Dark**, **Medium Gray** for text
- Use: **Bright Green**, **Purple** for accents

#### Accent Colors
- **Primary**: Bright Green (`#52FF00`)
- **Secondary**: Purple (`#C8B9FF`)
- **Neutral**: Cream (`#FCEAB8`)

---

## 📝 Typography

### Font Family
**JetBrains Mono** - Monospace font for authentic terminal feel

```dart
GoogleFonts.jetBrainsMono()
```

### Type Scale

| Style | Size | Weight | Usage | Flutter Style |
|-------|------|--------|-------|---------------|
| **Display Large** | 48px | Bold | Hero titles, main headings | `Theme.of(context).textTheme.headlineLarge` |
| **Display Medium** | 36px | Bold | Section headers | `Theme.of(context).textTheme.headlineMedium` |
| **Display Small** | 28px | SemiBold | Subsection headers | `Theme.of(context).textTheme.headlineSmall` |
| **Title Large** | 24px | Medium | Card titles | `Theme.of(context).textTheme.titleLarge` |
| **Title Medium** | 20px | Medium | Component titles | `Theme.of(context).textTheme.titleMedium` |
| **Title Small** | 16px | Medium | Small headers | `Theme.of(context).textTheme.titleSmall` |
| **Body Large** | 16px | Regular | Main content | `Theme.of(context).textTheme.bodyLarge` |
| **Body Medium** | 14px | Regular | Standard text | `Theme.of(context).textTheme.bodyMedium` |
| **Body Small** | 12px | Regular | Secondary text | `Theme.of(context).textTheme.bodySmall` |
| **Label Large** | 14px | SemiBold | Button text | `Theme.of(context).textTheme.labelLarge` |
| **Label Medium** | 12px | SemiBold | Small buttons | `Theme.of(context).textTheme.labelMedium` |
| **Label Small** | 10px | SemiBold | System text | `Theme.of(context).textTheme.labelSmall` |

### Typography Rules

#### Terminal Styling
- **All caps** for system labels: `STATUS:`, `LOADING_MODULE`
- **Underscores** instead of spaces: `MOBILE_APP_DEVELOPER`
- **Letter spacing**: 1.0-3.0px for technical feel
- **Line height**: 1.2-1.8 depending on context

#### Hierarchy Examples
```
> INITIALIZING_PORTFOLIO_v2.0          (System prompt)
DZIKRAN AZKA SAJIDAN                    (Main title)
> STATUS: MOBILE_APP_DEVELOPER          (Status line)
[ SYSTEM_READY ] [ SCROLL_TO_EXPLORE ]  (System info)
```

---

## 📐 Spacing System

### 8px Grid System
All spacing follows 8px increments for consistent alignment.

| Name | Value | Usage | Flutter Constant |
|------|-------|-------|------------------|
| **Spacing 1** | 8px | Small gaps, tight spacing | `BrandTheme.spacing1` |
| **Spacing 2** | 16px | Default spacing, padding | `BrandTheme.spacing2` |
| **Spacing 3** | 24px | Medium gaps, section padding | `BrandTheme.spacing3` |
| **Spacing 4** | 32px | Large gaps, component separation | `BrandTheme.spacing4` |
| **Spacing 5** | 40px | Extra large gaps | `BrandTheme.spacing5` |
| **Spacing 6** | 48px | Section headers | `BrandTheme.spacing6` |
| **Spacing 8** | 64px | Major sections | `BrandTheme.spacing8` |
| **Spacing 10** | 80px | Desktop margins | `BrandTheme.spacing10` |
| **Spacing 12** | 96px | Hero sections | `BrandTheme.spacing12` |

### Responsive Spacing

```dart
// Desktop (>1024px)
horizontal: BrandTheme.spacing10 (80px)
vertical: BrandTheme.spacing12 (96px)

// Tablet (768-1024px)  
horizontal: BrandTheme.spacing5 (40px)
vertical: BrandTheme.spacing10 (80px)

// Mobile (<768px)
horizontal: BrandTheme.spacing3 (24px)
vertical: BrandTheme.spacing8 (64px)
```

---

## 🧩 Components

### Buttons

#### Primary Button
- **Background**: Bright Green (`#52FF00`)
- **Text**: Base Dark (`#15243D`)
- **Border**: 2px Base Dark
- **Shape**: Sharp edges (BorderRadius.zero)
- **Hover**: Neon glow effect
- **Text**: UPPERCASE, Bold

```dart
PrimaryButton(
  text: 'View Projects',
  onPressed: () {},
  icon: Icons.keyboard_arrow_right,
)
```

#### Secondary Button  
- **Background**: Transparent
- **Text**: Bright Green (`#52FF00`)
- **Border**: 2px Bright Green
- **Shape**: Sharp edges (BorderRadius.zero)
- **Hover**: Neon glow effect
- **Text**: UPPERCASE, Bold

```dart
SecondaryButton(
  text: 'Contact Me',
  onPressed: () {},
  icon: Icons.terminal,
)
```

### Cards

#### Grid Card
- **Border**: 1-2px Base Dark
- **Background**: Configurable (White, Cream, Dark)
- **Shape**: Sharp edges (BorderRadius.zero)
- **Hover**: Bright Green border + neon glow
- **Padding**: BrandTheme.spacing3 (24px)

```dart
GridCard(
  backgroundColor: BrandColors.cream,
  child: YourContent(),
)
```

#### Terminal Section
- **Header**: `> SECTION_NAME` with underline
- **Status**: `[ LOADING_MODULE ] [ STATUS: READY ]`
- **Border**: 2px Base Dark
- **Background**: Clean White or custom

```dart
TerminalSection(
  title: 'About Me',
  child: YourContent(),
)
```

### Navigation

#### Header Navigation
- **Background**: Base Dark (`#15243D`)
- **Items**: `> MENU_ITEM` format
- **Hover**: Bright Green border + glow
- **Text**: Cream/Bright Green monospace

#### Terminal Nav Button
- **Format**: `> ABOUT`, `> PROJECTS`
- **Hover**: Border + glow effect
- **Colors**: Cream → Bright Green on hover

---

## 📱 Layout Guidelines

### Grid System
- **8px base grid** for all measurements
- **Modular components** with clear borders
- **Blueprint/documentation** style framing
- **Pixel-perfect alignment**

### Page Structure
```
Header (Dark terminal nav)
├── Hero Section (Dark with green border)
├── About (Light with grid cards)  
├── Skills (Custom background)
├── Projects (Grid layout)
├── Experience (Timeline style)
├── Contact (Terminal form)
└── Footer (Minimal)
```

### Responsive Breakpoints
- **Mobile**: < 768px
- **Tablet**: 768px - 1024px  
- **Desktop**: > 1024px

### Container Widths
- **Full width** sections with internal constraints
- **Max content width**: 1200px on large screens
- **Side padding**: Responsive based on screen size

---

## ⚡ Animation & Interactions

### Hover Effects

#### Neon Glow
```dart
BoxShadow(
  color: BrandColors.brightGreen.withOpacity(0.3),
  blurRadius: 8,
  spreadRadius: 2,
),
```

#### Border Transition
```dart
AnimatedContainer(
  duration: Duration(milliseconds: 200),
  border: Border.all(
    color: isHovered ? BrandColors.brightGreen : BrandColors.baseDark,
    width: isHovered ? 2 : 1,
  ),
)
```

### Loading States
- **Terminal cursor blink**: `_` blinking effect
- **System loading**: `[ LOADING... ]` indicators
- **Progress**: Step-by-step terminal output style

### Page Transitions
- **Fade in/out**: Clean transitions
- **Slide effects**: Terminal window style
- **Scroll animations**: Smooth with easing curves

---

## 💻 Code Implementation

### Theme Setup
```dart
// lib/constants/brand_theme.dart
class BrandColors {
  static const Color baseDark = Color(0xFF15243D);
  static const Color brightGreen = Color(0xFF52FF00);
  // ... other colors
}

class BrandTheme {
  static const double spacing1 = 8.0;
  static const double spacing2 = 16.0;
  // ... other spacing
}
```

### Component Usage
```dart
// Terminal-style section
TerminalSection(
  title: 'Section Name',
  child: Column(
    children: [
      GridCard(
        backgroundColor: BrandColors.cream,
        child: Text('Content'),
      ),
    ],
  ),
)

// Buttons
Row(
  children: [
    PrimaryButton(
      text: 'Primary Action',
      onPressed: () {},
    ),
    SizedBox(width: BrandTheme.spacing2),
    SecondaryButton(
      text: 'Secondary Action', 
      onPressed: () {},
    ),
  ],
)
```

### Responsive Utilities
```dart
final screenWidth = MediaQuery.of(context).size.width;
final isDesktop = screenWidth > 1024;
final isTablet = screenWidth > 768 && screenWidth <= 1024;

EdgeInsets.symmetric(
  horizontal: isDesktop ? BrandTheme.spacing10 : 
              (isTablet ? BrandTheme.spacing5 : BrandTheme.spacing3),
)
```

---

## 🎨 Design Tokens

### CSS Custom Properties (for web)
```css
:root {
  --color-base-dark: #15243D;
  --color-bright-green: #52FF00;
  --color-cream: #FCEAB8;
  --color-purple: #C8B9FF;
  
  --spacing-1: 8px;
  --spacing-2: 16px;
  --spacing-3: 24px;
  
  --font-family-mono: 'JetBrains Mono', monospace;
  
  --border-radius: 0px;
  --border-width: 2px;
}
```

### Flutter Theme Data
```dart
ThemeData(
  colorScheme: ColorScheme(
    primary: BrandColors.brightGreen,
    secondary: BrandColors.purple,
    background: BrandColors.manelaLight,
    surface: BrandColors.cleanWhite,
    // ... other colors
  ),
  textTheme: BrandTheme._buildTextTheme(),
  splashFactory: NoSplash.splashFactory,
)
```

---

## 📋 Checklist for New Components

### Before Creating a Component:
- [ ] Follows 8px grid system
- [ ] Uses brand colors from `BrandColors`
- [ ] Uses monospace typography
- [ ] Sharp edges (BorderRadius.zero)
- [ ] Includes hover states with neon glow
- [ ] Responsive design considerations
- [ ] Terminal/system aesthetic elements
- [ ] Proper spacing using `BrandTheme.spacing*`
- [ ] UPPERCASE text where appropriate
- [ ] Consistent border widths (1px or 2px)

### Component Documentation Template:
```dart
/// Terminal-inspired [ComponentName]
/// 
/// Features:
/// - Sharp edges with brand borders
/// - Neon hover effects
/// - Monospace typography
/// - 8px grid alignment
/// 
/// Usage:
/// ```dart
/// ComponentName(
///   title: 'Example',
///   onPressed: () {},
/// )
/// ```
class ComponentName extends StatefulWidget {
  // Implementation
}
```

---

## 🚀 Future Enhancements

### Planned Improvements:
- [ ] Dark mode variant with inverted colors
- [ ] Animation library for terminal effects
- [ ] Sound effects for interactions
- [ ] ASCII art decorations
- [ ] Terminal cursor animations
- [ ] Code syntax highlighting theme
- [ ] Progressive loading animations
- [ ] Particle effects for backgrounds

### Accessibility:
- [ ] High contrast ratios maintained
- [ ] Screen reader compatibility
- [ ] Keyboard navigation support
- [ ] Focus indicators with neon glow
- [ ] Semantic HTML/Flutter widgets

---

*Last updated: August 17, 2025*  
*Version: 2.0.0*  
*Framework: Flutter Web*
