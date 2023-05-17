FROM python:3.11.3-alpine3.16

WORKDIR /harvest

COPY . /harvest

RUN pip install -r requirements.txt
# RUN pip install couchdb;\
#     pip install flask;\
#     pip install flask-restful;\
#     pip install flask_script;\
#     pip install flask_migrate;\
#     pip install flask-cors;\
#     pip install requests
    
CMD ["python3", "Mastodon_demo.py"]