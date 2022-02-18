#!/usr/bin/python

from __future__ import (absolute_import, division, print_function)
__metaclass__ = type

DOCUMENTATION = r'''
---
module: X_MODULE_NAME_X

version_added: "X_MODULE_VERSION_X"

short_description: X_MODULE_SHORT_DESCRIPTION_X

description: X_MODULE_LONG_DESCRIPTION_X

options:
    X_MODULE_PARAMETER_NAME1_X:
        description: X_MODULE_PARAMETER_NAME1_DESCRIPTION_X
        required: X_MODULE_PARAMETER_NAME1_REQUIRED_X
        type: X_MODULE_PARAMETER_NAME1_TYPE_X
    X_MODULE_PARAMETER_NAME2_X:
        description: X_MODULE_PARAMETER_NAME2_DESCRIPTION_X
        required: X_MODULE_PARAMETER_NAME2_REQUIRED_X
        type: X_MODULE_PARAMETER_NAME2_TYPE_X
        default: X_MODULE_PARAMETER_NAME2_DEFAULT_X

author:
    - X_AUTHOR_ALIAS_X (@X_AUTHOR_GIT_X)
'''

EXAMPLES = r'''
X_MODULE_EXAMPLE1_X
X_MODULE_EXAMPLE2_X
'''

RETURN = r'''
X_MODULE_RETURN_NAME1_X:
    description: X_MODULE_RETURN_NAME1_DESCRIPTION_X
    type: X_MODULE_RETURN_NAME1_TYPE_X
    returned: X_MODULE_RETURN_NAME1_RETURNED_X
    sample: X_MODULE_RETURN_NAME1_SAMPLE_X
X_MODULE_RETURN_NAME2_X:
    description: X_MODULE_RETURN_NAME2_DESCRIPTION_X
    type: X_MODULE_RETURN_NAME2_TYPE_X
    returned: X_MODULE_RETURN_NAME2_RETURNED_X
    sample: X_MODULE_RETURN_NAME2_SAMPLE_X
'''

from ansible.module_utils.basic import AnsibleModule
# from ansible.module_utils.common.sys_info
# from ansible.module_utils.facts.system.service_mgr
# from ansible.module_utils.facts.utils
# from ansible.module_utils._text
# from ansible.module_utils.six

def run_module():
    module_args = dict(
        X_MODULE_PARAMETER_NAME1_X=dict(type='X_MODULE_PARAMETER_NAME1_TYPE_X', required=X_MODULE_PARAMETER_NAME1_REQUIRED_X),
        X_MODULE_PARAMETER_NAME2_X=dict(type='X_MODULE_PARAMETER_NAME2_TYPE_X', required=X_MODULE_PARAMETER_NAME2_REQUIRED_X, default=X_MODULE_PARAMETER_NAME2_DEFAULT_X)
    )

    result = dict(
        changed=False,
        X_MODULE_RETURN_NAME1_X='',
        X_MODULE_RETURN_NAME2_X=''
    )

    module = AnsibleModule(
        argument_spec=module_args,
        supports_check_mode=True
    )

    if module.check_mode:
        module.exit_json(**result)

    result['X_MODULE_RETURN_NAME1_X'] = X_MODULE_RETURN_NAME1_VALUE_X
    result['X_MODULE_RETURN_NAME2_X'] = X_MODULE_RETURN_NAME2_VALUE_X

    # result['changed'] = X_MODULE_CHANGED_X
    # result['diff'] = {'after': 'X_MODULE_CHANGED_ATTRIBUTE1_X = X_MODULE_CHANGED_ATTRIBUTE1_AFTER_X\n', 'before': 'X_MODULE_CHANGED_ATTRIBUTE1_X = X_MODULE_CHANGED_ATTRIBUTE1_BEFORE_X\n'}
    # module.fail_json(msg='X_MODULE_FAIL_MESSAGE_X', **result)

    module.exit_json(**result)

def main():
    run_module()

if __name__ == '__main__':
    main()
