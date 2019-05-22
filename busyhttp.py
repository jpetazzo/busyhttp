import time

from flask import Flask
application = Flask(__name__)

@application.route("/")
def busy():
    until = time.time() + 1
    while time.time() < until:
        pass
    return "I've been busy for 1 second.\n"

