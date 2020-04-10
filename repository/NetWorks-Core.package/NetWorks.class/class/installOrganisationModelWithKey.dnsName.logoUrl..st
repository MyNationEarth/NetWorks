setup
installOrganisationModelWithKey: modelKey dnsName: dnsName logoUrl: logoUrl
  self instance organisationModels
    at: modelKey asSymbol
    ifAbsentPut: [ 
      NWOrganisationModel new
        dnsName: dnsName asString;
        logoLarge: logoUrl;
        bpmEnvironment:
            (self defaultEnvironmentClass
                getEnvironmentNamed: modelKey asSymbol
                ifNone: [  ]);
        yourself ]