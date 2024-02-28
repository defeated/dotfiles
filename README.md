# dotfiles (2024)

for macOS, it's still pretty good (currently Sonoma 14.3)

1. install `brew`[^1]

```
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. install & run `chezmoi`[^2] 😙👌🏠

```
sh -c "$(curl -fsSL get.chezmoi.io)" -- init --apply $YOUR_GITHUB_USERNAME
```

3. install apps & dependencies

```
brew bundle --global
```

---

[^1]: Package manager: https://brew.sh/
[^2]: Dotfiles manager: https://chezmoi.io/
