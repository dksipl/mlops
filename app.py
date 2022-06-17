"""MLOps Test App.py"""
import flask

app = flask.Flask(__name__)


@app.route("/")
def hello():
    """ Hello Jethalal Function"""
    # return "<h1>Hello Jethalal</h1>"
    return flask.render_template('index.html')

if __name__ == "__main__":
    app.run(host="0.0.0.0")
