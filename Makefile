PROJECT="settingsjson"

install:
	pip3 install --upgrade setuptools wheel twine
build-pkg: clean_pyc
	python3 setup.py sdist bdist_wheel
register-test: build-pkg
	twine register -u 74th -r https://test.pypi.org/legacy/ settingsjson
upload-test: build-pkg
	twine upload -u 74th --repository-url https://test.pypi.org/legacy/ dist/*
register: build-pkg
upload: build-pkg
	read -p "You will upload pypi, not test.pypi!! ok? (Enter)"
	twine upload -u 74th --repository-url https://upload.pypi.org/legacy/ dist/*	
clean_pyc:
	find . -name "__pycache__" | xargs rm -rf
	find . -name "*.pyc" | xargs rm -rf
install-from-testpypi:
	pip install --index-url https://test.pypi.org/simple/ settingsjson
	pip3 install --index-url https://test.pypi.org/simple/ settingsjson
uninstall:
	pip uninstall settingsjson
	pip3 uninstall settingsjson
