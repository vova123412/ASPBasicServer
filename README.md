# ASPBasicServer
configuration for linux agent 
#run ubuntu docker agent 

 1) create ubuntu image  https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops



      
     Share The Engine and run the pod
 2) docker run -v /var/run/docker.sock:/var/run/docker.sock  -e AZP_URL=https://dev.azure.com/varuss729 -e AZP_TOKEN=<PAT token> -e AZP_AGENT_NAME=mypc  -e AZP_POOL=selfhost  dockeragent:latest
  
  
  
  

# powershell installation commands
  1) apt-get update
  2) apt-get install -y wget apt-transport-https software-properties-common
  3) wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb
  4) dpkg -i packages-microsoft-prod.deb
  5) apt-get update
  6) add-apt-repository universe
  7) apt-get install -y powershell
  
  
# dotnet installation commands
  apt-get install -y dotnet-sdk-7.0
 
# docker installation commands
 1) apt-get update
 2) apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
 3) mkdir -p /etc/apt/keyrings
 4) curl -fsSL https://download.docker.com/linux/ubuntu/gpg |  gpg --dearmor -o /etc/apt/keyrings/docker.gpg
 5) echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg]     https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
 6) apt-get update
 7)  chmod a+r /etc/apt/keyrings/docker.gpg
 8) apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

  
