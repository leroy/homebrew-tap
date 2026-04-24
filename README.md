# homebrew-tap

Homebrew tap for my CLI tools.

## Usage

```bash
brew tap leroy/tap
brew install leroy/tap/redash
```

Or, as a one-liner:

```bash
brew install leroy/tap/redash
```

## Formulae

| Formula | Description | Upstream |
|---|---|---|
| [`redash`](./Formula/redash.rb) | Command-line client for the Redash REST API (agent-first) | https://github.com/leroy/redash |

## How updates work

Formulae are bumped automatically by the upstream project's release workflow
(via goreleaser's `brews:` block) on every `v*` tag. Manual edits to files
under `Formula/` are occasionally needed for major changes — otherwise leave
them to automation.

## License

The tap itself has no license; each formula's upstream project carries its own.
