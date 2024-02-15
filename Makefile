# Misc
.DEFAULT_GOAL = help

## —— The Dart Makefile ——————————————————————————————————
help: ## Outputs this help screen
	@grep -E '(^[a-zA-Z0-9\./_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}{printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'

## —— Jekyll ——————————————————————————————————————————————
install: ## Start server
	@bundle install

start: ## Start server
	@bundler exec jekyll serve --watch
