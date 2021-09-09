from flask import Flask
from os import environ as env

PORT = 3000
MESSAGE = env['GREETING']

app = Flask(__name__)


@app.route("/")
def root():
    result = MESSAGE.encode("utf-8")
    return result


if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=PORT)
