Expandomatic is an obsidian plugin for providing vscode-like expand/shrink selection functionality.

It handles expansion/contraction for a handful of different contexts (e.g. plain text, sections, tables, equations, code, etc...)

Code is in main.ts

After every source change, run `just install` — it rebuilds main.js AND copies main.js + manifest.json into the vault's live plugin dir (.obsidian/plugins/expandomatic/), where the hot-reload plugin picks it up on desktop and Obsidian Sync carries it to iOS. A build that never lands there is invisible in Obsidian, so `make build` alone is not "done". (`make build` / `make dev` remain as inner-loop shims.)

Release flow (publishing to github.com/clozach/expandomatic) is manual for now; installing into the vault is not — `just install` is part of every change.
