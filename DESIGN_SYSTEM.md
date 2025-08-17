# 🎨 Portfolio Design System
## Terminal-Inspired UI Framework

---

## 📋 Table of Contents
- [Brand Identity](#brand-identity)
- [Color System](#color-system)
- [Typography](#typography)
- [Grid & Spacing System](#grid--spacing-system)
- [Icon System](#icon-system)
- [Components](#components)
- [Layout Patterns](#layout-patterns)
- [Data Visualization](#data-visualization)
- [Animation & Interactions](#animation--interactions)
- [Code Implementation](#code-implementation)

---

## 🎯 Brand Identity

### Theme
**Futuristic Technical Documentation System - Retro Terminal Aesthetic**

### Design Philosophy
- **Blueprint-inspired**: Technical drawing aesthetic with precise grid alignment
- **Terminal heritage**: Command-line interface visual language
- **Data-driven**: Scientific and systematic approach to information
- **Pixel-perfect**: Every element aligned to base grid system

### Mood Keywords
- Systematic
- Precise
- Data-driven
- Grid-based
- Technical
- Modular
- Documentation
- Terminal
- Retro-computing
- Scientific

### Visual References
- Technical blueprints and schematics
- Terminal interfaces and command prompts
- Scientific data sheets
- Grid paper and engineering drawings
- Retro computer interfaces

---

## 🌈 Color System

### Primary Brand Palette

| Color Name | Hex Code | RGB | Usage | Flutter Constant |
|------------|----------|-----|--------|------------------|
| **Base Dark** | `#15243D` | `21, 36, 61` | Primary dark backgrounds, headers | `BrandColors.baseDark` |
| **Manela Light** | `#F7F0E2` | `247, 240, 226` | Page backgrounds, neutral base | `BrandColors.manelaLight` |
| **Purple** | `#C8B9FF` | `200, 185, 255` | Secondary accent, data highlights | `BrandColors.purple` |
| **Cream** | `#FCEAB8` | `252, 234, 184` | Card backgrounds, warm neutrals | `BrandColors.cream` |
| **Soft Green** | `#77FF85` | `119, 255, 133` | Secondary indicators, success states | `BrandColors.softGreen` |
| **Clean White** | `#FFFFFF` | `255, 255, 255` | High contrast backgrounds | `BrandColors.cleanWhite` |

### Primary Accent

| Color Name | Hex Code | RGB | Usage | Flutter Constant |
|------------|----------|-----|--------|------------------|
| **Bright Green** | `#52FF00` | `82, 255, 0` | Primary CTA, neon effects, active states, terminal cursors | `BrandColors.brightGreen` |

### Supporting Colors

| Color Name | Hex Code | RGB | Usage | Flutter Constant |
|------------|----------|-----|--------|------------------|
| **Dark Text** | `#000000` | `0, 0, 0` | High contrast text on light backgrounds | `BrandColors.darkText` |
| **Medium Gray** | `#666666` | `102, 102, 102` | Secondary text, descriptions, subtle elements | `BrandColors.mediumGray` |

### Color Combination Guidelines

#### Systematic Color Pairing
Based on accessibility and visual hierarchy:

**Dark Backgrounds (`#15243D`)**
- ✅ Use: Bright Green, Purple, Cream, Clean White
- ❌ Avoid: Base Dark, Medium Gray (insufficient contrast)

**Light Backgrounds (`#F7F0E2`, `#FFFFFF`, `#FCEAB8`)**
- ✅ Use: Base Dark, Medium Gray for text
- ✅ Use: Bright Green, Purple for accents and highlights
- ✅ Use: Dark icons and borders

**Color Pairing Examples**
- **Purple on Cream**: Secondary highlights on warm backgrounds
- **Bright Green on Dark**: Primary actions and terminal elements
- **Dark on Light**: All text and icon combinations
- **Cream on Dark**: Card elements on dark sections

#### Accessibility Standards
- **Minimum contrast ratio**: 4.5:1 for normal text
- **Enhanced contrast ratio**: 7:1 for small text
- **Color-blind friendly**: All critical information conveyed through multiple visual cues

---

## 📝 Typography

### Font Family
**JetBrains Mono** - Monospace font for authentic terminal experience

```dart
GoogleFonts.jetBrainsMono()
```

### Complete Type Scale

| Style | Size | Weight | Line Height | Letter Spacing | Usage | Flutter Style |
|-------|------|--------|-------------|----------------|-------|---------------|
| **Display Large** | 48px | Bold | 1.2 | 2.0px | Hero titles, system headers | `Theme.textTheme.headlineLarge` |
| **Display Medium** | 36px | Bold | 1.2 | 1.5px | Section headers, main titles | `Theme.textTheme.headlineMedium` |
| **Display Small** | 28px | SemiBold | 1.3 | 1.0px | Subsection headers | `Theme.textTheme.headlineSmall` |
| **Title Large** | 24px | Medium | 1.4 | 0.5px | Card titles, component headers | `Theme.textTheme.titleLarge` |
| **Title Medium** | 20px | Medium | 1.4 | 0.5px | Component titles, labels | `Theme.textTheme.titleMedium` |
| **Title Small** | 16px | Medium | 1.4 | 0.25px | Small headers, categories | `Theme.textTheme.titleSmall` |
| **Body Large** | 16px | Regular | 1.6 | 0px | Main content, paragraphs | `Theme.textTheme.bodyLarge` |
| **Body Medium** | 14px | Regular | 1.6 | 0px | Standard text, descriptions | `Theme.textTheme.bodyMedium` |
| **Body Small** | 12px | Regular | 1.5 | 0px | Secondary text, captions | `Theme.textTheme.bodySmall` |
| **Label Large** | 14px | SemiBold | 1.2 | 1.0px | Button text, CTAs | `Theme.textTheme.labelLarge` |
| **Label Medium** | 12px | SemiBold | 1.2 | 1.0px | Small buttons, tags | `Theme.textTheme.labelMedium` |
| **Label Small** | 10px | SemiBold | 1.2 | 1.5px | System text, status labels | `Theme.textTheme.labelSmall` |

### Terminal Typography Rules

#### System Text Conventions
- **Terminal prompts**: `> COMMAND_NAME` with bright green color
- **Status indicators**: `[ STATUS_READY ]` with brackets
- **Module names**: `LOADING_MODULE` in all caps with underscores
- **File paths**: `/path/to/file.ext` in monospace
- **System messages**: `SYSTEM: MESSAGE_CONTENT`

#### Hierarchy Examples
```
> INITIALIZING_PORTFOLIO_SYSTEM_v3.0      (System prompt - Display Large)
DZIKRAN AZKA SAJIDAN                       (Main title - Display Medium)  
> STATUS: MOBILE_APP_DEVELOPER             (Status line - Title Large)
[ SYSTEM_READY ] [ MODULES_LOADED ]        (System info - Label Medium)
```

#### Text Styling Rules
- **All caps**: System labels, commands, status messages
- **Underscores**: Replace spaces in system text (`MOBILE_APP` not `MOBILE APP`)  
- **Consistent spacing**: Letter spacing increases with font size for technical feel
- **Monospace alignment**: All text aligns perfectly in grid system

---

## 📐 Grid & Spacing System

### 8px Base Grid System
All measurements follow 8px increments with 4px sub-grid for precision.

| Name | Value | Sub-grid | Usage | Flutter Constant |
|------|-------|----------|-------|------------------|
| **Spacing 0.5** | 4px | ✓ | Fine adjustments, borders | `BrandTheme.spacing05` |
| **Spacing 1** | 8px | Base unit | Small gaps, tight spacing | `BrandTheme.spacing1` |
| **Spacing 2** | 16px | Standard | Default spacing, padding | `BrandTheme.spacing2` |
| **Spacing 3** | 24px | Medium | Medium gaps, section padding | `BrandTheme.spacing3` |
| **Spacing 4** | 32px | Large | Component separation | `BrandTheme.spacing4` |
| **Spacing 5** | 40px | XL | Extra large gaps | `BrandTheme.spacing5` |
| **Spacing 6** | 48px | XXL | Section headers | `BrandTheme.spacing6` |
| **Spacing 8** | 64px | Major | Major sections, page segments | `BrandTheme.spacing8` |
| **Spacing 10** | 80px | Hero | Desktop margins, hero spacing | `BrandTheme.spacing10` |
| **Spacing 12** | 96px | Max | Hero sections, page margins | `BrandTheme.spacing12` |

### Pixel-Perfect Standards
- **All measurements**: Divisible by 4 or 8
- **Icon alignment**: Snap to 8px grid intersections  
- **Border widths**: 1px or 2px only (no 1.5px or 3px)
- **Text alignment**: Baseline grid at 8px intervals
- **Component sizing**: Height/width in 8px increments

### Responsive Grid Behavior

```dart
// Desktop (>1024px) - Maximum precision
horizontal: BrandTheme.spacing12 (96px)
vertical: BrandTheme.spacing12 (96px)
grid: 8px base with 4px sub-grid

// Tablet (768-1024px) - Balanced spacing
horizontal: BrandTheme.spacing8 (64px)  
vertical: BrandTheme.spacing10 (80px)
grid: 8px base only

// Mobile (<768px) - Compressed but aligned
horizontal: BrandTheme.spacing4 (32px)
vertical: BrandTheme.spacing8 (64px)
grid: 8px base, 4px for critical elements
```

### Grid Visualization
Components should visually reference the underlying grid:
- **Visible grid lines**: Subtle grid overlay on design sections
- **Grid-based layouts**: Multi-column layouts following grid intersections
- **Alignment indicators**: Visual guides showing grid alignment

---

## 🔧 Icon System

### Design Principles
**16px and 24px Pixel Grid System**

#### Technical Specifications
- **Base grid**: 16x16px for small icons, 24x24px for larger icons
- **Stroke width**: 2px consistent across all icons
- **Style**: Outlined, geometric, terminal-inspired
- **Alignment**: All icons snap to 8px grid system
- **Pixel precision**: All paths align to pixel boundaries

#### Icon Categories

**System & Terminal Icons**
```
> Terminal cursor       Network nodes
> Command prompt       Data flow arrows  
> File system tree     Process indicators
> Status indicators    Loading spinners
```

**Navigation Icons**
```
> Arrow directions     Menu hamburger
> Close/X buttons      Expand/collapse
> Back/forward         External links
> Search/filter        Settings gear
```

**Data & Content Icons**
```
> Chart/graph types    Document types
> Database symbols     User profiles
> Calendar/time        Location pins
> Communication        Social platforms
```

### Icon Usage Guidelines

#### Size Standards
- **Small**: 16px for inline text, buttons, status
- **Medium**: 24px for navigation, cards, primary actions
- **Large**: 32px for hero sections, major features

#### Color Application
- **On dark backgrounds**: Bright Green (#52FF00) or White
- **On light backgrounds**: Base Dark (#15243D) or Medium Gray
- **Interactive states**: Bright Green with neon glow effect
- **Disabled states**: Medium Gray with reduced opacity

#### Implementation
```dart
Icon(
  BrandIcons.terminal,
  size: 24,
  color: BrandColors.brightGreen,
)
```

---

## 🧩 Components

### Buttons

#### Primary Button
**High-priority actions and main CTAs**

- **Background**: Bright Green (`#52FF00`)
- **Text**: Base Dark (`#15243D`)  
- **Border**: 2px Base Dark
- **Typography**: UPPERCASE, Bold, Letter spacing 1.0px
- **Shape**: Sharp edges (BorderRadius.zero)
- **Hover**: Neon glow + slight scale
- **Size**: Min height 48px (6 × 8px grid)

```dart
PrimaryButton(
  text: 'VIEW_PROJECTS',
  onPressed: () {},
  icon: Icons.keyboard_arrow_right,
)
```

#### Secondary Button
**Supporting actions and alternatives**

- **Background**: Transparent
- **Text**: Bright Green (`#52FF00`)
- **Border**: 2px Bright Green  
- **Typography**: UPPERCASE, Bold, Letter spacing 1.0px
- **Shape**: Sharp edges (BorderRadius.zero)
- **Hover**: Neon glow + background fill
- **Size**: Min height 48px (6 × 8px grid)

```dart
SecondaryButton(
  text: 'CONTACT_ME',
  onPressed: () {},
  icon: BrandIcons.terminal,
)
```

#### Terminal Button
**System-style navigation and commands**

- **Format**: `> BUTTON_TEXT` with terminal prompt
- **Background**: Transparent or dark
- **Text**: Cream → Bright Green on hover
- **Border**: 1px on hover with glow
- **Typography**: Regular weight, monospace
- **Interactive**: Cursor blink animation

```dart
TerminalButton(
  text: '> ABOUT_SECTION',
  onPressed: () {},
)
```

### Cards & Containers

#### Grid Card
**Content containers with blueprint aesthetic**

- **Border**: 1px Base Dark (2px on hover)
- **Background**: Configurable (White, Cream, Dark)
- **Shape**: Sharp edges (BorderRadius.zero)
- **Padding**: BrandTheme.spacing3 (24px)
- **Hover**: Bright Green border + subtle neon glow
- **Grid lines**: Subtle background grid pattern (optional)

```dart
GridCard(
  backgroundColor: BrandColors.cream,
  showGrid: true,
  child: YourContent(),
)
```

#### Terminal Section
**Major page sections with system headers**

- **Header format**: `> SECTION_NAME` with underline
- **Status line**: `[ MODULE_LOADED ] [ STATUS: READY ]`
- **Border**: 2px Base Dark frame
- **Background**: Clean White or custom
- **Padding**: Follows grid system spacing

```dart
TerminalSection(
  title: 'ABOUT_MODULE',
  status: ['MODULE_LOADED', 'STATUS: READY'],
  child: YourContent(),
)
```

#### Profile Card
**Personal information and bio sections**

- **Photo treatment**: Circular with optional grid overlay
- **Background**: Cream with dark borders  
- **Info layout**: Grid-aligned text blocks
- **Status badges**: Terminal-style indicators
- **Hover**: Subtle border glow
- **Grid integration**: Aligns to 8px grid perfectly

```dart
ProfileCard(
  name: 'DZIKRAN AZKA SAJIDAN',
  title: 'MOBILE_APP_DEVELOPER',
  status: 'AVAILABLE_FOR_HIRE',
  imageUrl: 'assets/profile.jpg',
  showGridOverlay: true,
)
```

### Navigation

#### Header Navigation
**Primary site navigation with terminal styling**

- **Background**: Base Dark (`#15243D`)
- **Items format**: `> MENU_ITEM` with terminal prompts
- **Hover**: Bright Green text + border glow
- **Typography**: Cream → Bright Green transition
- **Active state**: Bright Green with underline
- **Mobile**: Hamburger with slide-out terminal

```dart
HeaderNav(
  items: ['> HOME', '> ABOUT', '> PROJECTS', '> CONTACT'],
  currentIndex: 0,
)
```

#### Terminal Navigation
**In-page navigation with command-line feel**

- **Format**: Command-style navigation
- **Breadcrumbs**: `/home/portfolio/projects`
- **Section jumps**: `> SCROLL_TO_SECTION`
- **Quick actions**: `[ DOWNLOAD_CV ] [ VIEW_GITHUB ]`

---

## 📱 Layout Patterns

### Page Structure Template
**Consistent layout system across all pages**

```
┌─ Header Navigation (Dark terminal bar)
├─ Hero Section (Full-width with terminal styling)  
├─ About Module (Light background, grid cards)
├─ Skills Section (Custom background with data viz)
├─ Projects Grid (Systematic card layout)  
├─ Experience Timeline (Chronological with connectors)
├─ Contact Terminal (Interactive form with prompts)
└─ Footer (Minimal system info)
```

### Grid Layout Systems

#### Multi-Column Documentation
**Technical documentation inspired layouts**

- **Primary column**: 60% content width
- **Secondary column**: 40% supplementary info
- **Grid guides**: Visible or implied grid structure
- **Information hierarchy**: Clear terminal-style headers
- **Section breaks**: System-style dividers

#### Blueprint Aesthetic
**Engineering drawing inspired layouts**

- **Title blocks**: Technical drawing style headers
- **Dimension lines**: Visual guides and connectors  
- **Grid overlay**: Subtle background grid on sections
- **Annotation style**: Technical callouts and labels
- **Systematic spacing**: All elements on precise grid

#### Card Grid Systems
**Modular content organization**

- **Equal height cards**: Consistent visual rhythm
- **Grid alignment**: Perfect alignment to base grid
- **Responsive behavior**: Maintains grid integrity
- **Hover states**: Coordinated glow effects
- **Content hierarchy**: Terminal headers within cards

### Responsive Behavior

#### Desktop (>1024px)
```
┌─────────────────────────────────────┐
│ Header: Full navigation             │
├─────────────────────────────────────┤
│ Hero: Large terminal display        │
├─────────────────────────────────────┤  
│ Content: Multi-column with sidebars │
├─────────────────────────────────────┤
│ Projects: 3-column card grid        │
└─────────────────────────────────────┘
```

#### Tablet (768-1024px)  
```
┌───────────────────────┐
│ Header: Condensed nav │
├───────────────────────┤
│ Hero: Medium terminal │
├───────────────────────┤
│ Content: Single col   │  
├───────────────────────┤
│ Projects: 2-col grid  │
└───────────────────────┘
```

#### Mobile (<768px)
```
┌─────────────┐
│ Header: Ham │
├─────────────┤
│ Hero: Comp  │
├─────────────┤  
│ Content: 1  │
├─────────────┤
│ Projects: 1 │
└─────────────┘
```

---

## 📊 Data Visualization

### Chart Design Language
**Systematic approach to data presentation**

#### Visual Standards
- **Grid-based**: All charts align to 8px grid system
- **Minimal design**: Clean lines, no unnecessary decoration
- **Brand colors**: Bright Green for primary data points
- **Typography**: Monospace for all labels and values
- **Backgrounds**: Grid overlay on light backgrounds

#### Chart Types

**Line Charts**
- **Stroke width**: 2px consistent
- **Data points**: 4px circles on intersections  
- **Grid lines**: Subtle background grid
- **Colors**: Bright Green primary, Purple secondary
- **Labels**: Terminal-style data points

**Bar Charts** 
- **Bar style**: Sharp edges, no rounded corners
- **Spacing**: Follows 8px grid spacing
- **Colors**: Graduated green scale
- **Borders**: 1px dark borders on bars
- **Background**: Light with grid overlay

**Progress Indicators**
- **Terminal style**: `[████████░░] 80%` ASCII-inspired
- **Linear bars**: Sharp edges, bright green fill
- **Circular**: Pixel-based circular progress
- **Percentage**: Monospace numerical display

### Implementation Examples

```dart
// Terminal-style progress bar
TerminalProgress(
  value: 0.75,
  label: 'SKILL_LEVEL: FLUTTER',
  showPercentage: true,
)

// Grid-based chart
GridChart(
  data: chartData,
  primaryColor: BrandColors.brightGreen,
  showGrid: true,
  gridSpacing: 8,
)
```

---

## ⚡ Animation & Interactions

### Hover Effects Library

#### Neon Glow Effect
**Primary interactive feedback**

```dart
BoxShadow(
  color: BrandColors.brightGreen.withOpacity(0.3),
  blurRadius: 8,
  spreadRadius: 2,
),
BoxShadow(
  color: BrandColors.brightGreen.withOpacity(0.1), 
  blurRadius: 24,
  spreadRadius: 4,
),
```

#### Border Transitions
**Clean, precise border animations**

```dart
AnimatedContainer(
  duration: Duration(milliseconds: 200),
  curve: Curves.easeOutCubic,
  border: Border.all(
    color: isHovered ? BrandColors.brightGreen : BrandColors.baseDark,
    width: isHovered ? 2 : 1,
  ),
)
```

#### Scale & Transform
**Subtle interactive feedback**

```dart
Transform.scale(
  scale: isHovered ? 1.02 : 1.0,
  child: AnimatedContainer(
    duration: Duration(milliseconds: 150),
    // Component content
  ),
)
```

### Terminal Animations

#### Cursor Blink
**Authentic terminal cursor animation**

```dart
AnimatedOpacity(
  opacity: _showCursor ? 1.0 : 0.0,
  duration: Duration(milliseconds: 530),
  child: Text('_', style: terminalCursorStyle),
)
```

#### Typewriter Effect  
**Progressive text reveal**

```dart
TypewriterText(
  text: 'SYSTEM_INITIALIZING...',
  speed: Duration(milliseconds: 80),
  cursor: true,
  onComplete: () => setState(() => systemReady = true),
)
```

#### Loading States
**System-style loading indicators**

```dart
// Terminal loading sequence
'[ LOADING_MODULE... ]'
'[ ████████░░ ] 80%'  
'[ MODULE_LOADED ] [ STATUS: READY ]'

// Progress dots
'CONNECTING...   '
'CONNECTING.    '
'CONNECTING..   '  
'CONNECTING...  '
```

### Page Transitions

#### Fade Transitions
**Clean page transitions**

```dart
PageRouteBuilder(
  pageBuilder: (context, animation, _) => NextPage(),
  transitionsBuilder: (context, animation, secondaryAnimation, child) {
    return FadeTransition(opacity: animation, child: child);
  },
  transitionDuration: Duration(milliseconds: 300),
)
```

#### Terminal Window Slide
**System window style transitions**

```dart
SlideTransition(
  position: Tween<Offset>(
    begin: Offset(0.0, -0.2),
    end: Offset.zero,
  ).animate(CurvedAnimation(
    parent: animation,
    curve: Curves.easeOutCubic,
  )),
  child: child,
)
```

### Scroll Animations

#### Progressive Disclosure
**Content reveals as user scrolls**

- **Stagger timing**: 100ms between elements
- **Easing**: Smooth cubic curves
- **Trigger point**: Element 20% visible
- **Animation**: Fade in + slide up 20px

#### Parallax Grid
**Background grid movement**

- **Speed**: 50% of scroll speed
- **Direction**: Opposite to scroll
- **Boundaries**: Contained within sections
- **Performance**: GPU-accelerated transforms

---