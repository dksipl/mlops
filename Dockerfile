FROM python:3.8
WORKDIR /app
COPY . /app
<<<<<<< HEAD
EXPOSE 6996
=======
# EXPOSE 8080
>>>>>>> fd230fed32f7af996ccf6193944b7e72e0a5a709
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
