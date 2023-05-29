5smiths
fixCraigsUserName
  ((self userInfo: 'craig@5smiths.com.au') at: #'applicationOptions')
    at: #'bpmflow-ui.givenName'
    put: 'Craig Smith'