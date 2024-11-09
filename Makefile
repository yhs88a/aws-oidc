.DEFAULT_GOAL := help

.PHONY: help check-env docs fmt init refresh plan apply destroy tfclean

TFVARS := $(TF_VAR_CI_ENVIRONMENT_NAME).tfvars

check-env:
ifndef TF_VAR_CI_ENVIRONMENT_NAME
	$(error TF_VAR_CI_ENVIRONMENT_NAME is not set. It is required.)
endif

docs:
	@for dir in ./modules/*/; do \
	terraform-docs markdown $$dir > $$dir/README.md; \
	done

fmt:
	@terragrunt fmt -recursive .

init: check-env
	@echo "Using tfvars file: $(TFVARS)"
	@terragrunt run-all init --var-file=$(TFVARS)

refresh: init
	@terragrunt run-all refresh --var-file=$(TFVARS)

plan: init
	@terragrunt run-all plan --var-file=$(TFVARS)

apply: init
	@terragrunt run-all apply --var-file=$(TFVARS)

destroy: init
	@terragrunt run-all destroy --var-file=$(TFVARS)

tfclean:
	@find . -type d -name '.terraform' -exec rm -rf {} +
	@find . -type f -name '.terraform.lock.hcl' -exec rm -rf {} +
	@find . -type d -name '.terragrunt-cache' -exec rm -rf {} +
	@find . -type f -name 'remote_state.tf' -exec rm -rf {} +
