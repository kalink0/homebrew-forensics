# Homebrew Forensics

Homebrew tap for Crush and other digital forensics tools.

## Install

```sh
brew tap kalink0/forensics
brew install --cask crush-forensics
```

## Update

Homebrew updates tapped repositories when you run:

```sh
brew update
```

Upgrade installed apps with:

```sh
brew upgrade --cask crush-forensics
```

## Maintenance

This tap uses Homebrew's native cask conventions:

- casks live in `Casks/`
- version checks use `livecheck`
- GitHub Actions run `brew audit`, `brew style`, and `brew livecheck`
- scheduled update checks use `brew bump --tap`
