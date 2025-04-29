.PHONY: install install-global

install:
	poetry install

run:
	poetry run python karudo

install-global:
	poetry build
	pip install --upgrade dist/*.whl