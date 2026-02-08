FROM alpine:3.19

# Install required tools
RUN apk add --no-cache bash coreutils

# Create app directory
WORKDIR /app

# Copy log writer script
COPY . .

# Declare volume for logs
VOLUME ["/var/log/app"]

# Run the log writer
CMD ["./log_analyser.sh"]

