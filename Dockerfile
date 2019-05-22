FROM python
RUN pip install Flask
RUN pip install gunicorn
COPY busyhttp.py /
CMD ["gunicorn", "busyhttp", "-b", "0.0.0.0:80"]
EXPOSE 80
