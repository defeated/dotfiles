# dotfiles (2024)

for macOS, it's still pretty good (currently Sonoma 14.3)

---

Install & run `chezmoi`[^1] 😙👌🏠

```
sh -c "$(curl -fsSL get.chezmoi.io)" -- init --apply $YOUR_GITHUB_USERNAME
```

1. bootstraps `brew`[^2] if it doesn't exist
1. runs `brew bundle` to install packages, apps, fonts, etc. from `~/.Brewfile`

---

[^1]: Dotfiles manager: https://chezmoi.io/
[^2]: Package manager: https://brew.sh/
