bpmSetup
createSystem
  "If there is no bpm environment create it"

  self hasBpmEnvironment
    ifFalse: [ 
      NetWorks installBpmEnvironmentWithKey: dnsName asSymbol applicationName: dnsName.
      NetWorks installModelViewApplicationWithKey: dnsName	"Setup Admin User for Craig" ]