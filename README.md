
# Starknet Nodes Installation Script

This script allows you to conveniently install and run three popular Starknet nodes: Pathfinder, Juno, and Papyrus.

## Installation

Download the script file from the repository or copy it locally. It supports both Bash and Python versions.

## Usage

1. Make the script executable:

   ````bash
   chmod +x install_nodes.sh
   ```

2. Run the script:

   ````bash 
   ./install_nodes.sh
   ```

3. Follow the on-screen prompts to select a node to install.

4. Input your Ethereum node URL when prompted.

5. The selected node will be installed and automatically started.

## Options

- 1: Pathfinder
- 2: Juno 
- 3: Papyrus
- 0: Exit

## Dependencies

- Linux OS (Tested on Ubuntu)
- Git
- C/C++ tools  
- Python 3 (for Python version)
- Rust (for Pathfinder/Papyrus)
- Go (for Juno)

## Troubleshooting

Check for errors during installation and startup. 

Common issues:
- Invalid Ethereum node URL
- Missing build tools/dependencies

Feel free to open an issue on Github for any problems.

## Contributing

Pull requests are welcome! Please open an issue first to discuss any new features.
