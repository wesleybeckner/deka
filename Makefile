flake8:
	@if command -v flake8 > /dev/null; then \
	        echo "Running flake8"; \
	        flake8 flake8 --ignore N802,N806,F401 `find . -name \*.py | grep -v setup.py | grep -v /docs/ | grep -v /.venv/ | grep -v /sphinx/`; \
	else \
	        echo "flake8 not found, please install it!"; \
	        exit 1; \
	fi;
	@echo "flake8 passed"

test:
	python -m pytest
