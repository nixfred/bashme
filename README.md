# `.bashrc` Custom Configuration

This repository contains a customized `.bashrc` file tailored for enhanced productivity, convenience, and system management. The configurations include helpful aliases, environmental variables, and script integrations to streamline workflows.

## Features

### General
- **Interactive Shell Configuration**: Ensures configurations apply only to interactive sessions.
- **Version and Messaging**: Displays version (`VER`) and motivational message (`MESSAGE`) at shell startup.
- **Dynamic IP Display**: Fetches and displays external and internal IP addresses.

### Aliases
- **System Management**:
  - `aa`: Update and clean the system in a single command.
  - `bm`: Edit `.bashrc` and reload the configuration.
  - `battery`: Check the battery status.
- **Network Tools**:
  - `eip`: Get external IP.
  - `pub`: Mount shared directories securely.
- **Productivity Enhancements**:
  - `makegit`: Streamline Git repository setup.
  - `gp`: Push changes to the main branch.
- **Utilities**:
  - `large`: Mount a shared drive with CIFS.
  - `files`: SSH into a file server.

### Script Integration
- **ASCII Art**: Display custom ASCII art at shell startup using `art`.
- **Cloud Mount**: Easily manage cloud storage using `cmount`.

### Benchmarks
- **System Performance**:
  - `testcpu`: CPU performance test using Sysbench.
  - `testmem`: Memory performance test.
  - `testio`: Disk IO performance test.

## Setup

### Prerequisites
- **Linux Distribution**: Tested on Debian-based systems.
- **Required Tools**:
  - `lolcat`: For colorful terminal output.
  - `docker`, `sysbench`, and `proxychains`: For advanced features.

### Installation
1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/bashrc-config.git
