FROM python:3.8
WORKDIR /app
COPY . /app
EXPOSE 8080
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
