This is a base project to be forked and used in later work.
# Project Structure 
### generated with `tree ./ -I venv | sed 's/  / /' | pbcopy`
./
├── Dockerfile
├── README.md
├── pyproject.toml
├── requirements.txt
├── src
│  └── main.py
└── test

It supports

- containerization
- secret injection
- configuration
- logging
- testing
- linting

This project will be for scripts that run, and exit
But I should extend this script for microservice HTTP/grpc/graphql type services

## Linting
`black` is used for code formatting, `flake8` is used for PEP enforcement, `mypy` is for type checking.

## Testing
`pytest` is used for testing. Run `PYTHONPATH=src pytest` to invoke test suite.
Not quite sure why the importing in the pytest configuration is not working
## Containerization
`docker` is used for containerization.
- `docker build -t imagename .` to build
- `docker run imagename` to run
