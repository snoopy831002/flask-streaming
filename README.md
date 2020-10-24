# flask-streaming
This is a video streaming application using flask

## RUN hls-generator :  ./generate_hls.sh . 
This hls-generator write video to the "video" folder in under flask-view
The script is converted into python3 version (using venv under flask venv)

## RUN flask
Script path : /Users/zhonghaoli/flask-streaming/flask-view/venv/bin/flask
Parameters : run
Env : PYTHONUNBUFFERED=1;FLASK_APP=app.py
Python : python3.8 using venv
Requirement:
click6.7
Flask0.12.3




