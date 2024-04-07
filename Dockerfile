FROM python:3.12.2

WORKDIR /repo/data

COPY /data/test.csv /data/train.csv /repo/data/

WORKDIR /repo

COPY train.py test.py requirements.txt /repo/

RUN pip install --no-cache-dir -r /repo/requirements.txt

RUN python train.py

CMD ["python", "test.py"]