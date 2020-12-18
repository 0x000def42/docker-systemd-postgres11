FROM postgres:11
ENV PGDATA=/postgres_data
EXPOSE 5432
CMD ["postgres"]