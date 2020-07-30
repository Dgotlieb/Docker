FROM python:3-alpine
USER Daniel
ADD 1.py /
CMD ["python3", "./1.py"]
