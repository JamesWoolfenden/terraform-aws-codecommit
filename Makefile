
# List of targets the `readme` target should call before generating the readme
export README_DEPS ?= docs/targets.md docs/terraform.md

validate:
	cd example/exampleA
	terraform init
	terraform validate

get-plugins:
	terraform init -get-plugins -backend=false -input=false

## Ensure all modules can be fetched
get-modules:
	terraform init -get -backend=false -input=false >/dev/null

## Lint check Terraform
lint:
	@FAIL=`terraform fmt -write=false | xargs --no-run-if-empty -n 1 printf '\t- %s\n'`; \
	[ -z "$$FAIL" ] || (echo "Terraform configuration needs linting. Run 'terraform fmt'"; echo $$FAIL; exit 1)
