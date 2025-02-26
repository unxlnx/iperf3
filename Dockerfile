# Use the latest version of Ubuntu
FROM ubuntu:latest

# Install iperf3
RUN apt-get update && apt-get install -y iperf3 && apt-get clean

# Expose the default iperf3 port
EXPOSE 5201

# Start iperf3 in server mode
CMD ["iperf3", "-s"]
