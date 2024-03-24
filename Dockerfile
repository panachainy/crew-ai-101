FROM python:3.12-alpine

RUN pip install poetry==1.8.2

RUN poetry config virtualenvs.create false

WORKDIR /code

COPY ./pyproject.toml ./readme.md ./poetry.lock* ./

RUN poetry install --no-interaction --no-ansi --no-root

COPY . .

CMD ["python", "main.py"]
