from flask import Flask, jsonify, request
import json

# creating the instance of our flask application
app = Flask(__name__)

if __name__ == "__main__":
    app.run(debug=True)
