FROM python:3.7

WORKDIR /app 

# Build Image for core app deployment
COPY flaskblog /app 
COPY requirements.txt /app
COPY run.py /app


RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python", "run.py"]
