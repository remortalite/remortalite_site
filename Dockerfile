FROM python

WORKDIR .

COPY . .
RUN python -m pip install --no-input poetry
RUN python -m pip install --no-input gunicorn flask python-dotenv

CMD ["python", "-m", "poetry", "run", "gunicorn", "-c", "config.py", "app:app"]