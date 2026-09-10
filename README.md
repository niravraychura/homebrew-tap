# homebrew-terradrift

Homebrew tap for [TerraDrift](https://github.com/niravraychura/terradrift).

```bash
brew install niravraychura/terradrift/terradrift
```

After each TerraDrift GitHub Release, regenerate the formula from the CLI repo:

```bash
./scripts/gen-homebrew-formula.sh vX.Y.Z > Formula/terradrift.rb
```

Do not point `url` at a tag that has no Release archives yet.
