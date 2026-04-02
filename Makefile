.PHONY: lint fmt typecheck test check clean

lint:
	poetry run ruff check appointments tests

fmt:
	poetry run ruff format appointments tests
	poetry run ruff check --fix appointments tests

typecheck:
	poetry run mypy appointments tests

test:
	poetry run pytest -v -s

check: fmt lint typecheck test

clean:
	find . -type d -name .__pycache__ -exec rm -rf {} +
	find . -type d -name .mypy_cache -exec rm -rf {} +
	find . -type d -name .pytest_cache -exec rm -rf {} + 
