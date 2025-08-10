# Slidev Multi-Presentation Workspace

Manage multiple [Slidev](https://sli.dev) decks in one repo. Each deck runs independently and can be developed, exported, and deployed on its own.

## AI‑Assisted Slide Generation

This workspace is designed to automate slide creation using AI tools such as Cursor and Claude Code (CLI). The goal is to quickly scaffold, structure, and style Slidev decks with minimal manual setup.

- Drive workflows via the root scripts (menu/create/run/export)
- Auto‑generate a deck from `context-template.md`, then split slides under `slides/`
- Apply the slide design principles below to ensure clean, non‑overflowing slides 
- Use the .cursor rules file for Cursor AI assistant instructions
- Use `CLAUDE.md` for Claude Code (CLI) AI assistant instructions and design rules


## Commands

Use the root scripts for all routine tasks:

```bash
# Interactive menu (recommended)
npm run menu

# Create a new deck
npm run create -- "Your Presentation Name"

# Run a specific deck
npm run run -- <presentation-name>

# List available decks
npm run list

# Export all decks (PDF)
npm run export-all
```

Per‑deck commands (inside `presentations/<name>`):

```bash
# Dev server (http://localhost:3030)
pnpm slidev

# Export
pnpm slidev export      # choose format via prompt
pnpm export:pdf         # if provided by the deck
pnpm export:png         # if provided by the deck
```

## Project Structure

- `presentations/` — one folder per deck
- `components/` — shared Vue components
- `scripts/` — menu, create, and run helpers
- `docs/` — local best‑practice docs
- `images/` — shared images

Typical deck layout:

```
presentations/my-presentation/
├─ slides.md                 # headmatter + slide imports (also opening slide)
├─ slides/                   # split slides for modularity
│  ├─ 01-intro.md
│  ├─ 02-problem.md
│  └─ …
├─ assets/                   # images/diagrams/code examples (optional)
└─ package.json              # deck scripts
```

## Create a New Deck

```bash
# Recommended (guided)
npm run menu

# Or direct
npm run create -- "My Presentation Title"
# alternatively
./scripts/create-presentation.sh "My Presentation Title"
```

What happens:
- A new folder under `presentations/` using a kebab‑cased version of the title
- `slides.md` created from `context-template.md` with the title injected
- A deck‑level `package.json` with standard Slidev scripts

Next steps:
1) Open `slides.md` and set global headmatter (this doubles as the opening slide).
2) Create `slides/` and split content into small files; import them into `slides.md` using `src:`.
3) Optional: add an `assets/` folder for deck‑specific images and diagrams.

## Slide Design Principles

- Keep slides light: 4–5 bullets, 5–7 words each; split dense content into multiple slides.
- Use responsive layouts: grids and two‑column patterns with adequate gaps.
- Maintain margins and spacing: `p-2 sm:p-3 md:p-4`, ~10% safe area.
- Typography hierarchy: titles `text-2xl–4xl`, body `text-base–lg`, captions `text-xs–sm`.
- Code: highlight lines to guide attention (` ```ts {2-3|5|all} `).
- Diagrams (Mermaid): left‑to‑right, 5–7 nodes, short labels; prefer `scale: 0.7–0.8`.
- Reveals: use `<v-click>` to reveal sections, not every bullet.

See `docs/slidev-best-practices.md` and `CLAUDE.md` for examples and snippets.

For AI assistants: follow the Layout Decision Matrix and Density Guardrails in `CLAUDE.md` §"AI Authoring Rubric" and `docs/slidev-best-practices.md` §4.1 to avoid overflow and pick appropriate themes/layouts.

## Develop, Test, Export

- Start dev: `npm run run -- <name>` or from the menu; hot‑reload on `http://localhost:3030`.
- Test at 640px, 1024px, 1536px; use Presenter Mode (`P`) and Overview (`O`).
- Export: inside the deck, run `pnpm slidev export` (PDF/PNG) or deck scripts (`export:pdf`, `export:png`).
- Build static site: `pnpm slidev build` (outputs `dist/`).

## Sample Deck

An example lives in `presentations/Sample-Presentation/`. Try:

```bash
npm run run -- Sample-Presentation
```

## Shared Resources

- `components/` for reusable Vue components
- `images/` for shared image assets
- `setup/mermaid.ts` for Mermaid config

## References

- Local best practices: `docs/slidev-best-practices.md`
- AI assistant guide: `CLAUDE.md`
- Slidev docs: https://sli.dev
