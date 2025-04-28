# 1. Use a Python base image
FROM python:3.9

# 2. Set working directory in the container
WORKDIR /app

# 3. Copy all files into the container
COPY . .

# 4. Install dependencies
RUN pip install -r requirements.txt

# 5. Expose the port Flask will run on
EXPOSE 5000

# 6. Run the app
CMD ["python", "app.py"]
