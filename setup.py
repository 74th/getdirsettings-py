import setuptools

with open("README.md", "r") as fh:
    long_description = fh.read()

setuptools.setup(
    name="settingsjson",
    version="1.0.0",
    author="74th",
    author_email="site@j74th.com",
    description="simple setting json getter",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/74th/settingsjson-py",
    packages=setuptools.find_packages(),
    classifiers=(
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ),
)
