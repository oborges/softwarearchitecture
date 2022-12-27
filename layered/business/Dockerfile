FROM icr.io/codeengine/python:latest
RUN pip3 install flask flask-cors psycopg2
COPY app.py .
EXPOSE 8080
CMD [ "python", "-m" , "flask", "run", "--host=0.0.0.0", "--port=8080"]
#ENTRYPOINT ["tail", "-f", "/dev/null"]
