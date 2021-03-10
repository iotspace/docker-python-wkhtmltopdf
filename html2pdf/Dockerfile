FROM forthuan/python-wkhtmltopdf:latest

COPY .  .
COPY ./docker-entrypoint.sh ./docker-entrypoint.sh

RUN chmod +x ./docker-entrypoint.sh
RUN pip install pipenv
RUN ls -la \
  && rm -rf .venv \
  && pipenv install --system 

ENTRYPOINT ./docker-entrypoint.sh
