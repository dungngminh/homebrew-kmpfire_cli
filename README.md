# homebrew-kmpfire_cli

Scaffold for the Homebrew tap repo. Push this folder as **`dungngminh/homebrew-kmpfire_cli`** (separate GitHub repo).

Binary name: **`kmpfire`**. Source repo: **`dungngminh/kmpfire_cli`**.

## Install (once the tap exists on GitHub)

```bash
brew tap dungngminh/kmpfire_cli
brew install kmpfire
```

## Publish this tap

From this directory (or after copying it out of `kmpfire_cli`):

```bash
cd packaging/homebrew-kmpfire_cli
git init
git add .
git commit -m "Initial Homebrew tap for kmpfire"
git branch -M main
gh repo create dungngminh/homebrew-kmpfire_cli --public --source=. --remote=origin --push
```

On **`dungngminh/kmpfire_cli`**, add Actions secret **`HOMEBREW_TAP_TOKEN`** (PAT with `repo` scope) so `.github/workflows/deploy-homebrew.yml` can push `Formula/kmpfire.rb` on each published Release.

## Formula

`Formula/kmpfire.rb` starts as a placeholder (`v0.0.0`). The first real Release + Deploy Homebrew workflow overwrites URLs and SHA256s from release assets:

- `kmpfire-macos-arm64.tar.gz`
- `kmpfire-macos-x64.tar.gz`
- `kmpfire-linux-x64.tar.gz`
