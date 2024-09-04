#
FROM rabbitmq:3.9-management

#
ENV RABBITMQ_DEFAULT_USER=user
ENV RABBITMQ_DEFAULT_PASS=password
ENV RABBITMQ_DEFAULT_VHOST=my_vhost

#
EXPOSE 5672 15672

#
CMD ["rabbitmq-server"]
