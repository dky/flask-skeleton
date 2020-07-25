# Import app from __init__.py
from app import app


@app.route('/')
@app.route('/index')
def index():
    return 'Hello World!'
