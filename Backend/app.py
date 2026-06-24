from flask import Flask, request, jsonify
from flask_cors import CORS
from ultralytics import YOLO
import PIL.Image as Image
import io

app = Flask(__name__)
CORS(app)
model = YOLO('best.pt')

@app.route('/predict', methods=['POST'])
def predict():
    if 'image' not in request.files:
        return jsonify({"error": "No image uploded"}), 400
    file = request.files['image']
    img_bytes = file.read()
    img = Image.open(io.BytesIO(img_bytes))
    
    # Jalnkan inferensi
    result = model(img)
    
    #Ambil hasil klasifikasinya
    probs = result[0].probs
    class_id = probs.top1
    class_name = model.names[class_id]
    confidence = float(probs.top1conf)
    
    return jsonify({
        "label": class_name,
        "confidence": confidence,
        "status": "success"
    })
    
if __name__== '__main__':
    app.run(host='0.0.0.0', port=5000)
        