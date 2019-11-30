.PHONY: all


all: Dockerfile 
	docker build -t akqf/root-python3 .
	docker run -it --rm akqf/root-python3 python --version
	docker run -it --rm akqf/root-python3 python -c "import ROOT"
