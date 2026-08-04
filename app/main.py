from fastapi import FastAPI
import redis
import os

app = FastAPI()

redis_client = redis.Redis(
    host=os.getenv("REDIS_HOST"),
    port=6379,
    decode_responses=True
)

@app.get("/")
def home():
    return {"message": "Antier Solution"}

@app.get("/health")
def health():
    return {"status": "healthy"}
