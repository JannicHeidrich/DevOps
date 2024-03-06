resource gameStorage 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: 'gamelaunchstorage'
  location: resourceGroup().location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  properties: {
    accessTier: 'Hot'
    minimumTlsVersion: 'TLS1_2'
    allowBlobPublicAccess: false
    allowSharedKeyAccess: false
  }
}
resource survivalContainer 'Microsoft.Storage/storageAccounts/blobServices/containers@2023-01-01' = {
  name: '${gameStorage.name}/default/survival-games'
  dependsOn: [
    gameStorage
  ]
}
