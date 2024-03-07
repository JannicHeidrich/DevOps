param (
    [string]$environment
)
 
function DeployToDev {
    Write-Host "Deploying to Dev environment..."
    az deployment group create --resource rg-jannic-heidrich --template-file C:\Users\Jannic.Heidrich\source\repos\Sonnstiges\SYS\DevOps\DevOps\UserStorys\Two_Three\userStoryTwo.bicep --parameters C:\Users\Jannic.Heidrich\source\repos\Sonnstiges\SYS\DevOps\DevOps\UserStorys\Two_Three\parameters.dev.json --confirm-with-what-if
}
 
function DeployToTest {
    Write-Host "Deploying to Test environment..."
    az deployment group create --resource rg-jannic-heidrich --template-file C:\Users\Jannic.Heidrich\source\repos\Sonnstiges\SYS\DevOps\DevOps\UserStorys\Two_Three\userStoryTwo.bicep --parameters C:\Users\Jannic.Heidrich\source\repos\Sonnstiges\SYS\DevOps\DevOps\UserStorys\Two_Three\parameters.test.json --confirm-with-what-if
}
 
function DeployToProd {
    Write-Host "Deploying to Prod environment..."
    az deployment group create --resource rg-jannic-heidrich --template-file C:\Users\Jannic.Heidrich\source\repos\Sonnstiges\SYS\DevOps\DevOps\UserStorys\Two_Three\userStoryTwo.bicep --parameters C:\Users\Jannic.Heidrich\source\repos\Sonnstiges\SYS\DevOps\DevOps\UserStorys\Two_Three\parameters.prod.json --confirm-with-what-if
}
 
# Main script logic
if ($environment -eq 'dev') {
    DeployToDev
}
elseif ($environment -eq 'test') {
    DeployToTest
}
elseif ($environment -eq 'prod') {
    DeployToProd
}
else {
    Write-Host "Invalid environment parameter. Please use 'dev', 'test', or 'main'."
}