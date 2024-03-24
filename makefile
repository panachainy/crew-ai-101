i: install
install:
	poetry install # auto create .venv with poetry.toml

docker.build:
	docker build . -t local-app

# ex `make docker.run`
docker.run:
	docker run local-app
