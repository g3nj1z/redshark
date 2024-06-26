# Redshark

Redshark creates and automates the extraction of multiple TCP streams from a PCAP file. It creates a directory named `tcp_streams_<port>` containing individual ASCII files for each TCP stream found on the specified port using `tshark`, the command-line version of Wireshark.

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

3. Run the command by using
   ```bash
   ./redshark.sh pcap_file.pcap port
   ```
## Example

   ```bash
   ./redshark.sh capture.pcap 445
   ```

This command will extract TCP streams using port 445 (SMB) from capture.pcap and save each stream as stream_<number>.txt in the directory tcp_streams_445.
