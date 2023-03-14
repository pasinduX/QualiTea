FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt . 

RUN pip install --no-cache-dir -r requrements.txt

COPY . .

CMD ["python", "app.py"]
