MODULENAME = bioproc

help:
	@echo ""
	@echo "Welcome to my project!!!"
	@echo "To get started create an environment using:"
	@echo "	make init"
	@echo "	conda activate ./envs"
	@echo ""
	@echo "To generate project documentation use:"
	@echo "	make doc"
	@echo ""
	@echo "To Lint the project use:"
	@echo "	make lint"
	@echo ""
	@echo "To run unit tests use:"
	@echo "	make test"
	@echo ""
	

init:
	conda env create --prefix ./envs --file environment.yml

doc:
	pdoc --force --html --output-dir ./docs bioproc

lint:
	pylint bioproc

test:
	pytest test 

.PHONY: init doc lint test 

