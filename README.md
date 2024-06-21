
Create app 
az ad app create --display-name myApp

Create service principal 
az ad sp create --id $appId

client-id
517e83eb-f66f-46a9-a90f-f4b62b1269f8

objectid 
aded3806-563f-4672-851a-15db9d94a59c

sp id - assignee-object-id.
6c8832fd-671a-4a69-bad3-470c2b931694

$assigneeObjectId="6c8832fd-671a-4a69-bad3-470c2b931694"
$subscriptionId = "your-subscription-id"
$resourceGroupName = "exampleRG"

az role assignment create --role contributor --subscription $subscriptionId --assignee-object-id $assigneeObjectId --assignee-principal-type ServicePrincipal --scopes /subscriptions/$subscriptionId/resourceGroups/$resourceGroupName/providers/Microsoft.Web/sites/

az role assignment create --role contributor --subscription $subscriptionId --assignee-object-id  $assigneeObjectId --assignee-principal-type ServicePrincipal --scope /subscriptions/$subscriptionId/resourceGroups/$resourceGroupName


Federated credential

APPLICATION-OBJECT-ID 
CREDENTIAL-NAME=Name of your credential 


az rest --method POST --uri 'https://graph.microsoft.com/beta/applications/aded3806-563f-4672-851a-15db9d94a59c/federatedIdentityCredentials' --body '{"name":"github-azure-bicep-integration","issuer":"https://token.actions.githubusercontent.com","subject":"repo:mitzenjeremywoo/github_action_bicep:ref:refs/heads/main","description":"Testing","audiences":["api://AzureADTokenExchange"]}'

