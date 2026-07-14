plugin := "expandomatic"
src := justfile_directory()
dest := src / "../../../.obsidian/plugins" / plugin

default:
    just --list

# type-check + production build (same as `make build`)
build:
    pnpm run build

# watch-mode rebuild (same as `make dev`) — does NOT install; use `just install` to land it
dev:
    pnpm run dev

# Build, then copy the artifacts into the vault's live plugin folder.
# Real copies, NOT symlinks (AGENTS.md § Obsidian plugin installs must be
# copies, not symlinks). .hotreload makes the hot-reload plugin reload the
# plugin instantly on desktop; the marker is inert on mobile.
install: build
    mkdir -p "{{dest}}"
    rm -f "{{dest}}/main.js" "{{dest}}/manifest.json"
    cp "{{src}}/main.js" "{{src}}/manifest.json" "{{dest}}/"
    touch "{{dest}}/.hotreload"
    @echo "Installed {{plugin}} → {{dest}}. Desktop hot-reloads now; Obsidian Sync carries it to iOS."

# remove the installed plugin folder (undoable: re-run install)
uninstall:
    rm -rf "{{dest}}"
    @echo "Removed {{dest}}."
