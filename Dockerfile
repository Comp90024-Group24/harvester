FROM python:3.11.3-alpine3.16
RUN apk add --no-cache gcc g++ make openmpi-dev

WORKDIR /harvest

COPY . /harvest

RUN pip install -r requirements.txt

    
# CMD ["python3", "Mastodon_demo.py"]
RUN chmod +x harvest.sh
CMD ["/bin/bash","./harvest.sh"]