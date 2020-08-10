#performing flask imports
from flask import Flask,jsonify


app = Flask(__name__) #intance of our flask application 



if __name__ == "__main__":
    app.run(debug = True) #debug will allow changes without shutting down the server 

