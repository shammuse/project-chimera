# Makefile for Project Chimera

setup:
	uv pip install -r pyproject.toml || pip install -r requirements.txt

test:
	pytest tests

spec-check:
	@echo "Spec check not yet implemented."
