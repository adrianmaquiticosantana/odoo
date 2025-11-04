FROM python:3.11

RUN apt-get update && apt-get install -y \
    postgresql-client \
    libpq-dev \
    libxml2-dev \
    libxslt1-dev \
    libldap2-dev \
    libsasl2-dev \
    libssl-dev \
    node-less \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /opt/odoo

COPY . .

RUN pip3 install -r requirements.txt

EXPOSE 8069

CMD ["python3", "odoo-bin", "-c", "/etc/odoo.conf"]
