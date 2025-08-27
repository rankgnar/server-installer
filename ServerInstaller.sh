#!/bin/bash

#####################################################################################################
#                                           RANKGNAR                                               #
#####################################################################################################

version() {
echo -e "                                   \e[97mRankGnar Server Installer: \e[32mv. 1.0.0\e[0m                                  "
echo -e "\e[32mhttps://github.com/rankgnar      \e[97m<----- GitHub Repository ----->     \e[32mhttps://rankgnar.com\e[0m"
}

#####################################################################################################
#                                           RANKGNAR                                               #
#####################################################################################################

## Setup Colors
yellow="\e[33m"
green="\e[32m"
white="\e[97m"
beige="\e[93m"
red="\e[91m"
reset="\e[0m"

#####################################################################################################
#                                           RANKGNAR                                               #
#####################################################################################################

menu_installer="1"

#####################################################################################################
#                                           RANKGNAR                                               #
#####################################################################################################

home_directory="$HOME"
server_data="${home_directory}/server_data/server_data"

data() {
    server_name=$(grep "Server Name:" "$server_data" | awk -F': ' '{print $2}')
    internal_network=$(grep "Internal Network:" "$server_data" | awk -F': ' '{print $2}')
}

#####################################################################################################
#                                           RANKGNAR                                               #
#####################################################################################################

## Setup License

## rights
setup_rights() {
    echo -e "$yellow===================================================================================================\e[0m"
    echo -e "$yellow=                                                                                                 =\e[0m"
    echo -e "$yellow=  $white This auto-installer was developed to help with the installation of main applications    $yellow  =\e[0m"
    echo -e "$yellow=  $white  available in the open source market. Credits go to all developers of each application  $yellow  =\e[0m"
    echo -e "$yellow=  $white available here. This Setup is licensed under the MIT License. You can use, copy, modify, $yellow =\e[0m"
    echo -e "$yellow=  $white  merge, publish, distribute and/or sell copies of final products, but you must always    $yellow  =\e[0m"
    echo -e "$yellow=  $white declare that RankGnar is the original author of these codes and provide a link to Github $yellow  =\e[0m"
    echo -e "$yellow=                                                                                                 =\e[0m"
    echo -e "$yellow===================================================================================================\e[0m"
    echo ""
    echo ""
}

installer_rights() {
    echo -e "$yellow===================================================================================================\e[0m"
    echo -e "$yellow=                                                                                                 =\e[0m"
    echo -e "$yellow=  $white This auto-installer was developed to help with the installation of main applications    $yellow  =\e[0m"
    echo -e "$yellow=  $white  available in the open source market. Credits go to all developers of each application  $yellow  =\e[0m"
    echo -e "$yellow=  $white available here. This Setup is licensed under the MIT License. You can use, copy, modify, $yellow =\e[0m"
    echo -e "$yellow=  $white  merge, publish, distribute and/or sell copies of final products, but you must always    $yellow  =\e[0m"
    echo -e "$yellow=  $white declare that RankGnar is the original author of these codes and provide a link to Github $yellow  =\e[0m"
    echo -e "$yellow=                                                                                                 =\e[0m"
    echo -e "$yellow===================================================================================================\e[0m"
    echo ""
    echo ""
    read -p "By typing Y you accept and agree with the guidelines above (Y/N): " choice
    while true; do
        case $choice in
            Y|y)
                return
                ;;
            N|n)
                clear
                show_finished
                echo "Sorry you don't agree, I'll be closing the installer. See you later."
                sleep 2
                clear
                exit 1
                ;;
            *)
                clear
                error_msg
                echo ""
                echo ""
                echo "Please, type only Y or N."
                sleep 2
                clear
                show_installer
                installer_rights
                ;;
        esac
    done
}

#####################################################################################################
#                                         VISUAL FUNCTIONS                                         #
#####################################################################################################

show_finished() {
    clear
    echo ""
    echo -e "$yellow===================================================================================================$reset"
    echo -e "$yellow=                                                                                                 $yellow=$reset"
    echo -e "$yellow=                  $white███████╗██╗███╗   ██╗██╗███████╗██╗  ██╗███████╗██████╗                         $yellow=$reset"
    echo -e "$yellow=                  $white██╔════╝██║████╗  ██║██║██╔════╝██║  ██║██╔════╝██╔══██╗                        $yellow=$reset"
    echo -e "$yellow=                  $white█████╗  ██║██╔██╗ ██║██║███████╗███████║█████╗  ██║  ██║                        $yellow=$reset"
    echo -e "$yellow=                  $white██╔══╝  ██║██║╚██╗██║██║╚════██║██╔══██║██╔══╝  ██║  ██║                        $yellow=$reset"
    echo -e "$yellow=                  $white██║     ██║██║ ╚████║██║███████║██║  ██║███████╗██████╔╝                        $yellow=$reset"
    echo -e "$yellow=                  $white╚═╝     ╚═╝╚═╝  ╚═══╝╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚═════╝                         $yellow=$reset"
    echo -e "$yellow=                                                                                                 $yellow=$reset"
    echo -e "$yellow===================================================================================================$reset"
    echo ""
    echo ""
}

show_installer() {
    clear
    echo ""
    echo -e "$yellow===================================================================================================$reset"
    echo -e "$yellow=                                                                                                 $yellow=$reset"
    echo -e "$yellow=            $white██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ███████╗██████╗                  $yellow=$reset"
    echo -e "$yellow=            $white██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██╔════╝██╔══██╗                 $yellow=$reset"
    echo -e "$yellow=            $white██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     █████╗  ██████╔╝                 $yellow=$reset"
    echo -e "$yellow=            $white██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██╔══╝  ██╔══██╗                 $yellow=$reset"
    echo -e "$yellow=            $white██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗███████╗██║  ██║                 $yellow=$reset"
    echo -e "$yellow=            $white╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝                 $yellow=$reset"
    echo -e "$yellow=                                                                                                 $yellow=$reset"
    echo -e "$yellow===================================================================================================$reset"
    version
    echo ""
}

show_menu() {
    clear
    echo ""
    echo -e "$yellow===================================================================================================$reset"
    echo -e "$yellow=                                                                                                 $yellow=$reset"
    echo -e "$yellow=                    $white███╗   ███╗███████╗███╗   ██╗██╗   ██╗                                      $yellow=$reset"
    echo -e "$yellow=                    $white████╗ ████║██╔════╝████╗  ██║██║   ██║                                      $yellow=$reset"
    echo -e "$yellow=                    $white██╔████╔██║█████╗  ██╔██╗ ██║██║   ██║                                      $yellow=$reset"
    echo -e "$yellow=                    $white██║╚██╔╝██║██╔══╝  ██║╚██╗██║██║   ██║                                      $yellow=$reset"
    echo -e "$yellow=                    $white██║ ╚═╝ ██║███████╗██║ ╚████║╚██████╔╝                                      $yellow=$reset"
    echo -e "$yellow=                    $white╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝ ╚═════╝                                       $yellow=$reset"
    echo -e "$yellow=                                                                                                 $yellow=$reset"
    echo -e "$yellow===================================================================================================$reset"
    version
    echo ""
}

error_msg() {
    clear
    echo ""
    echo -e "$yellow===================================================================================================$reset"
    echo -e "$yellow=                                                                                                 $yellow=$reset"
    echo -e "$yellow=                       $red███████╗██████╗ ██████╗  ██████╗ ██████╗                                    $yellow=$reset"
    echo -e "$yellow=                       $red██╔════╝██╔══██╗██╔══██╗██╔═══██╗██╔══██╗                                   $yellow=$reset"
    echo -e "$yellow=                       $red█████╗  ██████╔╝██████╔╝██║   ██║██████╔╝                                   $yellow=$reset"
    echo -e "$yellow=                       $red██╔══╝  ██╔══██╗██╔══██╗██║   ██║██╔══██╗                                   $yellow=$reset"
    echo -e "$yellow=                       $red███████╗██║  ██║██║  ██║╚██████╔╝██║  ██║                                   $yellow=$reset"
    echo -e "$yellow=                       $red╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝                                   $yellow=$reset"
    echo -e "$yellow=                                                                                                 $yellow=$reset"
    echo -e "$yellow===================================================================================================$reset"
    echo ""
    echo ""
}

installed_msg() {
    clear
    echo ""
    echo -e "$yellow===================================================================================================$reset"
    echo -e "$yellow=                                                                                                 $yellow=$reset"
    echo -e "$yellow=                $green██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ███████╗██████╗                $yellow=$reset"
    echo -e "$yellow=                $green██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██╔════╝██╔══██╗               $yellow=$reset"
    echo -e "$yellow=                $green██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     █████╗  ██████╔╝               $yellow=$reset"
    echo -e "$yellow=                $green██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██╔══╝  ██╔══██╗               $yellow=$reset"
    echo -e "$yellow=                $green██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗███████╗██║  ██║               $yellow=$reset"
    echo -e "$yellow=                $green╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝               $yellow=$reset"
    echo -e "$yellow=                                                                                                 $yellow=$reset"
    echo -e "$yellow===================================================================================================$reset"
    echo ""
    echo ""
}

installing_msg() {
    clear
    echo ""
    echo -e "$yellow===================================================================================================$reset"
    echo -e "$yellow=                                                                                                 $yellow=$reset"
    echo -e "$yellow=            $white██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ██╗███╗   ██╗ ██████╗              $yellow=$reset"
    echo -e "$yellow=            $white██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██║████╗  ██║██╔════╝              $yellow=$reset"
    echo -e "$yellow=            $white██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     ██║██╔██╗ ██║██║  ███╗             $yellow=$reset"
    echo -e "$yellow=            $white██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██║██║╚██╗██║██║   ██║             $yellow=$reset"
    echo -e "$yellow=            $white██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗██║██║ ╚████║╚██████╔╝             $yellow=$reset"
    echo -e "$yellow=            $white╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝              $yellow=$reset"
    echo -e "$yellow=                                                                                                 $yellow=$reset"
    echo -e "$yellow===================================================================================================$reset"
    echo ""
    echo ""
}

#####################################################################################################
#                                         MENU FUNCTIONS                                           #
#####################################################################################################

menu_installer() {
  case $menu_installer in
    1) menu_installer_pg_1 ;;
    2) menu_installer_pg_2 ;;
    *) echo "Error listing menu..." ;;
  esac
}

menu_installer_pg_1(){
    echo -e "${yellow}[ 01 ]${reset} - ${white}Traefik & Portainer ${green}[1/1]${reset}              ${green}| ${reset}  ${yellow}[ 02 ]${reset} - ${white}MinIO ${green}[1/1] ${reset}"
    echo -e "${yellow}[ 03 ]${reset} - ${white}N8N ${green}[2/2]${reset}                              ${green}| ${reset}  ${yellow}[ 04 ]${reset} - ${white}Qdrant ${green}[1/1]${reset}"
    echo -e "${yellow}[ 05 ]${reset} - ${white}Supabase ${green}[2/4]${reset}                         ${green}| ${reset}  ${yellow}[ 06 ]${reset} - ${white}COMING SOON${reset}"
    echo -e "${yellow}[ 07 ]${reset} - ${white}COMING SOON${reset}                           ${green}| ${reset}  ${yellow}[ 08 ]${reset} - ${white}COMING SOON${reset}"
    echo -e "${yellow}[ 09 ]${reset} - ${white}COMING SOON${reset}                           ${green}| ${reset}  ${yellow}[ 10 ]${reset} - ${white}COMING SOON${reset}"
    echo -e "${yellow}[ 11 ]${reset} - ${white}COMING SOON${reset}                           ${green}| ${reset}  ${yellow}[ 12 ]${reset} - ${white}COMING SOON${reset}"
    echo -e "${yellow}[ 13 ]${reset} - ${white}COMING SOON${reset}                           ${green}| ${reset}  ${yellow}[ 14 ]${reset} - ${white}COMING SOON${reset}"
    echo -e "${yellow}[ 15 ]${reset} - ${white}COMING SOON${reset}                           ${green}| ${reset}  ${yellow}[ 16 ]${reset} - ${white}COMING SOON${reset}"
    echo -e "${yellow}[ 17 ]${reset} - ${white}COMING SOON${reset}                           ${green}| ${reset}  ${yellow}[ 18 ]${reset} - ${white}COMING SOON${reset}"
    echo -e "${yellow}[ 19 ]${reset} - ${white}COMING SOON${reset}                           ${green}| ${reset}  ${yellow}[ 20 ]${reset} - ${white}COMING SOON${reset}"
    echo -e "${yellow}[ 21 ]${reset} - ${white}COMING SOON${reset}                           ${green}| ${reset}  ${yellow}[ 22 ]${reset} - ${white}COMING SOON${reset}"
    echo -e "${yellow}[ 23 ]${reset} - ${white}COMING SOON${reset}                           ${green}| ${reset}  ${yellow}[ 24 ]${reset} - ${white}COMING SOON${reset}"
    echo -e "${yellow}[ 25 ]${reset} - ${white}COMING SOON${reset}                           ${green}| ${reset}  ${yellow}[ 99 ]${reset} - ${white}Exit Installer${reset}"
    echo -e ""
    echo -e "${white}<-- Type ${yellow}P1 ${white}to go to page 1                     ${yellow}|${white}              Type ${yellow}P2${white} to go to page 2 -->${reset}"
    echo -e ""
}

menu_installer_pg_2(){
    echo -e "${yellow}[ COMING SOON ]${reset} - ${white}More applications will be added here${reset}"
    echo -e ""
    echo -e "${white}<-- Type ${yellow}P1 ${white}to go to page 1                     ${yellow}|${white}              Type ${yellow}P2${white} to go to page 2 -->${reset}"
    echo -e ""
}

#####################################################################################################
#                                    DOCKER INSTALLATION                                           #
#####################################################################################################

install_docker() {
    installing_msg
    echo "Installing Docker and Docker Compose..."

    # Remove old Docker installations
    sudo apt-get remove -y docker docker-engine docker.io containerd runc > /dev/null 2>&1

    # Install dependencies
    sudo apt-get update > /dev/null 2>&1
    sudo apt-get install -y ca-certificates curl gnupg lsb-release > /dev/null 2>&1

    # Add Docker's official GPG key
    sudo mkdir -p /etc/apt/keyrings
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg > /dev/null 2>&1

    # Set up Docker repository
    echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

    # Install Docker
    sudo apt-get update > /dev/null 2>&1
    sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin > /dev/null 2>&1

    # Start and enable Docker
    sudo systemctl start docker
    sudo systemctl enable docker

    # Add user to docker group
    sudo usermod -aG docker $USER

    # Initialize Docker Swarm
    docker swarm init > /dev/null 2>&1

    echo "Docker installation completed!"
    sleep 2
}

verify_docker_and_portainer_traefik() {
    if ! command -v docker &> /dev/null; then
        echo "Docker is not installed. Installing Docker first..."
        install_docker
        return 0
    fi
    
    # Check if Traefik and Portainer are running
    if ! docker service ls | grep -q "traefik"; then
        echo ""
        echo "❌ Traefik is not installed."
        echo "Please install Traefik & Portainer first (option 01)."
        echo ""
        read -p "Press ENTER to continue..."
        return 1
    fi
    
    if ! docker service ls | grep -q "portainer"; then
        echo ""
        echo "❌ Portainer is not installed."
        echo "Please install Traefik & Portainer first (option 01)."
        echo ""
        read -p "Press ENTER to continue..."
        return 1
    fi
    
    return 0
}

verify_stack() {
    local stack_name="$1"
    if docker service ls | grep -q "$stack_name"; then
        echo ""
        echo "⚠️  $stack_name is already installed."
        echo ""
        read -p "Press ENTER to continue..."
        return 0
    fi
    return 1
}

#####################################################################################################
#                                 TRAEFIK + PORTAINER INSTALLATION                                #
#####################################################################################################

tool_traefik_and_portainer() {
    installing_msg
    echo "Installing Traefik (Reverse Proxy) and Portainer (Docker Management)..."
    sleep 2

    # Create directories
    mkdir -p /root/traefik
    mkdir -p /root/portainer
    mkdir -p /root/server_data

    # Get domain name
    echo ""
    read -p "Enter your domain name (example.com): " server_name
    if [ -z "$server_name" ]; then
        error_msg
        echo "Domain name is required!"
        sleep 2
        return 1
    fi

    # Get internal network name
    internal_network="rankgnar_network"

    # Save server data
    cat > /root/server_data/server_data <<EOF
Server Name: $server_name
Internal Network: $internal_network
EOF

    # Create Traefik configuration
    cat > /root/traefik/traefik.yaml <<EOF
version: '3.8'

services:
  traefik:
    image: traefik:v3.0
    command:
      - "--api.dashboard=true"
      - "--api.debug=true"
      - "--log.level=DEBUG"
      - "--providers.docker=true"
      - "--providers.docker.swarmMode=true"
      - "--providers.docker.endpoint=unix:///var/run/docker.sock"
      - "--providers.docker.exposedbydefault=false"
      - "--providers.docker.network=traefik_public"
      - "--entrypoints.web.address=:80"
      - "--entrypoints.websecure.address=:443"
      - "--certificatesresolvers.letsencryptresolver.acme.httpchallenge=true"
      - "--certificatesresolvers.letsencryptresolver.acme.httpchallenge.entrypoint=web"
      - "--certificatesresolvers.letsencryptresolver.acme.email=admin@${server_name}"
      - "--certificatesresolvers.letsencryptresolver.acme.storage=/etc/traefik/letsencrypt/acme.json"
    ports:
      - "80:80"
      - "443:443"
    volumes:
      - "/var/run/docker.sock:/var/run/docker.sock:ro"
      - "traefik_certificates:/etc/traefik/letsencrypt"
    networks:
      - traefik_public
    deploy:
      labels:
        - "traefik.enable=true"
        - "traefik.http.routers.traefik.rule=Host(\`traefik.${server_name}\`)"
        - "traefik.http.routers.traefik.entrypoints=websecure"
        - "traefik.http.routers.traefik.tls.certresolver=letsencryptresolver"
        - "traefik.http.routers.traefik.service=api@internal"
        - "traefik.http.services.traefik.loadbalancer.server.port=8080"
      placement:
        constraints:
          - node.role == manager

volumes:
  traefik_certificates:

networks:
  traefik_public:
    external: true
EOF

    # Create Portainer configuration
    cat > /root/portainer/portainer.yaml <<EOF
version: '3.8'

services:
  portainer:
    image: portainer/portainer-ee:latest
    command: -H unix:///var/run/docker.sock
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
      - portainer_data:/data
    networks:
      - traefik_public
    deploy:
      labels:
        - "traefik.enable=true"
        - "traefik.http.routers.portainer.rule=Host(\`portainer.${server_name}\`)"
        - "traefik.http.routers.portainer.entrypoints=websecure"
        - "traefik.http.routers.portainer.tls.certresolver=letsencryptresolver"
        - "traefik.http.services.portainer.loadbalancer.server.port=9000"
      placement:
        constraints:
          - node.role == manager

volumes:
  portainer_data:

networks:
  traefik_public:
    external: true
EOF

    echo "Creating Docker networks..."
    # Create Traefik network
    docker network create --driver=overlay traefik_public > /dev/null 2>&1

    echo "Deploying Traefik..."
    # Deploy Traefik
    cd /root/traefik
    docker stack deploy --prune --resolve-image always -c traefik.yaml traefik > /dev/null 2>&1

    # Wait for Traefik to start
    sleep 10

    echo "Deploying Portainer..."
    # Deploy Portainer
    cd /root/portainer
    docker stack deploy --prune --resolve-image always -c portainer.yaml portainer > /dev/null 2>&1

    installed_msg
    echo "✅ Traefik and Portainer installed successfully!"
    echo ""
    echo "Access your services at:"
    echo "• Traefik Dashboard: https://traefik.${server_name}"
    echo "• Portainer: https://portainer.${server_name}"
    echo ""
    echo "Note: It may take a few minutes for SSL certificates to be generated."
    echo ""
    read -p "Press ENTER to continue..."
}

#####################################################################################################
#                                        PLACEHOLDER FUNCTIONS                                     #
#####################################################################################################

tool_minio() {
    installing_msg
    echo "Installing MinIO (Object Storage)..."
    echo "This feature is coming soon!"
    sleep 3
    echo ""
    read -p "Press ENTER to continue..."
}

tool_n8n() {
    installing_msg
    echo "Installing N8N (Workflow Automation)..."
    echo "This feature is coming soon!"
    sleep 3
    echo ""
    read -p "Press ENTER to continue..."
}

tool_supabase() {
    installing_msg
    echo "Installing Supabase (Backend as a Service)..."
    echo "This feature is coming soon!"
    sleep 3
    echo ""
    read -p "Press ENTER to continue..."
}

tool_qdrant() {
    installing_msg
    echo "Installing Qdrant (Vector Database)..."
    echo "This feature is coming soon!"
    sleep 3
    echo ""
    read -p "Press ENTER to continue..."
}

#####################################################################################################
#                                         MAIN MENU LOOP                                          #
#####################################################################################################

## Main menu loop (backend)
main_menu_loop() {
    while true; do

        show_menu
        menu_installer

        read -p "Enter the NUMBER of the desired option or hidden COMMAND: " option

        set -- $option
        option1=$1
        option2=$2

        case $option1 in

            1|01|portainer|traefik|PORTAINER|TRAEFIK)
                verify_stack "traefik" && continue || echo ""
                verify_stack "portainer" && continue || echo ""
                tool_traefik_and_portainer
                ;;

            2|02|minio|MINIO)
                verify_stack "minio${option2:+_$option2}" && continue || echo ""
                if verify_docker_and_portainer_traefik; then
                    tool_minio "$option2"
                fi
                ;;

            3|03|n8n|N8N)
                verify_stack "n8n${option2:+_$option2}" && continue || echo ""
                if verify_docker_and_portainer_traefik; then
                    tool_n8n "$option2"
                fi
                ;;

            4|04|qdrant|QDRANT)
                verify_stack "qdrant${option2:+_$option2}" && continue || echo ""
                if verify_docker_and_portainer_traefik; then
                    tool_qdrant "$option2"
                fi
                ;;

            5|05|supabase|supa|SUPABASE|SUPA)
                verify_stack "supabase${option2:+_$option2}" && continue || echo ""
                if verify_docker_and_portainer_traefik; then
                    tool_supabase "$option2"
                fi
                ;;

            6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|06|07|08|09)
                echo ""
                echo "⚠️  This application is coming soon!"
                echo ""
                read -p "Press ENTER to continue..."
                ;;

            p1|P1)
                menu_installer="1"
                ;;

            p2|P2) 
                menu_installer="2"
                ;;

            99|exit|EXIT|quit|QUIT)
                show_finished
                echo "Thanks for using RankGnar Server Installer!"
                echo "Visit us at: https://github.com/rankgnar"
                exit 0
                ;;

            *)
                error_msg
                echo "Invalid option: $option1"
                echo ""
                echo "Available options:"
                echo "• 01 - Traefik & Portainer"
                echo "• 02 - MinIO" 
                echo "• 03 - N8N"
                echo "• 04 - Qdrant"
                echo "• 05 - Supabase"
                echo "• 06-25 - Coming Soon"
                echo "• P1/P2 - Navigate pages"
                echo "• 99 - Exit"
                echo ""
                read -p "Press ENTER to continue..."
                ;;

        esac
    done
}

#####################################################################################################
#                                         MAIN EXECUTION                                           #
#####################################################################################################

# Show installer header
show_installer

# Show and accept license
installer_rights

# Create server_data directory if it doesn't exist
mkdir -p /root/server_data

# Start main menu loop
main_menu_loop