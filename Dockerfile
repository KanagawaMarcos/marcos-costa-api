FROM tiangolo/uvicorn-gunicorn-fastapi:python3.6
ENV PYTHONUNBUFFERED=1
WORKDIR /api
COPY requirements.txt /api/
RUN pip install --upgrade pip==21.0.1
RUN pip install -r requirements.txt
COPY . /api/
EXPOSE 8000
