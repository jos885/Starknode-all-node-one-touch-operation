
#!/bin/bash

# Display menu for user to select node
echo "Please select the node to install and run:"
echo "1. pathfinder"
echo "2. juno"   
echo "3. papyrus"
echo "0. Exit"

# Get user input and validate format
read -p "Enter selection [1-3]:" choice

case $choice in

  1)

    # Pathfinder selected

    echo "You have selected the pathfinder node"

    # Install pathfinder dependencies
    sudo apt update
    sudo apt install -y build-essential curl git wget clang libclang-dev llvm libssl-dev pkg-config

    # Install Rust
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh 
    source $HOME/.cargo/env

    # Clone pathfinder repo
    git clone https://github.com/eqlabs/pathfinder.git
    cd pathfinder

    # Build pathfinder 
    cargo build --release

    # Prompt for and get Ethereum node URL
    echo "Enter your Ethereum node URL:"
    read eth_url

    # Run pathfinder node
    ./target/release/pathfinder_node --base_layer.node_url "$eth_url"

    ;;

  2)

    # Juno node selected

    echo "You have selected the juno node"

    # Install juno dependencies
    sudo apt update
    sudo apt install -y build-essential curl git wget  

    # Install Go
    wget https://golang.org/dl/go1.19.linux-amd64.tar.gz
    tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz
    export PATH=$PATH:/usr/local/go/bin

     # Clone juno repo
    git clone https://github.com/NethermindEth/juno.git
    cd juno

    # Build juno
    make

    # Prompt for and get Ethereum node URL  
    echo "Enter your Ethereum node URL:"
    read eth_url

    # Run juno node
    ./juno --eth-node "$eth_url"

    ;;

  3)

    # Papyrus node selected

    # Install, build and run papyrus

    ;;

  0)

    # Exit script
    exit 0

    ;;

  *)

    # Invalid selection
    echo "Please enter a valid number!"

esac

# Script to install and run a selected Starknet node
