# Contributing

## Prepare Development Environment

- Prepare dev tools
  - Install GIT
- Clone GIT repository

```shell
git clone https://github.com/serdigital64/codeskel64.git
```

- Adjust environment variables to reflect your configuration:

```shell
# Copy environment definition files from templates:
cp dot.local .local
cp dot.secrets .secrets
# Review and update content for both files
```

- Initialize dev environment variables

```shell
source bin/devcs-set
```

## Update source code

- CLI
  - Add/Edit source code in: `src/cli`
  - Build CLI:

```shell
./bin/devcs-build`
```

- Catalog
  - Add/Edit templates in: `src/catalog`
  - Update template catalog:
    - `src/catalog/inventory.csv`: individual templates
    - `src/catalog/combos.csv`: combination of templates

## Repositories

- Project GIT repository: [https://github.com/serdigital64/codeskel64](https://github.com/serdigital64/codeskel64)
- Project Documentation: [https://github.com/serdigital64/codeskel64](https://github.com/serdigital64/codeskel64)
