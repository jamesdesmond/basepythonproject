FROM python:3.11-alpine
WORKDIR /app
COPY requirements.txt /app/
RUN pip install --upgrade pip && pip install -r requirements.txt
COPY src/ src/
COPY test/ test/
COPY log/* log/
COPY config/* config/
RUN PYTHONPATH=src pytest
CMD ["python","src/main.py"]