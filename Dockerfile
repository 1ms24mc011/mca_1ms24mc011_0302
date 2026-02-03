FROM python:3.10-slim
WORKDIR /mca_1ms24mc011_0302
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 5000
CMD ["python","app.py"]


