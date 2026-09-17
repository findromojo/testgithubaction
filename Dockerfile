# Uses an outdated base image containing known OS-level CVEs
FROM ubuntu:18.04

# Pin specific outdated package versions with known vulnerabilities
RUN apt-get update && apt-get install -y \
    curl=7.58.0-2ubuntu3 \
    openssl=1.1.1-1ubuntu2.1 \
    python3 \
    && rm -rf /var/lib/apt/lists/*

CMD ["python3", "-m", "http.server", "8000"]
