FROM python:3.11-alpine as test
WORKDIR /app
COPY requirements.txt /app/
RUN pip install --upgrade pip && pip install -r requirements.txt
COPY src/ .
COPY test/ .
RUN pytest
FROM test as run
CMD ["python","main.py"]