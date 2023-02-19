bpmSetup
hasBpmEnvironment
  "Answer if the organisation has a bpm system setup"

  ^ (BpmEnvironment getEnvironmentNamed: self dnsName ifNone: [ nil ]) == nil