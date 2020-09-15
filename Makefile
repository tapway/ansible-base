.PHONY: help init install run tags tasks

.DEFAULT_GOAL = help

help:  ## Display this help
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n\nTargets:\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2 }' $(MAKEFILE_LIST)

install:  ## Install prerequisites
	sudo apt update
	sudo apt upgrade -y
	sudo apt install software-properties-common -y
	sudo apt-add-repository --yes --update ppa:ansible/ansible
	sudo apt install ansible -y

init:  ## Cold start
	pre-commit install

run:  ## Run playbook at localhost
	ansible-playbook playbook.yml -l localhost

tags:  ## List playbook tags
	ansible-playbook playbook.yml --list-tags

tasks:  ## List playbook tasks
	ansible-playbook playbook.yml --list-tasks
