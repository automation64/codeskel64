---
title: "Ansible Role: serdigital64.X_COLLECTION_NAME_X.X_ROLE_NAME_X"
description: "X_ROLE_SHORT_DESCRIPTION_X"
authors:
  - SerDigital64
tags:
  - ansible
  - devops
  - linux
  - automation
---

# Ansible Role: serdigital64.X_COLLECTION_NAME_X.X_ROLE_NAME_X

## Purpose

X_ROLE_SHORT_DESCRIPTION_X

Supported features in the current version:

- Deploy application. Packages are defined in the variable `X_ROLE_NAME_X_profiles`.

The **X_ROLE_NAME_X** Ansible-Role is part of the [A:Platform64](https://aplatform64.readthedocs.io) project and is available in the [X_COLLECTION_NAME_X](../collections/X_COLLECTION_NAME_X.md) Ansible-Collection.

## Use Cases

- Install X_TASK_ROLE_NAME_X

Sample Ansible Playbook:

```yaml
{% include "../../collections/serdigital64/X_COLLECTION_NAME_X/playbooks/X_ROLE_NAME_X.yml" %}
```

Use the sample playbook to create your own or run it as-is:

```shell
# Set ANSIBLE_COLLECTIONS_PATHS to the default install location. Change as needed.
ANSIBLE_COLLECTIONS_PATHS="${HOME}/.ansible/collections"
ansible-playbook "${ANSIBLE_COLLECTIONS_PATHS}/ansible_collections/serdigital64/X_COLLECTION_NAME_X/playbooks/X_ROLE_NAME_X.yml"
```

## Role Parameters

### Actions

- Use **action-parameters** to control what tasks are enabled for the role to execute.
- Parameters should be declared as task level vars as they are intented to be dynamic.

```yaml
X_ROLE_NAME_X:
  resolve_prereq:
  deploy:
```

| Parameter                    | Required? | Type    | Default | Purpose / Value                             |
| ---------------------------- | --------- | ------- | ------- | ------------------------------------------- |
| X_ROLE_NAME_X.resolve_prereq | no        | boolean | `false` | Enable automatic resolution of prequisites  |
| X_ROLE_NAME_X.deploy         | no        | boolean | `false` | Enable installation of application packages |

### End State

- Use **end-state** parameters to define the target state after role execution.
- Parameters should be declared in **host_vars** or **group_vars** as they are intended to be permanent.

```yaml
X_ROLE_NAME_X_application:
  name:
  type:
  version:
  installed:
```

| Parameter                           | Required? | Type       | Default             | Purpose / Value                    |
| ----------------------------------- | --------- | ---------- | ------------------- | ---------------------------------- |
| X_ROLE_NAME_X_application           | no        | dictionary |                     | Set application package end state  |
| X_ROLE_NAME_X_application.name      | no        | string     | `"X_APP_ID_X"`      | Select application package name    |
| X_ROLE_NAME_X_application.type      | no        | string     | `"X_APP_TYPE_X"`    | Select application package type    |
| X_ROLE_NAME_X_application.version   | no        | string     | `"X_APP_VERSION_X"` | Select application package version |
| X_ROLE_NAME_X_application.installed | no        | boolean    | `true`              | Set application package end state  |

## Deployment

### OS Compatibility

- CentOS8
- OracleLinux8
- Ubuntu20
- Ubuntu21
- Fedora33
- Debian10
- Debian11

### Dependencies

- Ansible Collections:
  - serdigital64.core

### Prerequisites

The Ansible engine must be already installed and configured for privileged access and remote execution.

In addition the following prerequisites can be automatically solved when running the playbook by setting the role action: `resolve_prereq: true`

- Package manager for the target application is installed and enabled.

### Installation Procedure

Manually install Ansible Collections from the Ansible Galaxy repository:

```shell
# Install Ansible dependencies
ansible-galaxy collection install serdigital64.core
# Install the collection
ansible-galaxy collection install serdigital64.X_COLLECTION_NAME_X
```

Automatic installation is also available by deploying the [A:Platform64 environment](https://aplatform64.readthedocs.io/en/latest/#deployment)

## Contributing

Help on implementing new features and maintaining the code base is welcomed.

Please see the [guidelines](../contributing/guidelines.md) for further details.

## Author

- [SerDigital64](https://serdigital64.github.io/)

## License

[GPL-3.0-or-later](https://www.gnu.org/licenses/gpl-3.0.txt)
