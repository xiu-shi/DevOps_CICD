.PHONY: setup fmt lint test

setup:
	conda env update -f environment.yml --prune
	python -m ipykernel install --user --name devops-pipeline --display-name "Python (devops-pipeline)"

fmt:
	black .
	ruff check . --fix

lint:
	ruff check .
	mypy .

test:
	pytest
