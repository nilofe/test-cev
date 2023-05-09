from fastapi import FastAPI
import numpy as np 
from pydantic import BaseModel
import pickle


app = FastAPI()
model_predict = pickle.load(open("model.pkl", "rb"))



class Model(BaseModel):
    age_experience: float


@app.get("/")
def main():
    return "Welcome to Machine Learning FastAPI"

@app.post("/api/")
def model(api: Model):
    user_salary = model_predict.predict([[np.array(api.age_experience)]])

    return {"Salary": int(user_salary)}

@app.post("/api/{age_experience}")
def model(age_experience: float):
    user_salary = model_predict.predict([[np.array(api.age_experience)]])
    salary_integer = int(user_salary)

    return {"Salary": salary_integer}

