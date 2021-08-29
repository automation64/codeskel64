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

- Deploy application

The **X_ROLE_NAME_X** Ansible-Role is part of the [A:Platform64](https://aplatform64.readthedocs.io) project and is available in the [X_COLLECTION_NAME_X](../collections/X_COLLECTION_NAME_X.md) Ansible-Collection.

## Use Cases

### Install application X_DOC_APP_NAME_X

```yaml
- name: "Example: Install X_DOC_APP_NAME_X"
  vars:
    X_ROLE_NAME_X:
      deploy: true
  ansible.builtin.include_role:
    name: "X_ROLE_NAME_X"
```

## Role Parameters

### Actions

- Use **action-parameters** to control what tasks are enabled for the role to execute.
- Parameters should be declared as task level vars as they are intented to be dynamic.

```yaml
X_ROLE_NAME_X:
  deploy: false
```

| Parameter            | Required? | Type    | Default | Purpose / Value                             |
| -------------------- | --------- | ------- | ------- | ------------------------------------------- |
| X_ROLE_NAME_X.deploy | no        | boolean | `false` | Enable installation of application packages |

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

| Parameter                     | Required? | Type    | Default             | Purpose / Value                                  |
| ----------------------------- | --------- | ------- | ------------------- | ------------------------------------------------ |
| X_COLLECTION_NAME_X.name      | no        | string  | `"X_APP_ID_X"`      | Define application X_COLLECTION_NAME_X           |
| X_COLLECTION_NAME_X.type      | no        | string  | `"X_APP_TYPE_X"`    | Select application type from X_COLLECTION_NAME_X |
| X_COLLECTION_NAME_X.version   | no        | string  | `"X_APP_VERSION_X"` | Select application version from profile          |
| X_COLLECTION_NAME_X.installed | no        | boolean | `true`              | Set application package end X_COLLECTION_NAME_X  |

## Deployment

### Compatibility

- Platforms
  - CentOS8
  - OracleLinux8
  - Ubuntu20
  - Ubuntu21
  - Fedora33

### Requirements

- Operating System package manager repository enabled. This can be automated by using the `serdigital64.core.core_repository` role.

### Ansible Dependencies

- Roles:
  - serdigital64.core.core_repository
  - serdigital64.core.core_package

### Installation Procedure

The role can be deployed by installing the Ansible-Collection from the Ansible Galaxy repository: [https://galaxy.ansible.com/serdigital64/application](https://galaxy.ansible.com/serdigital64/application)

```shell
# Install Ansible dependencies
ansible-galaxy collection install serdigital64.core
# Install the collection
ansible-galaxy collection install serdigital64.X_COLLECTION_NAME_X
```

## Contributing

Help on implementing new features and maintaining the code base is welcomed.

Please see the [guidelines](../contributing/guidelines.md) for further details.

## Author

- [SerDigital64](https://github.com/serdigital64)

## License

[GPL-3.0-or-later](https://www.gnu.org/licenses/gpl-3.0.txt)
