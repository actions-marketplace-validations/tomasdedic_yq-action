# action-yq

This Github action provides a docker environment with yq (https://mikefarah.gitbook.io/yq/)
installed as package to alpine linux

## Usage

action-yq only has one (required) parameter: `file`
This is a shell script that will be executed in a docker environment (using the command `sh`).

### Example

```yaml
name: main

on:
  pull_request:
    branches:
      - master

jobs:
  build-yaml:
    runs-on: ubuntu-latest
    steps:
    - name: Generate json file
      uses: tomasdedic/action-yq
      with:
        command: yourCommand 
```
