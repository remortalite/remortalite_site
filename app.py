from flask import Flask, render_template
import json

app = Flask(__name__)


def get_projects(path):
    with open(path, 'r') as f:
        data = json.loads(f.read())
    return data


@app.route("/")
def index():
    projects = get_projects('data/projects.json')
    return render_template("index.html",
                           projects=projects)
