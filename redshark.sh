#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <pcap_file> <tcp_port>"
    exit 1
fi

PCAP_FILE=$1
TCP_PORT=$2

# Extract unique TCP stream numbers for the given port
STREAMS=$(tshark -r "$PCAP_FILE" -Y "tcp.port == $TCP_PORT" -T fields -e tcp.stream | sort -n | uniq)

# Create a directory to store the streams
OUTPUT_DIR="tcp_streams_$TCP_PORT"
mkdir -p "$OUTPUT_DIR"

# Loop through each stream and save it as a readable ASCII file
for STREAM in $STREAMS; do
    OUTPUT_FILE="$OUTPUT_DIR/stream_$STREAM.txt"
    tshark -r "$PCAP_FILE" -q -z "follow,tcp,ascii,$STREAM" > "$OUTPUT_FILE"
    echo "Saved stream $STREAM to $OUTPUT_FILE"
done

echo "All streams have been saved in the directory: $OUTPUT_DIR"
