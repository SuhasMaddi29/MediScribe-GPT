FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY docreport.py .
COPY report.docx .

RUN mkdir -p /app/tmp

# Environment variables (these will need to be provided at runtime)
ENV GEMINI_API_KEY=""
ENV ANTHROPIC_API_KEY=""
ENV ASSEMBLYAI_API_KEY=""

# Expose the port
EXPOSE 8000

# Command to run the application
CMD ["uvicorn", "docreport:app", "--host", "0.0.0.0", "--port", "8000"] 