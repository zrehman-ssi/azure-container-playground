from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "Hello World! Git scm testing. Changeset 2."

if __name__ == "__main__":
    app.run(debug=True)