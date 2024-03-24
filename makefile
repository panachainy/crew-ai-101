i: install
install:
	poetry install # auto create .venv with poetry.toml

dev:
	poetry run python main.py

docker.build:
	docker build . -t local-app

# ex `make docker.run`
docker.run:
	docker run local-app
