.PHONY: install install-global

install:
	poetry install

run:
	poetry run python shinkai 

install-global:
	poetry build
	pip install --upgrade dist/*.whl