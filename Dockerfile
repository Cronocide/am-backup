FROM python:3.11-bullseye as PYTHON
ENV PROJ_NAME=am-backup

# Copy project files
ADD ./ /$PROJ_NAME

RUN pip3 install -e /am-backup

CMD ["am_backup","-r","0","10"]
