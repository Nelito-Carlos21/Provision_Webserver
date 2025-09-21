# Provision Webserver
Este repositório contém scripts e instruções para provisionar automaticamente um servidor web (Nginx).


O que faz
provision.sh: instala Nginx, configura firewall (ufw), cria página index.html e ativa o serviço.

cloud-init.yaml: arquivo user-data pronto para usar em instâncias cloud (AWS, Azure, OpenStack, etc.).

docker/*: alternativa para rodar servidor web em container Docker.

scripts/create_repo.sh: script que usa a API do GitHub para criar o repositório (precisa GITHUB_TOKEN).



Como usar (rápido)

1. Em uma máquina Ubuntu (18.04+):
sudo bash provision.sh

2. Para cloud providers que aceitam user-data (ex.: EC2): forneça cloud-init.yaml como user-data ao criar a instância.

3. Alternativa Docker (local):
cd docker
docker compose up -d --build

4. Criar repositório no GitHub (opcional):
export GITHUB_TOKEN=ghp_xxx
bash scripts/create_repo.sh your-github-username provision-webserver
