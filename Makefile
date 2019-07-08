
# List of targets the `readme` target should call before generating the readme
export README_DEPS ?= docs/targets.md docs/terraform.md

validate:
	cd example/exampleA
	/usr/bin/terraform init
	/usr/bin/terraform validate

get-plugins:
	/usr/bin/terraform init -get-plugins -backend=false -input=false

## Ensure all modules can be fetched
get-modules:
	/usr/bin/terraform init -get -backend=false -input=false >/dev/null

## Lint check Terraform
lint:
	@FAIL=`/usr/bin/terraform fmt -write=false | xargs --no-run-if-empty -n 1 printf '\t- %s\n'`; \
	[ -z "$$FAIL" ] || (echo "Terraform configuration needs linting. Run 'terraform fmt'"; echo $$FAIL; exit 1)
