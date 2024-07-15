.DEFAULT_GOAL := help

docker-build-cuda: ## Build cuda Docker img
	docker build --tag rr5555/neuroai:jammy-cuda ./Docker/cuda

docker-push-cuda: ## Push cuda Docker img
	docker push rr5555/neuroai:jammy-cuda

docker-run-cuda: ## Run cuda Docker container
	docker run --gpus all -v .:/root/neuroAI -itd --name neuroAI rr5555/neuroai:jammy-cuda

# https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
