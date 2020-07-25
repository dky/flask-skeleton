from flask import Flask

app = Flask(__name__)

# Import routes module routes.py
from app import routes
