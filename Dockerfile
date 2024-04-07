FROM python:3.12.2

WORKDIR /base/data

COPY /data/test.csv /data/train.csv /base/data/

WORKDIR /base

COPY train.py test.py requirements.txt /base/

RUN pip install --no-cache-dir -r /base/requirements.txt

RUN python train.py

CMD ["python", "test.py"]