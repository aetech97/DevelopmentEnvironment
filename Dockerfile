FROM python:3
WORKDIR /usr/src/app
EXPOSE 3000
COPY requirements.txt .
RUN pip install -qr requirements.txt
COPY app1.py .
CMD ["python", "./app1.py"]