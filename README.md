# Project: CodeSkel64

```text
   █████████     ███████    ██████████   ██████████  █████████  █████   ████ ██████████ █████        ████████  █████ █████
  ███░░░░░███  ███░░░░░███ ░░███░░░░███ ░░███░░░░░█ ███░░░░░███░░███   ███░ ░░███░░░░░█░░███        ███░░░░███░░███ ░░███
 ███     ░░░  ███     ░░███ ░███   ░░███ ░███  █ ░ ░███    ░░░  ░███  ███    ░███  █ ░  ░███       ░███   ░░░  ░███  ░███ █
░███         ░███      ░███ ░███    ░███ ░██████   ░░█████████  ░███████     ░██████    ░███       ░█████████  ░███████████
░███         ░███      ░███ ░███    ░███ ░███░░█    ░░░░░░░░███ ░███░░███    ░███░░█    ░███       ░███░░░░███ ░░░░░░░███░█
░░███     ███░░███     ███  ░███    ███  ░███ ░   █ ███    ░███ ░███ ░░███   ░███ ░   █ ░███      █░███   ░███       ░███░
 ░░█████████  ░░░███████░   ██████████   ██████████░░█████████  █████ ░░████ ██████████ ███████████░░████████        █████
  ░░░░░░░░░     ░░░░░░░    ░░░░░░░░░░   ░░░░░░░░░░  ░░░░░░░░░  ░░░░░   ░░░░ ░░░░░░░░░░ ░░░░░░░░░░░  ░░░░░░░░        ░░░░░
```

## Overview

**CodeSkel64** is a simple tool for creating initial project structures and code from skeletons.

Skeletons can be single-file templates with replaceable tags or complex directory structures.

The current catalog is available on GitHub and open for contributions:

| Collection                                 |
| ------------------------------------------ |
| [Ansible](src/catalog/Ansible)             |
| [Bash](src/catalog/Bash)                   |
| [BashLib64](src/catalog/BashLib64)         |
| [BatsCore](src/catalog/BatsCore)           |
| [Container](src/catalog/Container)         |
| [GHActions](src/catalog/GHActions)         |
| [GIT](src/catalog/GIT)                     |
| [GitLabCI](src/catalog/GitLabCI)           |
| [Go](src/catalog/Go)                       |
| [Helm](src/catalog/Helm)                   |
| [Licenses](src/catalog/Licenses)           |
| [Documentation](src/catalog/Documentation) |
| [MkDocs](src/catalog/MkDocs)               |
| [Python](src/catalog/Python)               |
| [ShellCheck](src/catalog/ShellCheck)       |
| [Terraforkm](src/catalog/Terraform)        |
| [TestManSH](src/catalog/TestManSH)         |
| [TestManTF](src/catalog/TestManTF)         |
| [VSCode](src/catalog/VSCode)               |
| [YAML](src/catalog/YAML)                   |

In addition to single files and directories skeletons can be grouped together in the form of _combos_ to allow the creation of complete project structures:

| Combo                  | Content                                         |
| ---------------------- | ----------------------------------------------- |
| `aplatform64-role`     | Ansible A:Platform64 role                       |
| `git-generic`          | GIT repository for generic project              |
| `git-terraform-module` | GIT repository for Terraform Module             |
| `git-shellscript`      | GIT repository for generic shell script project |

## Usage

```text
Usage: codeskel64 <-d|-l|-c> [-w] [-o Collection] [-k Skeleton] [-t Project] [-g Target] [-a Library] [-h]

Create initial structure from skeletons and templates

Commands

    -c           : Create initial code structure
    -d           : Download catalog to LIBRARY
    -l           : List collection and skeletons from LIBRARY

Flags

    -w           : Overwrite target
    -h           : Show help

Parameters

    -t Project   : Full path to the project where artifacts will be created. Default: <CURRENT_DIRECTORY>
    -o Collection: Collection name. Use the -l command to show available.
    -k Skeleton  : Skeleton name. Use the -l command to show available.
    -g Target    : New structure name. Default: skeleton's default
    -a Library   : Library location. Default: XDG_DATA_HOME/codeskel64
```

### Create new project or code template

Use this option to create new files or projects.

For example:

- Create new bash script:

```shell
codeskel64 -c -o Bash -k script-generic -t ~/MyBashProject -g new-bash-script
```

### List collections and skeletons

Use this option to list available options from the local library

```shell
codeskel64 -l
```

### Update local catalog

Use this option to download the latest collections and skeletons from the CodeSkel64 GitHub repo

```shell
codeskel64 -d
```

## Deployment

### OS Compatibility

The tool uses the [BastLib64](https://github.com/automation64/bashlib64) library and supports the same tested platforms.

Refer to the [OS-Compatibility](https://serdigital64.github.io/bashlib64/#os-compatibility) list for further details.

### Requirements

- Minimum Bash version: 4

### Installation

- Download _codeskel64_ from the source GitHub repository:

```shell
curl -O https://raw.githubusercontent.com/automation64/codeskel64/main/codeskel64
chmod 0755 codeskel64
# Optional: move to searchable path
mv codeskel64 ~/.local/bin
```

- Update the skeleton library:

```shell
codeskel64 -d
```

## Contributing

Help on implementing new features and maintaining the code base is welcomed.

- [Guidelines](https://github.com/automation64/codeskel64/blob/main/CONTRIBUTING.md)
- [Contributor Covenant Code of Conduct](https://github.com/automation64/codeskel64/blob/main/CODE_OF_CONDUCT.md)

## License

[GPL-3.0-or-later](https://www.gnu.org/licenses/gpl-3.0.txt)

## Author

- [SerDigital64](https://serdigital64.github.io/)
