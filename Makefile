.PHONY: hello
hello:
	@echo 'Hello World'

.PHONY: hi
hi: hello

.PHONY: fail
fail:
	@exit 123

.PHONY: multiline
multiline:
	@echo one
	@echo two

.PHONY: semicolon
semicolon:
	@echo one; echo two

.PHONY: and
and:
	@echo one && echo two

.PHONY: display-args
display-args:
	@echo ${args}

.PHONY: list-args
list-args:
	@set -- ${args}; \
		echo "$$1"; \
		echo "$$2"

.PHONY: git
git:
	@git ${args}

.PHONY: pwd
pwd:
	@pwd
