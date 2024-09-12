FROM python

WORKDIR .

COPY . .
RUN python -m pip install poetry
RUN python -m poetry install
RUN python -m pip install gunicorn flask

CMD ["python", "-m", "poetry", "run", "gunicorn", "-w", "5", "-b", "0.0.0.0:80", "app:app"]