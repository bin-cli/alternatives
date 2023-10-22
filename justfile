set positional-arguments

alias hi := hello

@_default:
    just --list

[private]
@ensure-git-changes-are-committed:
    test -z "$(git status --porcelain)"

# Say hello
@hello:
    echo 'Hello World'

@fail:
    exit 123

@semicolon:
    echo one; echo two

@and:
    echo one && echo two

@display-args *args:
    echo "$@"

[no-cd, no-exit-message]
@git *args:
    git "$@"

[no-cd]
@touch1 *args:
    touch {{args}}

[no-cd]
@touch2 *args:
    touch "{{args}}"

[no-cd]
@touch3 *args:
    touch "$@"

[no-cd]
@pwd:
    pwd

@deploy: ensure-git-changes-are-committed
    echo 'Deploying changes...'

escape-test:
    #!/usr/bin/env bash
    set -euo pipefail
    echo '{{{{args}}'
