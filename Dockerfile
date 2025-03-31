FROM python:3.10

WORKDIR /app
COPY . .

RUN pip install --no-cache-dir -r requirements.txt
RUN pip install rasa

EXPOSE 5005

CMD ["rasa", "run", "--enable-api", "--port", "5005", "--cors", "*"]
