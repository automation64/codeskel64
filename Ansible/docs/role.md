# Ansible Role: __ROLE_NAME__

## About

The **__ROLE_NAME__** Ansible-Role is part of the [__PROJECT_NAME__](https://github.com/serdigital64/platform64) project and is available in the [__COLLECTION_NAME__](../collections/__COLLECTION_NAME__.md) Ansible-Collection.

The purpose of the role is to automate the management of __COMPONENT__.

Supported features in the current version:

- __FEATURE__.

## Use Cases

### __USE_CASE__

```yaml
- name: "__USE_CASE_TASK__"
  vars:
    __ROLE_NAME__:
      prepare: true
      deploy: true
      setup: true
      provision: true
    __ROLE_PARAMETER__:
  ansible.builtin.include_role:
    name: "serdigital64.__COLLECTION_NAME__.__ROLE_NAME__"
```

## Role Parameters

### Actions

- Use **action-parameters** to control what tasks are enabled for the role to execute.
- Parameters should be declared as task level vars as they are intented to be dynamic.

```yaml
__ROLE_NAME__:
  deploy:
```

| Parameter             | Required? | Type    | Default | Purpose / Value                                 |
| --------------------- | --------- | ------- | ------- | ----------------------------------------------- |
| __ROLE_NAME__.prepare   | no        | boolean | false   | Enable preparation of the runtime environment   |
| __ROLE_NAME__.deploy    | no        | boolean | false   | Enable installation of application packages     |
| __ROLE_NAME__.setup     | no        | boolean | false   | Enable configuration of the runtime environment |
| __ROLE_NAME__.provision | no        | boolean | false   | Enable __PROVISIONING_DESCRIPTION__               |

### End State

- Use **end-state** parameters to define the target state after role execution.
- Parameters should be declared in **host_vars** or **group_vars** as they are intended to be permanent.

```yaml
__ROLE_NAME___packages_installed:
```

| Parameter                       | Required? | Type    | Default | Purpose / Value           |
| ------------------------------- | --------- | ------- | ------- | ------------------------- |
| __ROLE_NAME__\_packages_installed | no        | boolean | true    | Set the package end state |

## Deployment

### Compatibility

- Platforms
  - CentOS8
  - OracleLinux8
  - Ubuntu20
  - Ubuntu21
  - Fedora33

### Requirements

- Operating System package manager repository enabled.

### Ansible Dependencies

- Roles: none
- Collections: none

### Installation Procedure

The role can be deployed by installing the Ansible-Collection from the Ansible Galaxy repository: [https://galaxy.ansible.com/serdigital64/__COLLECTION_NAME__](https://galaxy.ansible.com/serdigital64/__COLLECTION_NAME__)

```shell
# Install the collection
ansible-galaxy collection install serdigital64.__COLLECTION_NAME__
```

## Contributing

Help on implementing new features and maintaining the code base is welcomed.

Please see the [guidelines](../contributing/guidelines.md) for further details.

## Author

- [SerDigital64](https://github.com/serdigital64)

## License

[GPL-3.0-or-later](https://www.gnu.org/licenses/gpl-3.0.txt)
