from flask import Flask, request, jsonify
import json

app = Flask(__name__)

@app.route('/')
def index():
    return jsonify({"id":"1"})

if __name__ == "__main__":
    app.run(host='0.0.0.0')