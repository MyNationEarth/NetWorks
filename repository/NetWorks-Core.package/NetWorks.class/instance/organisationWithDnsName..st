Actions
organisationWithDnsName: dnsName
  ^ self organisationModels
    detect: [ :organisationModel | organisationModel dnsName endsWith: dnsName ]
    ifNone: [ self error: 'There is no organisation with the dnsName ' , dnsName asString	"Short Circuit and simply answer the first organisation - used for testing"	"self organisationModels first" ]