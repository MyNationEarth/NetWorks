Actions
organisationWithDnsName: dnsName
  ^ self organisationModels
    detect: [ :organisationModel | organisationModel dnsName endsWith: dnsName ]
    ifNone: [ 
      "Short Circuit and simply answer the first organisation - used for testing"
      self halt ]