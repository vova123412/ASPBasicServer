# ASPBasicServer
configuration for linux agent 
#run ubuntu docker agent 

 1) create ubuntu image  https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops






 2) docker run -e AZP_URL=https://dev.azure.com/varuss729 -e AZP_TOKEN=<PAT token> -e AZP_AGENT_NAME=mypc  -e AZP_POOL=selfhost  dockeragent:latest
  
  
  
  

# powershell installation command 
  1) apt-get update
  2) apt-get install -y wget apt-transport-https software-properties-common
  3) wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb
  4) dpkg -i packages-microsoft-prod.deb
  5) apt-get update
  6) add-apt-repository universe
  7) apt-get install -y powershell
  
  
# dotnet installation command
  apt-get install -y dotnet-sdk-7.0
  
