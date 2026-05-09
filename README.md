# boozedog/homebrew-tap

Homebrew tap for [smoovmux](https://github.com/boozedog/smoovmux) — a native macOS terminal workspace built on libghostty.

## Installation

```bash
brew tap boozedog/tap
brew install --cask smoovmux
```

Or in one command:

```bash
brew install --cask boozedog/tap/smoovmux
```

## Upgrading

```bash
brew upgrade smoovmux
```

## Uninstalling

```bash
brew uninstall --cask smoovmux
```

To also remove user data (config, workspace state, etc.):

```bash
brew uninstall --cask --zap smoovmux
```

## Development

This tap is automatically updated when new releases are published. See the [smoovmux release script](https://github.com/boozedog/smoovmux/blob/main/scripts/release.sh) for details.
