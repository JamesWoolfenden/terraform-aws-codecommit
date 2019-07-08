SHELL := /bin/bash

# List of targets the `readme` target should call before generating the readme
export README_DEPS ?= docs/targets.md docs/terraform.md

-include $(shell curl -sSL -o .build-harness "https://raw.githubusercontent.com/JamesWoolfenden/build-harness/master/templates/Makefile.build-harness"; echo .build-harness)

## Lint terraform code
lint:
	$(SELF) terraform/install terraform/get-modules terraform/get-plugins terraform/lint terraform/validate

validate:
	cd example/exampleA
	terraform init
	terraform validate

get-plugins:
	terraform init -get-plugins -backend=false -input=false >/dev/null

## Ensure all modules can be fetched
get-modules:
	terraform init -get -backend=false -input=false >/dev/null

## Lint check Terraform
lint:
	@FAIL=`terraform fmt -write=false | xargs --no-run-if-empty -n 1 printf '\t- %s\n'`; \
	[ -z "$$FAIL" ] || (echo "Terraform configuration needs linting. Run 'terraform fmt'"; echo $$FAIL; exit 1)
