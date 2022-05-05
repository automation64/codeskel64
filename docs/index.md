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

| Collection                          | Content           |
| ----------------------------------- | ----------------- |
| [Ansible](src/catalog/Ansible)      | Ansible assets    |
| [Bash](src/catalog/Bash)            | Bash assets       |
| [Container](src/catalog/Container)  | Container assets  |
| [GIT](src/catalog/GIT)              | GIT assets        |
| [Licenses](src/catalog/Licenses)    | Software Licenses |
| [MarkDown](src/catalog/MarkDown)    | MarkDown assets   |
| [MkDocs](src/catalog/MkDocs)        | MkDoc assets      |
| [Python](src/catalog/Python)        | Python assets     |
| [Terraforkm](src/catalog/Terraform) | Terraform assets  |

In addition to single files and directories skeletons can be grouped together in the form of _combos_ to allow the creation of complete project structures:

| Combo                | Content                                                                             |
| -------------------- | ----------------------------------------------------------------------------------- |
| aplatform64-role     | Ansible A:Platform64 role                                                           |
| git-generic          | GIT repository for generic project                                                  |
| git-terraform-module | GIT repository for Terraform Module. Ready for publishing into Terraform's Registry |

## Usage

```text
Usage: codeskel64 <-d|-l|-c> [-w] [-o COLLECTION] [-k SKELETON] [-t PROJECT] [-g TARGET] [-a LIBRARY] [-h]

Create initial structure from skeletons and templates

Commands

    -d           : Download catalog to LIBRARY
    -l           : List collection and skeletons from LIBRARY
    -c           : Create initial code structure

Flags

    -w           : Overwrite target
    -h           : Show help

Parameters

    -o COLLECTION: Collection name
    -k SKELETON  : Skeleton name
    -t PROJECT   : Destination full path
    -g TARGET    : New structure name. Default: skeleton's default
    -a LIBRARY   : Library location. Default: CODESKEL64_LIBRARY (/home/serdigital64/.local/share/codeskel64)
```

### Create new project or code

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

- AlmaLinux8
- Alpine3
- CentOS8
- Debian10
- Debian11
- Fedora33
- Fedora35
- OracleLinux8
- RedHatLinux8
- Ubuntu20
- Ubuntu21

### Prerequisites

- Bash

### Installation

Download _codeskel64_ from the source GitHub repository:

```shell
curl -O https://raw.githubusercontent.com/serdigital64/codeskel64/main/codeskel64
chmod 0755 codeskel64
# Optional: move to searchable path
mv codeskel64 ~/.local/bin
```

Update the skeleton library:

```shell
codeskel64 -d
```

## Development

### Environment

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

### Repositories

- Project GIT repository: [https://github.com/serdigital64/codeskel64](https://github.com/serdigital64/codeskel64)

## Contributing

Help on implementing new features and maintaining the code base is welcomed.

[Contributor Covenant Code of Conduct](CODE_OF_CONDUCT)

## License

[GPL-3.0-or-later](https://www.gnu.org/licenses/gpl-3.0.txt)

## Author

- [SerDigital64](https://serdigital64.github.io/)
