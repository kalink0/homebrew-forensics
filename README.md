# Homebrew Forensics

Homebrew tap for Crush and other digital forensics tools.

## Install

```sh
brew tap kalink0/forensics
brew install --cask crush-forensics
brew install peach-forensics
```

## Update

Homebrew updates tapped repositories when you run:

```sh
brew update
```

Upgrade installed apps with:

```sh
brew upgrade --cask crush-forensics
brew upgrade peach-forensics
```

## Maintenance

This tap uses Homebrew's native cask conventions:

- casks live in `Casks/`
- formulae live in `Formula/`
- version checks use `livecheck`
- GitHub Actions run `brew audit`, `brew style`, and `brew livecheck`
- scheduled update checks use `brew bump --tap`
