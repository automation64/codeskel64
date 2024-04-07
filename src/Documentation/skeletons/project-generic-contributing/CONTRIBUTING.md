# Contributing

## Prepare Development Environment

- Prepare dev tools
  - Install GIT
- Clone GIT repository

  ```shell
  git clone X_PROJECT_GIT_URL_X
  ```

- Adjust environment variables to match your configuration:

  - Copy environment definition files from templates:

  ```shell
  cp dot.local .local
  cp dot.secrets .secrets
  ```

  - Review and update content for both files to match your environment

- Download dev support scripts

  ```shell
  ./bin/X_PROJECT_NAME_DEV_X-lib
  ```

- Load dev environment variables

  ```shell
  source bin/X_PROJECT_NAME_DEV_X-set
  ```

## Update source code

- Add/Edit source code in: `src/`

## Test source code

- Add/update test-cases in: `test/`

## Repositories

- Project GIT repository: [X_PROJECT_GIT_URL_X](X_PROJECT_GIT_URL_X)
- Project Documentation: [X_PROJECT_DOC_URL_X](X_PROJECT_DOC_URL_X)
- Release history: [CHANGELOG](CHANGELOG.md)
