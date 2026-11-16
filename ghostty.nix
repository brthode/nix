{ ... }:

{
  # Ghostty's macOS defaults map Option+Left/Right to `esc:b` / `esc:f`.
  # herdr strips the ESC when forwarding those to panes, so the shell just
  # receives a literal "b"/"f". Send xterm-style Alt+arrow CSI sequences
  # instead; zsh binds them to word motion in flake.nix.
  home.file.".config/ghostty/config".text = ''
    keybind = alt+arrow_left=csi:1;3D
    keybind = alt+arrow_right=csi:1;3C
  '';
}
