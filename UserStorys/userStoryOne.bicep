param location string = resourceGroup().location
param textToReplaceSubtitleWith string = 'This is my default subtitle text. Boring, right?'
param repositoryBranch string = 'main'

resource appServicePlan 'Microsoft.Web/serverfarms@2023-01-01' = {
  name: 'myAppServicePlan'
  location: location
  kind: 'app'
  properties: {
    reserved: false
  }
  sku: {
    name: 'F1'
  }
}
resource appService 'Microsoft.Web/sites@2023-01-01' = {
  name: 'Sigter'
  location: location
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
    siteConfig: {
      appSettings: [
        {
          name: 'TEXT_TO_REPLACE_SUBTITLE_WITH'
          value: textToReplaceSubtitleWith
        }
        {
          name: 'SCM_DO_BUILD_DURING_DEPLOYMENT'
          value: 'true'
        }
        {
          name: 'WEBSITE_NODE_DEFAULT_VERSION'
          value: '~20'
        }
      ]
      publicNetworkAccess: 'Enabled'
    }
  }
}
resource srcControls 'Microsoft.Web/sites/sourcecontrols@2023-01-01' = {
  parent: appService
  name: 'web'
  properties: {
    repoUrl: 'https://github.com/JannicHeidrich/DevOps'
    branch:  repositoryBranch
    isManualIntegration: true
  }
}
