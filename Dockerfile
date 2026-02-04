# Dockerfile for Project Chimera

FROM python:3.11-slim

WORKDIR /app

COPY pyproject.toml ./
RUN pip install uv && uv pip install -r pyproject.toml || pip install -r requirements.txt

COPY . .

CMD ["pytest", "tests"]
