# homebrew-tap

Homebrew tap for [TerraDrift](https://github.com/niravraychura/terradrift). Independent CLI — not affiliated with HashiCorp, OpenTofu, or GitHub.

```bash
brew install niravraychura/tap/terradrift
```

That is `user/tap/formula`: this repo is `homebrew-tap`; the formula is `terradrift`.

After each TerraDrift GitHub Release, regenerate the formula from the CLI repo:

```bash
./scripts/gen-homebrew-formula.sh vX.Y.Z > Formula/terradrift.rb
```

Do not point `url` at a tag that has no Release archives yet.

Already tapped as `niravraychura/terradrift` (old name)?

```bash
brew untap niravraychura/terradrift
brew install niravraychura/tap/terradrift
```
