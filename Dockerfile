FROM python:3-alpine
RUN pip install python-gitlab

COPY gitlab-ci-overdue docker-entrypoint /usr/local/bin/

ENTRYPOINT ["docker-entrypoint"]
CMD ["--help"]
