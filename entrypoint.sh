#!/bin/bash
set -e

# Reemplazar variables de entorno en odoo.conf
envsubst < /opt/odoo/odoo.conf > /etc/odoo.conf

# Iniciar Odoo
python3 /opt/odoo/odoo-bin -c /etc/odoo.conf "$@"
