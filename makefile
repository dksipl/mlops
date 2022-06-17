install:
	pip install -r requirements.txt

test:
	echo "test passed"

format:
	black *.py

lint:
	pylint app.py

deploy:
	#docker login --username dksipl --password-stdin Dhruv.samyak
	docker build -t mlops .
	#docker tag mlops dksipl/mlops
	#docker push dksipl/mlops

all: install test format deploy
