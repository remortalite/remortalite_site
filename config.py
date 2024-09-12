from dotenv import load_dotenv
import os

load_dotenv()

port = os.getenv('PORT')
bind = '0.0.0.0:' + port
workers = 4

# set if over HTTPS (:443)
# keyfile = os.getenv('PRIVKEY_PATH')
# certfile = os.getenv('CERT_PATH')
# ca_certs = os.getenv