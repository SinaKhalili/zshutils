# zshutils
Simple zsh utility functions to copy-pasta ✨ into your .zshrc

### Utilities

- `killport` Kill a process on a port eg. `killport 3000` (in `utils.zsh`)
- `mecho` [A marked up echo](https://github.com/SinaKhalili/mecho)
- `checkelectron` check which applications use electron 👉 `ps -axo comm | sed 1d | sort -u | grep '/Applications' | grep 'Electron' | awk -F/ '{print $3}' | cut -d '.' -f 1`
