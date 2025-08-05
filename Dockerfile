# נשתמש ב־Python
FROM python:3.9-slim

# נגדיר תיקייה ראשית באימג'
WORKDIR /app

# נעתיק את קבצי הפרויקט
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

# ברירת המחדל להרצה
CMD ["python", "app.py"]

