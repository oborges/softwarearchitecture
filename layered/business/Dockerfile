FROM icr.io/codeengine/python:latest
RUN pip3 install flask psycopg2
COPY business.py .
EXPOSE 8080
ENTRYPOINT python business.py
