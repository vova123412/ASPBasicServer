# ASPBasicServer
configuration for linux agent 
#run ubuntu docker agent 

#1)create ubuntu image from azure devops https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops






#2)docker run -e AZP_URL=https://dev.azure.com/varuss729 -e AZP_TOKEN=<PAT token> -e AZP_AGENT_NAME=mypc  -e AZP_POOL=selfhost  dockeragent:latest

  
  
  
  

#powershell installation commands
  apt-get update
  apt-get install -y wget apt-transport-https software-properties-common
  wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb
  dpkg -i packages-microsoft-prod.deb
  apt-get update
  add-apt-repository universe
  apt-get install -y powershell
  
  
#dotnet installation command
  apt-get install -y dotnet-sdk-7.0
  
