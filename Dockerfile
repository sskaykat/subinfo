FROM python:3.9-slim-buster

WORKDIR /subinfo

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./subinfo.py" ]
