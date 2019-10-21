FROM python:3.7

RUN pip install spacy
RUN python -m spacy download en
RUN python -m spacy download en_vectors_web_lg

RUN mkdir /prodigy
WORKDIR /prodigy
COPY prodigy-1.8.5-cp35.cp36.cp37-cp35m.cp36m.cp37m-linux_x86_64.whl /prodigy
RUN pip install prodigy-1.8.5-cp35.cp36.cp37-cp35m.cp36m.cp37m-linux_x86_64.whl

