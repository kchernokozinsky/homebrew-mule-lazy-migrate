# homebrew-mule-lazy-migrate

This is a [Homebrew](https://brew.sh/) tap for the `mule-lazy-migrate` CLI tool.

## How to use

First, add this tap:

```
brew tap kchernokozinsky/mule-lazy-migrate
```

Then install the tool:

```
brew install mule-lazy-migrate
```

## About mule-lazy-migrate

`mule-lazy-migrate` is a robust CLI tool to automate migration of Mule 4 projects to a new runtime using a JSON config.

- Reads a JSON config with upgrade rules (runtime, plugin, munit versions, artifact JSON, string replacements)
- Traverses the project, updates XML (`pom.xml`), JSON (`mule-artifact.json`), and performs string replacements in source files
- Supports dry-run and file backups
- Colorized, human-friendly summary of changes at the end
- Optional Maven integration: update dependencies and build after migration

See the [main project repo](https://github.com/kchernokozinsky/mule-lazy-migrate) for more details, usage, and documentation.

