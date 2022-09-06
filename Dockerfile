FROM python
COPY * .
RUN apt-get update
RUN apt-get install mc byobu -y
RUN python -m pip install -r requirements.txt
EXPOSE 80
CMD ["python", "simple_server.py"]
