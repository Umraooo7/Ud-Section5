FROM alpine:3.5
RUN apk add --update py2-pip
RUN pip install --upgrade pip
COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt
COPY app.py /usr/src/app/
COPY create-table.py /usr/src/app/
COPY item.py /usr/src/app/
COPY security.py /usr/src/app/
COPY user.py /usr/src/app/
EXPOSE 5000
CMD ["python","/usr/src/app/app.py"]
