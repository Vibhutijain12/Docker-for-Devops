from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello Python"

if __name__ == "__main__":
    # Runs on Flask’s default port (5000)
    # You can change port by setting port=<your_port>
    app.run(host="0.0.0.0", port=5000, debug=True)
