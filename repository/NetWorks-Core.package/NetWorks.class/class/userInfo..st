5smiths
userInfo: userName
  | user applicationOptions infoDict |
  infoDict := Dictionary new.
  user := BpmUser getUserNamed: userName.
  infoDict
    at: #'bpmUser' put: user;
    at: #'applicationOptions'
      put: (applicationOptions := user userOptions applicationOptions);
    at: #'givenName' put: (applicationOptions at: #'bpmflow-ui.givenName').
  ^ infoDict