build: clean
	python3 -m pip install --upgrade --quiet setuptools wheel twine
	python3 setup.py --quiet sdist bdist_wheel

publish: build
	python3 -m twine check dist/*
	python3 -m twine upload dist/*

clean:
	rm -r build dist *.egg-info || true

### arcotech-45fdded4f5-f42379d679
