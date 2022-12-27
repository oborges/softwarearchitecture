FROM icr.io/codeengine/python:latest
RUN pip3 install flask psycopg2
COPY app.py .
EXPOSE 8080
CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0", "--port=8080"]

