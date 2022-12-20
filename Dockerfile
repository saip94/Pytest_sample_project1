FROM python:3.10.9-alpine
RUN mkdir /pytest-container-demo1/
ADD . /pytest-container-demo1/
WORKDIR /pytest-container-demo1/
RUN pip install --upgrade pip
RUN pip3 install -r requirements.txt
ENTRYPOINT pytest -s -v .\Testcases\test_searching.py --disable-warnings
