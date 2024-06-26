# Redshark

This Bash script automates the extraction of multiple TCP streams from a PCAP file based on a specified TCP port using `tshark`, the command-line version of Wireshark.

## Features

- Extracts multiple TCP streams from a PCAP file using a specified TCP port in one-go.
- Saves each TCP stream as a readable ASCII file in a dedicated directory.
- Simple and efficient script leveraging `tshark` capabilities.

## Usage

### Prerequisites

- Ensure `tshark` (Wireshark command-line tool) is installed.

### Running the Script

1. Clone the repository or download the `redshark.sh` script.

2. Make the script executable if necessary:
   ```bash
   chmod +x redshark.sh

Example
   ```bash
   ./redshark.sh capture.pcap 445
   ```

This command will extract TCP streams using port 445 (SMB) from capture.pcap and save each stream as stream_<number>.txt in the directory tcp_streams_445.
