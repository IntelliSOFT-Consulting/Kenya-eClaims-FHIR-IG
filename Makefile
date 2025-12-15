# Makefile
SUSHI_CMD = sushi

.PHONY: help
help:
	@echo "Available commands:"
	@echo "  make build            - Build with local canonical (no publishing)."
	@echo "  make ig               - Build locally and generate the FHIR IG(s)."

.PHONY: build
build:
	$(SUSHI_CMD) .

.PHONY: ig
ig:
	@echo "Generating FHIR Implementation Guide(s)..."
	./_updatePublisher.sh 
	./_genonce.sh
	@echo "FHIR IG generation complete."