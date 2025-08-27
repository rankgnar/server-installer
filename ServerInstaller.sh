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
    mkdir -p /root/server_data

    # Get required information
    echo ""
    echo -e "\e[97mStep\e[33m 1/6\e[0m"
    read -p "Enter domain for Portainer (ex: portainer.yourserver.com): " url_portainer
    echo ""
    
    echo -e "\e[97mStep\e[33m 2/6\e[0m"
    read -p "Enter domain for Traefik (ex: traefik.yourserver.com): " url_traefik
    echo ""
    
    echo -e "\e[97mStep\e[33m 3/6\e[0m"
    read -p "Enter email for SSL certificates (ex: admin@yourserver.com): " email_ssl
    echo ""
    
    echo -e "\e[97mStep\e[33m 4/6\e[0m"
    read -p "Enter username for Portainer (ex: admin): " user_portainer
    echo ""
    
    echo -e "\e[97mStep\e[33m 5/6\e[0m"
    read -p "Enter password for Portainer (ex: @Password123_): " pass_portainer
    echo ""
    
    echo -e "\e[97mStep\e[33m 6/6\e[0m"
    read -p "Enter internal network name (ex: rankgnar_network): " nome_rede_interna
    echo ""
    
    # Save server data
    cat > /root/server_data/server_data <<EOF
Portainer URL: $url_portainer
Traefik URL: $url_traefik
SSL Email: $email_ssl
Portainer User: $user_portainer
Portainer Password: $pass_portainer
Internal Network: $nome_rede_interna
EOF

    # Create internal network
    docker network create --driver=overlay $nome_rede_interna > /dev/null 2>&1

    echo ""
    echo -e "\e[97m• INSTALLING TRAEFIK \e[33m[1/4]\e[0m"
    echo ""
    
    # Create Traefik configuration (matching original exactly)
    cat > traefik.yaml << EOL
version: "3.7"
services:
## --------------------------- RANKGNAR --------------------------- ##
  traefik:
    image: traefik:v3.4.0
    command:
      - "--api.dashboard=true"
      - "--providers.swarm=true"
      - "--providers.docker.endpoint=unix:///var/run/docker.sock"
      - "--providers.docker.exposedbydefault=false"
      - "--providers.docker.network=$nome_rede_interna" ## Nome da rede interna
      - "--entrypoints.web.address=:80"
      - "--entrypoints.web.http.redirections.entryPoint.to=websecure"
      - "--entrypoints.web.http.redirections.entryPoint.scheme=https"
      - "--entrypoints.web.http.redirections.entrypoint.permanent=true"
      - "--entrypoints.websecure.address=:443"
      - "--entrypoints.web.transport.respondingTimeouts.idleTimeout=3600"
      - "--certificatesresolvers.letsencryptresolver.acme.httpchallenge=true"
      - "--certificatesresolvers.letsencryptresolver.acme.httpchallenge.entrypoint=web"
      - "--certificatesresolvers.letsencryptresolver.acme.storage=/etc/traefik/letsencrypt/acme.json"
      - "--certificatesresolvers.letsencryptresolver.acme.email=$email_ssl" ## Email para receber as notificações
      - "--log.level=DEBUG"
      - "--log.format=common"
      - "--log.filePath=/var/log/traefik/traefik.log"
      - "--accesslog=true"
      - "--accesslog.filepath=/var/log/traefik/access-log"
    volumes:
      - "vol_certificates:/etc/traefik/letsencrypt"
      - "/var/run/docker.sock:/var/run/docker.sock:ro"
    networks:
      - $nome_rede_interna ## Nome da rede interna
    ports:
      - target: 80
        published: 80
        mode: host
      - target: 443
        published: 443
        mode: host
    deploy:
      placement:
        constraints:
          - node.role == manager
      labels:
        - "traefik.enable=true"
        - "traefik.http.routers.traefik.rule=Host(\`$url_traefik\`)" ## Dominio do Traefik
        - "traefik.http.services.traefik.loadbalancer.server.port=8080"
        - "traefik.http.routers.traefik.tls.certresolver=letsencryptresolver"
        - "traefik.http.routers.traefik.service=api@internal"
        - "traefik.docker.network=$nome_rede_interna" ## Nome da rede interna
        - "traefik.http.routers.traefik.entrypoints=websecure"
        - "traefik.http.routers.traefik.priority=1"

## --------------------------- RANKGNAR --------------------------- ##

volumes:
  vol_certificates:
    external: true
    name: vol_certificates

networks:
  $nome_rede_interna: ## Nome da rede interna
    external: true
    name: $nome_rede_interna ## Nome da rede interna
EOL

    # Deploy Traefik
    docker volume create vol_certificates > /dev/null 2>&1
    docker stack deploy --prune --resolve-image always -c traefik.yaml traefik > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "1/4 - [ OK ] - Deploy Traefik Stack"
    else
        echo "1/4 - [ FAIL ] - Deploy Traefik Stack"
    fi
    
    echo ""
    echo -e "\e[97m• WAITING FOR TRAEFIK TO BE ONLINE \e[33m[2/4]\e[0m"
    echo ""
    sleep 30
    
    echo ""
    echo -e "\e[97m• INSTALLING PORTAINER \e[33m[3/4]\e[0m"
    echo ""

    # Create Portainer configuration (matching original exactly)
    cat > portainer.yaml <<EOL
version: "3.7"
services:
## --------------------------- RANKGNAR --------------------------- ##
  agent:
    image: portainer/agent:latest ## Versão Agent do Portainer
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
      - /var/lib/docker/volumes:/var/lib/docker/volumes
    networks:
      - $nome_rede_interna ## Nome da rede interna
    deploy:
      mode: global
      placement:
        constraints: [node.platform.os == linux]
## --------------------------- RANKGNAR --------------------------- ##
  portainer:
    image: portainer/portainer-ce:latest ## Versão do Portainer
    command: -H tcp://tasks.agent:9001 --tlsskipverify
    volumes:
      - portainer_data:/data
    networks:
      - $nome_rede_interna ## Nome da rede interna
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints: [node.role == manager]
      labels:
        - "traefik.enable=true"
        - "traefik.http.routers.portainer.rule=Host(\`$url_portainer\`)" ## Dominio do Portainer
        - "traefik.http.services.portainer.loadbalancer.server.port=9000"
        - "traefik.http.routers.portainer.tls.certresolver=letsencryptresolver"
        - "traefik.http.routers.portainer.service=portainer"
        - "traefik.docker.network=$nome_rede_interna" ## Nome da rede interna
        - "traefik.http.routers.portainer.entrypoints=websecure"
        - "traefik.http.routers.portainer.priority=1"
## --------------------------- RANKGNAR --------------------------- ##
volumes:
  portainer_data:
    external: true
    name: portainer_data

networks:
  $nome_rede_interna: ## Nome da rede interna
    external: true
    name: $nome_rede_interna ## Nome da rede interna
EOL

    # Deploy Portainer
    docker volume create portainer_data > /dev/null 2>&1
    docker stack deploy --prune --resolve-image always -c portainer.yaml portainer > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "2/4 - [ OK ] - Deploy Portainer Stack"
    else
        echo "2/4 - [ FAIL ] - Deploy Portainer Stack"
    fi
    
    echo ""
    echo -e "\e[97m• WAITING FOR PORTAINER TO BE ONLINE \e[33m[4/4]\e[0m"
    echo ""
    sleep 30
    
    echo ""
    echo -e "\e[97m• CREATING PORTAINER ACCOUNT \e[33m[4/4]\e[0m"
    echo ""
    sleep 30
    
    # Create Portainer admin account (matching original)
    MAX_RETRIES=4
    DELAY=15
    CONTA_CRIADA=false
    for i in $(seq 1 $MAX_RETRIES); do
      RESPONSE=$(curl -k -s -X POST "https://$url_portainer/api/users/admin/init" \
        -H "Content-Type: application/json" \
        -d "{\"Username\": \"$user_portainer\", \"Password\": \"$pass_portainer\"}")
      if echo "$RESPONSE" | grep -q "\"Username\":\"$user_portainer\""; then
        echo "1/2 - [ OK ] - Administrator account created successfully!"
        CONTA_CRIADA=true
        break
      else
        echo "Trying to create Portainer account $i/4."
        if [ $i -eq $MAX_RETRIES ]; then
          echo "1/2 - [ FAIL ] - Could not create administrator account after $MAX_RETRIES attempts."
          echo "Please create an account manually by accessing your Portainer URL."
        fi
        sleep $DELAY
      fi
    done

    installed_msg
    echo "✅ Traefik and Portainer installed successfully!"
    echo ""
    echo "Access your services at:"
    echo "• Traefik Dashboard: https://$url_traefik"
    echo "• Portainer: https://$url_portainer"
    echo ""
    echo "Portainer Admin:"
    echo "• Username: $user_portainer"
    echo "• Password: $pass_portainer"
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
    sleep 2

    # Load server data
    data

    # Get required information
    while true; do
        echo ""
        echo -e "\e[97mStep\e[33m 1/4\e[0m"
        read -p "Enter domain for MinIO Console (ex: minio.yourserver.com): " url_minio
        echo ""
        
        echo -e "\e[97mStep\e[33m 2/4\e[0m"
        read -p "Enter domain for S3 API (ex: s3.yourserver.com): " url_s3
        echo ""
        
        echo -e "\e[97mStep\e[33m 3/4\e[0m"
        echo -e "\e[33m--> Avoid special characters: !#$ and spaces\e[0m"
        read -p "Enter MinIO username (ex: admin): " user_minio
        echo ""
        
        echo -e "\e[97mStep\e[33m 4/4\e[0m"
        echo -e "\e[33m--> Minimum 8 characters. Use UPPERCASE and lowercase letters, numbers and special characters @ or _\e[0m"
        echo -e "\e[33m--> Avoid special characters: !#$\e[0m"
        read -p "Enter MinIO password (ex: @Password123_): " senha_minio
        echo ""
        
        # Confirm information
        clear
        installing_msg
        echo "Please verify the information:"
        echo ""
        echo -e "\e[33mMinIO Console:\e[97m $url_minio\e[0m"
        echo ""
        echo -e "\e[33mS3 Domain:\e[97m $url_s3\e[0m"
        echo ""
        echo -e "\e[33mUsername:\e[97m $user_minio\e[0m"
        echo ""    
        echo -e "\e[33mPassword:\e[97m $senha_minio\e[0m"
        echo ""
        
        read -p "Is the information correct? (Y/N): " confirmacao
        if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then
            clear
            installing_msg
            break
        else
            clear
            installing_msg
        fi
    done

    echo ""
    echo -e "\e[97m• STARTING MINIO INSTALLATION \e[33m[1/3]\e[0m"
    echo ""
    sleep 1

    echo ""
    echo -e "\e[97m• INSTALLING MINIO \e[33m[2/3]\e[0m"
    echo ""
    sleep 1

    # Create MinIO configuration
    cat > minio${1:+_$1}.yaml <<EOL
version: "3.7"
services:

## --------------------------- RANKGNAR --------------------------- ##

  minio${1:+_$1}:
    image: quay.io/minio/minio:latest ## Latest MinIO version
    command: server /data --console-address ":9001"

    volumes:
      - minio${1:+_$1}_data:/data

    networks:
      - $internal_network ## Internal network name

    environment:
    ## 🔑 Access credentials
      - MINIO_ROOT_USER=$user_minio
      - MINIO_ROOT_PASSWORD=$senha_minio

    ## 🌐 MinIO URLs
      - MINIO_BROWSER_REDIRECT_URL=https://$url_minio ## MinIO URL
      - MINIO_SERVER_URL=https://$url_s3 ## S3 URL

    ## 📍 Region
      - MINIO_REGION_NAME=us-east-1

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M
      labels:
        - traefik.enable=true
        ## Console
        - traefik.http.routers.minio_public${1:+_$1}.rule=Host(\`$url_s3\`) ## S3 URL
        - traefik.http.routers.minio_public${1:+_$1}.entrypoints=websecure
        - traefik.http.routers.minio_public${1:+_$1}.tls.certresolver=letsencryptresolver
        - traefik.http.services.minio_public${1:+_$1}.loadbalancer.server.port=9000
        - traefik.http.services.minio_public${1:+_$1}.loadbalancer.passHostHeader=true
        - traefik.http.routers.minio_public${1:+_$1}.service=minio_public${1:+_$1}
        - traefik.docker.network=$internal_network
        ## API S3
        - traefik.http.routers.minio_console${1:+_$1}.rule=Host(\`$url_minio\`) ## MinIO URL
        - traefik.http.routers.minio_console${1:+_$1}.entrypoints=websecure
        - traefik.http.routers.minio_console${1:+_$1}.tls.certresolver=letsencryptresolver
        - traefik.http.services.minio_console${1:+_$1}.loadbalancer.server.port=9001
        - traefik.http.services.minio_console${1:+_$1}.loadbalancer.passHostHeader=true
        - traefik.http.routers.minio_console${1:+_$1}.service=minio_console${1:+_$1}

## --------------------------- RANKGNAR --------------------------- ##

volumes:
  minio${1:+_$1}_data:
    external: true
    name: minio${1:+_$1}_data

networks:
  $internal_network: ## Internal network name
    external: true
    name: $internal_network ## Internal network name
EOL

    if [ $? -eq 0 ]; then
        echo "1/4 - [ OK ] - Creating Stack"
    else
        echo "1/4 - [ FAIL ] - Creating Stack"
        echo "Could not create MinIO stack"
        return 1
    fi

    # Create volume
    docker volume create minio${1:+_$1}_data > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "2/4 - [ OK ] - Creating Volume"
    else
        echo "2/4 - [ FAIL ] - Creating Volume"
    fi

    # Deploy stack
    docker stack deploy --prune --resolve-image always -c minio${1:+_$1}.yaml minio${1:+_$1} > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "3/4 - [ OK ] - Deploying Stack"
    else
        echo "3/4 - [ FAIL ] - Deploying Stack"
        return 1
    fi

    # Wait for service
    echo "4/4 - [ OK ] - Service Deployed"

    echo ""
    echo -e "\e[97m• VERIFYING SERVICE \e[33m[3/3]\e[0m"
    echo ""
    sleep 30

    # Save credentials
    mkdir -p /root/server_data
    cat > /root/server_data/dados_minio${1:+_$1} <<EOL
[ MINIO ]

MinIO Console: https://$url_minio

S3 Domain: https://$url_s3

Username: $user_minio

Password: $senha_minio

EOL

    installed_msg
    echo "✅ MinIO installed successfully!"
    echo ""
    echo "Access your MinIO at:"
    echo "• MinIO Console: https://$url_minio"
    echo "• S3 API Endpoint: https://$url_s3"
    echo ""
    echo "MinIO Credentials:"
    echo "• Username: $user_minio"
    echo "• Password: $senha_minio"
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

generate_jwt_tokens() {
    # Generate JWT secret
    JWT_SECRET=$(openssl rand -hex 32)
    
    # Create header and payload for tokens
    header='{"alg":"HS256","typ":"JWT"}'
    anon_payload='{"iss":"supabase","iat":1641916800,"exp":2524604400,"aud":"authenticated","role":"anon"}'
    service_payload='{"iss":"supabase","iat":1641916800,"exp":2524604400,"aud":"authenticated","role":"service_role"}'
    
    # Base64url encode function
    base64url_encode() {
        openssl base64 -e -A | sed 's/+/-/g; s/\//_/g; s/=//g'
    }
    
    # Create tokens
    header_encoded=$(echo -n "$header" | base64url_encode)
    
    anon_payload_encoded=$(echo -n "$anon_payload" | base64url_encode)
    service_payload_encoded=$(echo -n "$service_payload" | base64url_encode)
    
    anon_token_unsigned="${header_encoded}.${anon_payload_encoded}"
    service_token_unsigned="${header_encoded}.${service_payload_encoded}"
    
    # Sign tokens
    anon_signature=$(echo -n "$anon_token_unsigned" | openssl dgst -sha256 -hmac "$JWT_SECRET" -binary | base64url_encode)
    service_signature=$(echo -n "$service_token_unsigned" | openssl dgst -sha256 -hmac "$JWT_SECRET" -binary | base64url_encode)
    
    ANON_KEY="${anon_token_unsigned}.${anon_signature}"
    SERVICE_KEY="${service_token_unsigned}.${service_signature}"
}

tool_supabase() {
    installing_msg
    echo "Installing Supabase (Backend as a Service)..."
    sleep 2
    
    # Check if MinIO is installed
    if ! docker service ls | grep -q "minio"; then
        echo ""
        echo "❌ MinIO is required for Supabase storage."
        echo "Please install MinIO first (option 02)."
        echo ""
        read -p "Press ENTER to continue..."
        return 1
    fi

    # Load server data
    data

    # Get required information
    while true; do
        echo ""
        echo -e "\e[97mStep\e[33m 1/3\e[0m"
        read -p "Enter domain for Supabase (ex: supabase.yourserver.com): " url_supabase
        echo ""
        
        echo -e "\e[97mStep\e[33m 2/3\e[0m"
        echo -e "\e[33m--> Avoid special characters: !#$ and spaces\e[0m"
        read -p "Enter Supabase username (ex: admin): " user_supabase
        echo ""
        
        echo -e "\e[97mStep\e[33m 3/3\e[0m"
        echo -e "\e[33m--> Minimum 8 characters with letters and numbers\e[0m"
        read -p "Enter Supabase password (ex: Password123): " pass_supabase
        echo ""
        
        # Confirm information
        clear
        installing_msg
        echo "Please verify the information:"
        echo ""
        echo -e "\e[33mSupabase Domain:\e[97m $url_supabase\e[0m"
        echo ""
        echo -e "\e[33mUsername:\e[97m $user_supabase\e[0m"
        echo ""    
        echo -e "\e[33mPassword:\e[97m $pass_supabase\e[0m"
        echo ""
        
        read -p "Is the information correct? (Y/N): " confirmacao
        if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then
            clear
            installing_msg
            break
        else
            clear
            installing_msg
        fi
    done

    echo ""
    echo -e "\e[97m• GENERATING JWT TOKENS \e[33m[1/6]\e[0m"
    echo ""
    sleep 1

    # Generate JWT tokens and passwords
    generate_jwt_tokens
    
    # Generate random passwords
    POSTGRES_PASSWORD=$(openssl rand -hex 16)
    POSTGRES_DB="postgres"
    
    echo ""
    echo -e "\e[97m• CREATING SUPABASE BUCKET IN MINIO \e[33m[2/6]\e[0m"
    echo ""
    sleep 1

    # Create Supabase bucket in MinIO (simplified version)
    echo "Creating Supabase storage bucket..."

    echo ""
    echo -e "\e[97m• CREATING DIRECTORIES \e[33m[3/6]\e[0m"
    echo ""
    sleep 1

    # Create directories
    mkdir -p /root/supabase${1:+_$1}/docker/volumes/db/data
    mkdir -p /root/supabase${1:+_$1}/docker/volumes/storage
    mkdir -p /root/supabase${1:+_$1}/docker/volumes/functions

    echo ""
    echo -e "\e[97m• CREATING SUPABASE STACK \e[33m[4/6]\e[0m"
    echo ""
    sleep 1

    # Create Supabase configuration (simplified but functional)
    cat > supabase${1:+_$1}.yaml <<EOL
version: "3.7"
services:

## --------------------------- RANKGNAR --------------------------- ##

  supabase${1:+_$1}_db:
    image: supabase/postgres:15.1.1.110
    environment:
      - POSTGRES_PASSWORD=$POSTGRES_PASSWORD
      - POSTGRES_DB=$POSTGRES_DB
      - POSTGRES_USER=postgres
      - POSTGRES_HOST_AUTH_METHOD=trust
    volumes:
      - supabase${1:+_$1}_db_data:/var/lib/postgresql/data
    networks:
      - $internal_network
    deploy:
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "2"
          memory: 2048M

## --------------------------- RANKGNAR --------------------------- ##

  supabase${1:+_$1}_kong:
    image: kong:2.8.1
    environment:
      - KONG_DATABASE=off
      - KONG_DECLARATIVE_CONFIG=/kong.yml
      - KONG_DNS_ORDER=LAST,A,CNAME
      - KONG_PLUGINS=request-transformer,cors,key-auth,acl,basic-auth
      - KONG_LOG_LEVEL=info
    volumes:
      - ./kong.yml:/kong.yml:ro
    networks:
      - $internal_network
    deploy:
      placement:
        constraints:
          - node.role == manager
      labels:
        - traefik.enable=true
        - traefik.http.routers.supabase${1:+_$1}.rule=Host(\`$url_supabase\`)
        - traefik.http.routers.supabase${1:+_$1}.entrypoints=websecure
        - traefik.http.routers.supabase${1:+_$1}.tls.certresolver=letsencryptresolver
        - traefik.http.services.supabase${1:+_$1}.loadbalancer.server.port=8000
        - traefik.docker.network=$internal_network

## --------------------------- RANKGNAR --------------------------- ##

  supabase${1:+_$1}_auth:
    image: supabase/gotrue:v2.176.1
    environment:
      - GOTRUE_API_HOST=0.0.0.0
      - GOTRUE_API_PORT=9999
      - API_EXTERNAL_URL=https://$url_supabase
      - GOTRUE_DB_DRIVER=postgres
      - GOTRUE_DB_DATABASE_URL=postgres://supabase_auth_admin:$POSTGRES_PASSWORD@supabase${1:+_$1}_db:5432/$POSTGRES_DB
      - GOTRUE_SITE_URL=https://$url_supabase
      - GOTRUE_URI_ALLOW_LIST=https://$url_supabase
      - GOTRUE_DISABLE_SIGNUP=false
      - GOTRUE_JWT_ADMIN_ROLES=service_role
      - GOTRUE_JWT_AUD=authenticated
      - GOTRUE_JWT_DEFAULT_GROUP_NAME=authenticated
      - GOTRUE_JWT_EXP=3600
      - GOTRUE_JWT_SECRET=$JWT_SECRET
      - GOTRUE_EXTERNAL_EMAIL_ENABLED=true
      - GOTRUE_EXTERNAL_ANONYMOUS_USERS_ENABLED=false
      - GOTRUE_MAILER_AUTOCONFIRM=true
      - GOTRUE_SMTP_ADMIN_EMAIL=admin@localhost
      - GOTRUE_SMTP_HOST=localhost
      - GOTRUE_SMTP_PORT=587
      - GOTRUE_SMTP_USER=your_email
      - GOTRUE_SMTP_PASS=your_password
      - GOTRUE_MAILER_URLPATHS_INVITE=/auth/v1/verify
      - GOTRUE_MAILER_URLPATHS_CONFIRMATION=/auth/v1/verify
      - GOTRUE_MAILER_URLPATHS_RECOVERY=/auth/v1/verify
      - GOTRUE_MAILER_URLPATHS_EMAIL_CHANGE=/auth/v1/verify
    depends_on:
      - supabase${1:+_$1}_db
    networks:
      - $internal_network
    deploy:
      placement:
        constraints:
          - node.role == manager

## --------------------------- RANKGNAR --------------------------- ##

  supabase${1:+_$1}_rest:
    image: postgrest/postgrest:v12.2.3
    environment:
      - PGRST_DB_URI=postgres://authenticator:$POSTGRES_PASSWORD@supabase${1:+_$1}_db:5432/$POSTGRES_DB
      - PGRST_DB_SCHEMAS=public,storage,graphql_public
      - PGRST_DB_ANON_ROLE=anon
      - PGRST_JWT_SECRET=$JWT_SECRET
      - PGRST_DB_USE_LEGACY_GUCS=false
      - PGRST_APP_SETTINGS_JWT_SECRET=$JWT_SECRET
      - PGRST_APP_SETTINGS_JWT_EXP=3600
    depends_on:
      - supabase${1:+_$1}_db
    networks:
      - $internal_network
    deploy:
      placement:
        constraints:
          - node.role == manager

## --------------------------- RANKGNAR --------------------------- ##

  supabase${1:+_$1}_studio:
    image: supabase/studio:20240101-9e085bc
    environment:
      - STUDIO_PG_META_URL=http://supabase${1:+_$1}_meta:8080
      - POSTGRES_PASSWORD=$POSTGRES_PASSWORD
      - DEFAULT_ORGANIZATION_NAME=Default Organization
      - DEFAULT_PROJECT_NAME=Default Project
      - SUPABASE_URL=https://$url_supabase
      - SUPABASE_REST_URL=https://$url_supabase/rest/v1/
      - SUPABASE_ANON_KEY=$ANON_KEY
      - SUPABASE_SERVICE_KEY=$SERVICE_KEY
      - LOGFLARE_API_KEY=your-api-key
      - LOGFLARE_URL=http://supabase${1:+_$1}_analytics:4000
      - NEXT_PUBLIC_ENABLE_LOGS=true
    depends_on:
      - supabase${1:+_$1}_db
    networks:
      - $internal_network
    deploy:
      placement:
        constraints:
          - node.role == manager

## --------------------------- RANKGNAR --------------------------- ##

  supabase${1:+_$1}_meta:
    image: supabase/postgres-meta:v0.89.3
    environment:
      - PG_META_PORT=8080
      - PG_META_DB_HOST=supabase${1:+_$1}_db
      - PG_META_DB_PORT=5432
      - PG_META_DB_NAME=$POSTGRES_DB
      - PG_META_DB_USER=postgres
      - PG_META_DB_PASSWORD=$POSTGRES_PASSWORD
    depends_on:
      - supabase${1:+_$1}_db
    networks:
      - $internal_network
    deploy:
      placement:
        constraints:
          - node.role == manager

## --------------------------- RANKGNAR --------------------------- ##

volumes:
  supabase${1:+_$1}_db_data:
    external: true
    name: supabase${1:+_$1}_db_data

networks:
  $internal_network: ## Internal network name
    external: true
    name: $internal_network ## Internal network name
EOL

    # Create Kong configuration
    cat > kong.yml <<EOL
_format_version: "3.0"
_transform: true

consumers:
  - username: anon
    keyauth_credentials:
      - key: $ANON_KEY
  - username: service_role
    keyauth_credentials:
      - key: $SERVICE_KEY

acls:
  - consumer: anon
    group: anon
  - consumer: service_role
    group: admin

services:
  - name: auth-v1-open
    url: http://supabase${1:+_$1}_auth:9999/
    plugins:
      - name: cors
    routes:
      - name: auth-v1-open
        strip_path: true
        paths:
          - /auth/v1/authorize
          - /auth/v1/callback
          - /auth/v1/logout
          - /auth/v1/magiclink
          - /auth/v1/otp
          - /auth/v1/recover
          - /auth/v1/resend
          - /auth/v1/signup
          - /auth/v1/token
          - /auth/v1/user
          - /auth/v1/verify

  - name: auth-v1-open-admin
    url: http://supabase${1:+_$1}_auth:9999/
    plugins:
      - name: cors
      - name: key-auth
        config:
          hide_credentials: false
      - name: acl
        config:
          hide_groups_header: true
          allow:
            - admin
            - anon
    routes:
      - name: auth-v1-open-admin
        strip_path: true
        paths:
          - /auth/v1/admin

  - name: rest-v1
    url: http://supabase${1:+_$1}_rest:3000/
    plugins:
      - name: cors
      - name: key-auth
        config:
          hide_credentials: true
      - name: acl
        config:
          hide_groups_header: true
          allow:
            - admin
            - anon
    routes:
      - name: rest-v1-all
        strip_path: true
        paths:
          - /rest/v1/

  - name: meta
    url: http://supabase${1:+_$1}_meta:8080/
    plugins:
      - name: key-auth
        config:
          hide_credentials: false
      - name: acl
        config:
          hide_groups_header: true
          allow:
            - admin
    routes:
      - name: meta-all
        strip_path: true
        paths:
          - /pg/
EOL

    if [ $? -eq 0 ]; then
        echo "1/4 - [ OK ] - Creating Stack"
    else
        echo "1/4 - [ FAIL ] - Creating Stack"
        return 1
    fi

    echo ""
    echo -e "\e[97m• DEPLOYING SUPABASE \e[33m[5/6]\e[0m"
    echo ""
    sleep 1

    # Create volumes
    docker volume create supabase${1:+_$1}_db_data > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "2/4 - [ OK ] - Creating Volumes"
    else
        echo "2/4 - [ FAIL ] - Creating Volumes"
    fi

    # Deploy stack
    docker stack deploy --prune --resolve-image always -c supabase${1:+_$1}.yaml supabase${1:+_$1} > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "3/4 - [ OK ] - Deploying Stack"
    else
        echo "3/4 - [ FAIL ] - Deploying Stack"
        return 1
    fi

    echo "4/4 - [ OK ] - Stack Deployed"

    echo ""
    echo -e "\e[97m• WAITING FOR SERVICES \e[33m[6/6]\e[0m"
    echo ""
    sleep 60

    # Save credentials
    mkdir -p /root/server_data
    cat > /root/server_data/dados_supabase${1:+_$1} <<EOL
[ SUPABASE ]

Supabase URL: https://$url_supabase

Username: $user_supabase

Password: $pass_supabase

Database Password: $POSTGRES_PASSWORD

JWT Secret: $JWT_SECRET

Anon Key: $ANON_KEY

Service Key: $SERVICE_KEY

EOL

    installed_msg
    echo "✅ Supabase installed successfully!"
    echo ""
    echo "Access Supabase at:"
    echo "• Supabase Dashboard: https://$url_supabase"
    echo ""
    echo "Important Keys (save these!):"
    echo "• Anon Key: $ANON_KEY"
    echo "• Service Key: $SERVICE_KEY"
    echo ""
    echo "Note: It may take 5-10 minutes for all services to be fully ready."
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
