# Slidev Multi-Presentation Repository

This repository is set up to manage multiple [Slidev](https://sli.dev/) presentations, each of which can be individually developed, built, and exported.

## Quick Start

The easiest way to work with presentations is to use the interactive menu:

```bash
pnpm menu
```

This will display an interactive menu that allows you to:
- Run any presentation in development mode
- Export any presentation to PDF
- Create a new presentation
- Navigate between presentations easily

## Structure

- Each presentation is stored in its own subdirectory under `presentations/`
- Each presentation directory contains:
  - `slides.md` - The main content file for the presentation
  - `package.json` - Configuration for that specific presentation
  - Any assets specific to that presentation

## Creating a New Presentation

Use the interactive menu or the provided script to create a new presentation:

```bash
# Using the menu (recommended)
pnpm menu
# Select option 3: Create a new presentation

# Or using the script directly
./create-presentation.sh "My Presentation Title"
```

This will:
1. Create a new directory in `presentations/` with a kebab-case version of your title
2. Set up the basic slides.md file with your title
3. Create a package.json with necessary scripts

## Working with Presentations

### Starting a Presentation in Development Mode

```bash
# Using the menu (recommended)
pnpm menu
# Select option 1: Run a presentation (dev mode)

# Or manually
cd presentations/your-presentation-name
pnpm slidev
```

This will start the slidev dev server with hot reloading.

### Exporting a Presentation to PDF

```bash
# Using the menu (recommended)
pnpm menu
# Select option 2: Export a presentation to PDF

# Or manually
cd presentations/your-presentation-name
pnpm slidev export
# or use the script shortcut
pnpm export:pdf
```

### Exporting to Other Formats

```bash
cd presentations/your-presentation-name
# For PNG export
pnpm export:png
```

## Shared Resources

If you want to share components, styles, or other resources between presentations:

- `components/` - For shared Vue components
- `snippets/` - For shared code snippets
- `public/` - For shared public assets

## Adding Dependencies

If you need specific dependencies for a particular presentation, you can add them to that presentation's package.json:

```bash
cd presentations/your-presentation-name
pnpm add some-package
```

For global dependencies that should be available to all presentations, add them to the root package.json.

## Customizing Presentations

Each presentation can have its own:
- Theme
- Layout
- Configuration
- Style overrides

See the [Slidev documentation](https://sli.dev/) for details on customization options.
