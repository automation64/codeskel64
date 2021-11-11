---
title: "Ansible Playbook: X_PLAYBOOK_NAME_X"
description: "X_PLAYBOOK_SHORT_DESCRIPTION_X"
authors:
  - SerDigital64
tags:
  - ansible
  - devops
  - linux
  - automation
---

# Ansible Playbook: X_PLAYBOOK_NAME_X

## Purpose

X_PLAYBOOK_SHORT_DESCRIPTION_X.

Supported features in the current version:

-

## Use Cases

### X_USE_CASE_X

```yaml
ansible-playbook playbooks/site/X_PLAYBOOK_NAME_X.yml -i inventories/site/X_INVENTORY_NAME_X.ini
```

## Playbook Parameters

### Inventory

Register the hosts that will consume the service in the Ansible Inventory file:

- File: `inventories/site/X_INVENTORY_NAME_X.ini`
- Host Group: `X_GROUP_NAME_X`

### End State

A dedicated group_vars directory is used to store end-state configuration settings for both the playbook and related Ansible Roles.

Set playbook specific settings in the file: `inventories/site/group_vars/X_GROUP_NAME_X/X_PLAYBOOK_NAME_X.yml`

```yaml
X_PLAYBOOK_NAME_X_apps:
  X_APP_NAME_X:
```

| Parameter                           | Required? | Type       | Default | Purpose / Value                           |
| ----------------------------------- | --------- | ---------- | ------- | ----------------------------------------- |
| X_PLAYBOOK_NAME_X_apps              | no        | dictionary |         | Define what applications will be deployed |
| X_PLAYBOOK_NAME_X_apps.X_APP_NAME_X | no        | boolean    | true    | Deploy the application?                   |

Additional role specific settings are available to further customize the playbook:

| A:Platform64 role                                                                | group_vars file                                                  |
| -------------------------------------------------------------------------------- | ---------------------------------------------------------------- |
| [serdigital64.core.core_repository](../roles/core_repository.md#role-parameters) | `inventories/site/group_vars/X_GROUP_NAME_X/core_repository.yml` |

## Deployment

### OS Compatibility

- CentOS8
- OracleLinux8
- Ubuntu20
- Ubuntu21
- Fedora33

### Dependencies

Dependencies in this section are automatically solved during the installation process.

- Ansible Collections:
  - serdigital64.core
  - serdigital64.

### Prerequisites

- Ansible:
  - Control Node: A:Platform64 installed and configured
  - Managed Nodes: target hosts prepared for A:Platform64 control

### Installation Procedure

The playbook is automatically deployed during the [A:Platform64 installation](/#installation) process

## Contributing

Help on implementing new features and maintaining the code base is welcomed.

Please see the [guidelines](../contributing/guidelines.md) for further details.

## Author

- [SerDigital64](https://github.com/serdigital64)

## License

[GPL-3.0-or-later](https://www.gnu.org/licenses/gpl-3.0.txt)
