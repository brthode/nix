# zsh key bindings

What's bound in the shell and where it comes from. **Option** means the *left*
Option key: Ghostty sends it as Alt (`macos-option-as-alt = left` in
`ghostty.nix`). The right Option key still types special characters (ç, ∂, …).

Check what any key is bound to with `bindkey '<seq>'`, e.g. `bindkey '^R'`.

## Added by this config

| Key | Action | Source |
|-----|--------|--------|
| Ctrl-R | Fuzzy-search history | `programs.fzf` |
| ↑ / ↓ | Previous / next history entry containing what you've typed (plain history step on an empty line) | `programs.zsh.historySubstringSearch` |
| Ctrl-T | Fuzzy-pick file(s) and insert the path (bat preview) | `programs.fzf` |
| Option-C | Fuzzy-pick a subdirectory and `cd` into it (eza tree preview) | `programs.fzf` |
| `**` then Tab | fzf completion for the current command, e.g. `cd **⇥`, `vim src/**⇥`, `kill **⇥` | `programs.fzf` |
| Tab | Normal zsh completion (fzf takes over only after `**`) | zsh / `programs.fzf` |
| `cd -` then Tab | Pick a recent directory from the stack (every `cd` is pushed; `popd` goes back) | `programs.zsh.setOptions` (`AUTO_PUSHD`) |
| → or Ctrl-E (Cmd-→) | Accept the whole gray autosuggestion | `programs.zsh.autosuggestion` |
| Option-→ | Next word; with a gray suggestion showing, accepts it **one word at a time** | `initContent` + autosuggestion |
| Option-← | Previous word | `initContent` (`bindkey`) |
| Ctrl-X Ctrl-E | Open the current command line in `$EDITOR` (hx); save and quit to bring it back to the prompt (not run) | `initContent` (`edit-command-line`) |

## Inside the pickers

**fzf (Ctrl-R / Ctrl-T / Option-C / `**`⇥)**

| Key | Action |
|-----|--------|
| type | Fuzzy filter (`'exact`, `^prefix`, `suffix$`, `!not`) |
| ↑ / ↓ or Ctrl-K / Ctrl-J | Move |
| Tab / Shift-Tab | Mark / unmark (multi-select: Ctrl-T and file/`kill` `**`; not `cd **`) |
| Enter | Accept |
| Esc | Cancel |

## Handy zsh built-ins (emacs mode)

| Key | Action |
|-----|--------|
| Ctrl-A / Ctrl-E | Start / end of line |
| Ctrl-W | Delete previous word |
| Ctrl-U | Delete the whole line |
| Ctrl-K | Delete to end of line |
| Ctrl-Y | Paste what was just deleted |
| Option-. | Insert the last argument of the previous command (repeat to go further back) |
| Option-D | Delete next word |
| Ctrl-L | Clear the screen |
