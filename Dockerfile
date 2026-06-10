FROM python:3.12-slim
<<<<<<< HEAD
### This one is for Dev Enviorment##
=======
### This one is for Demo Purpose###
>>>>>>> 2390ace (update code)
WORKDIR /app

COPY app/requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY app/ .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
