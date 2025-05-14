.PHONY: install install-global playground

install:
	poetry install

playground:
	poetry run python -m shinkai.playground

run:
	poetry run python shinkai 

install-global:
	poetry build
	pip install --upgrade dist/*.whl