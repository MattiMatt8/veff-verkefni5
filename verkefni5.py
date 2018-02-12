from bottle import *
import os, json, urllib.request, datetime

with urllib.request.urlopen("http://apis.is/concerts") as f:
    data = json.loads(f.read().decode())

@route('/')
def index():
    return template('v5/index',data=data)

@route('/css/<skjal>')
def server_static(skjal):
    return static_file(skjal, root='./v5/css')

@error(404)
def villa404(error):
    return '''
    <h2>Error 404</h2>
    <h3>Síða finnst ekki</h3>
    <a href="/">Til Baka</a>
    '''

@error(500)
def villa500(error):
    return '''
    <h2>Error 500</h2>
    <h3>Villa í forritinu</h3>
    <a href="/">Til Baka</a>
    '''

run(host="0.0.0.0", port=os.environ.get('PORT'))
#run(host='localhost', port=8080, debug=True, reloader=True)
