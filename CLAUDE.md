# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a multi-presentation Slidev repository that manages multiple presentations independently. Each presentation lives in its own subdirectory under `presentations/` with its own configuration and assets.

## Common Commands

### Interactive Menu (Primary Interface)
```bash
pnpm menu
```
This opens an interactive terminal menu for all common operations.

### Individual Presentation Management
```bash
# Start a presentation in development mode
cd presentations/presentation-name
pnpm slidev

# Export to PDF
cd presentations/presentation-name  
pnpm slidev export
# or use shortcut:
pnpm export:pdf

# Export to PNG
pnpm export:png
```

### Root-Level Commands
```bash
# List all presentations
pnpm list

# Create new presentation
pnpm create
# or directly:
./scripts/create-presentation.sh "Presentation Name"

# Run specific presentation
pnpm run

# Export all presentations to PDF
pnpm export-all
```

## Repository Architecture

### Directory Structure
- `presentations/` - Each subdirectory contains an independent Slidev presentation
- `components/` - Shared Vue components available to all presentations
- `scripts/` - Shell scripts for presentation management
- `docs/` - Documentation including best practices guide
- `images/` - Shared image assets
- `context-template.md` - Template used when creating new presentations

### Presentation Structure
Each presentation follows this pattern:
```
presentations/my-presentation/
├── slides.md              # Main presentation file with frontmatter config
├── package.json           # Presentation-specific scripts and dependencies
├── slides/               # Optional: split slides for better organization
│   ├── 01-intro.md
│   ├── 02-content.md
│   └── ...
└── node_modules/         # Presentation-specific dependencies
```

### Key Configuration Files
- Root `package.json` contains global dependencies (@slidev/cli, themes)
- Each presentation's `package.json` defines local scripts and dependencies
- `slides.md` files use YAML frontmatter for theme, layout, and styling configuration

### Shared Resources
- Components in `components/` are available to all presentations
- Common dependencies are managed at the root level
- Presentation-specific dependencies can be added to individual presentation directories

### Presentation Creation Workflow
1. New presentations are created from `context-template.md`
2. Directory name is automatically kebab-cased from the title
3. Basic package.json with standard scripts is auto-generated
4. Presentations can be organized with split slides using `src:` frontmatter

### Development Workflow
- Use the interactive menu (`pnpm menu`) for most operations
- Each presentation runs independently on localhost:3030
- Hot reloading is available in development mode
- Export functionality supports PDF and PNG formats

## Slide Creation & Management Guidelines

### Creating New Presentations
Follow the established workflow using our cursor rules:
- **@new-presentation.mdc** - Complete guide for creating new presentations
- **@presentation-plan-template** - Template for planning presentations effectively
- **@slide-creation-guide** - Patterns and examples for slide creation

### Slide Styling & Design
Adhere to our styling guidelines to prevent overflow and maintain professional appearance:
- **@slide-styling-guidelines.mdc** - Comprehensive rules for preventing content overflow
- **@theme-selection.mdc** - Guide for choosing and customizing themes
- **@slide-creation-guide** - Layout patterns and responsive design formulas

### Content Planning & Organization
Use our planning frameworks for effective presentations:
- **@slide-content-planning** - Detailed guidance on defining objectives and audience
- **@presentation-plan-template** - Structured approach to presentation planning
- **@slide-creation-guide** - Quick reference for common slide patterns

### Animation & Visual Engagement
For dynamic presentations, follow our animation guidelines:
- **@animation-creation.mdc** - Remotion-based animation techniques (for video content)
- **@slide-styling-guidelines.mdc** - Responsive design and overflow prevention
- Use strategic `v-click` directives for section-based reveals rather than animating every point

### Best Practices Summary
1. **Always start with planning** - Use the presentation plan template
2. **Follow styling guidelines** - Prevent overflow and maintain readability
3. **Choose appropriate themes** - Match theme to content type and audience
4. **Use strategic animations** - Reveal sections, not individual points
5. **Test responsiveness** - Ensure content works across all screen sizes
6. **Organize content effectively** - Split complex slides into multiple files

### File Organization Standards
- All new presentations go in the `presentations/` folder
- Use the project scripts for creation and management
- Follow the established naming conventions (kebab-case for directories)
- Create `presentation-plan.txt` for each new presentation
- Use split slides for better organization and reusability

### Quality Assurance
- Test presentations at multiple viewport sizes (640px, 1024px, 1536px)
- Use Presenter Mode (press `P`) to check for overflow
- Validate responsive layouts with the provided testing checklist
- Ensure animations enhance rather than distract from content

For detailed guidance on any of these areas, refer to the specific cursor rules mentioned above. These rules provide comprehensive, project-specific guidance that ensures consistency and quality across all presentations in this repository.