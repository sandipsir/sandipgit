from flask import Flask

app = Flask(_name_)

@app.route('/')
def hello():
    return 'Welcome in sandip app engine web'
