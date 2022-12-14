from flask import Flask, render_template, request
import os
app = Flask(__name__)
# @app.route('/')
# def index():
#     return render_template('name.html')
@app.route('/howdy', methods=['POST'])
def howdy():
    name = request.form['name']
    return {"res_status": True, "msg":f"Git cloud poc by {name}..run on 14-12-2022"}
  
if __name__ == '__main__':
    app.run(host = '0.0.0.0', port=int(os.environ.get('PORT', 8080)))
