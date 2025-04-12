from fastapi import FastAPI
from typing import Optional

app = FastAPI()

@app.get("/api/v1.0/predict")
def predict(number1: Optional[float] = 0.0, number2: Optional[float] = 0.0):
    total = number1 + number2
    prediction = 1 if total > 5.8 else 0
    return {
        "prediction": prediction,
        "features": {
            "number1": number1,
            "number2": number2,
            "sum": total
        }
    }