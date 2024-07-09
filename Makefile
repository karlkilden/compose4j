.ONESHELL:
SHELL := /bin/bash
.SHELLFLAGS = -ec

MVN_CMD ?= mvn -T 1C

format:
	@echo "Formatting code..."
	@$(MVN_CMD) spotless:apply

clean:
	@echo "Cleaning up (mvn clean)..."
	@$(MVN_CMD) clean
	@rm -f $(JAR_FILE)

setup:
	@cp .scripts/format.sh .git/hooks/pre-commit
	@echo "setup pre-commit hook"

