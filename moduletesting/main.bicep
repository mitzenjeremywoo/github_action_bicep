module sa 'storage/storage.bicep' = {
  name: 'mystorage'
  params: {
  storagePrefix: 'jerwotest'
  }
 }

 output primaryConnection object = sa.outputs.storageEndpoint
