PROJECT="settingsjson"

install:
	pip3 install --upgrade setuptools wheel twine
build-pkg:
	python3 setup.py sdist bdist_wheel
register-test:
	twine register -u 74th -r https://test.pypi.org/legacy/ settingsjson
upload-test:
	twine upload -u 74th --repository-url https://test.pypi.org/legacy/ dist/*
register:
upload:
	echo You will upload pypi, not test.pypi!!
	twine upload -u 74th --repository-url https://upload.pypi.org/legacy/ dist/*	
