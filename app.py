from flask import Flask, render_template, request, jsonify
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/api/test', methods=['GET'])
def test_api():
    return jsonify({"message": "API is working!"})

@app.route('/api/calculate', methods=['POST'])
def calculate():
    data = request.get_json()
    num1 = data.get('num1', 0)
    num2 = data.get('num2', 0)
    result = float(num1) + float(num2)
    return jsonify({"result": result})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=10000) 