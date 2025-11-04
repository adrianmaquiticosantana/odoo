#!/bin/bash
set -e

# 1. Reemplaza ${PGHOST}, ${PGPORT}, etc. con los valores reales
envsubst < /opt/odoo/odoo.conf > /etc/odoo.conf

# 2. Inicia Odoo permitiendo el usuario postgres
python3 /opt/odoo/odoo-bin -c /etc/odoo.conf --db_user postgres "$@"

