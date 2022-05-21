install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

# https://black.readthedocs.io/en/stable/
format:
	black *.py

# https://pylint.pycqa.org/en/latest/
lint:
	pylint --disable=R,C hello.py

# https://docs.pytest.org/en/7.1.x/
test:
	python -m pytest -vv --cov=hello test_hello.py

all:
	install lint test