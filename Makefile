
# List of targets the `readme` target should call before generating the readme
export README_DEPS ?= docs/targets.md docs/terraform.md

.ONESHELL:
TMP ?= /tmp
TERRAFORM_VERSION ?= 0.12.3
TERRAFORM_URL ?= https://releases.hashicorp.com/terraform/$(TERRAFORM_VERSION)/terraform_$(TERRAFORM_VERSION)_$(OS)_amd64.zip

## Install terraform
install:
	curl '-#' -fL -o $(TMP)/terraform.zip $(TERRAFORM_URL) && \
		unzip -q -d $(TMP)/ $(TMP)/terraform.zip && \
		mv $(TMP)/terraform /usr/local/bin/terraform && \
		rm -f $(TMP)/terraform.zip \
		)
	$(TERRAFORM) version

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
