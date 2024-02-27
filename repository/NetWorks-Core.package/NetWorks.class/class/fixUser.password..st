utilities
fixUser: userName password: password
  "Sometimes users created in backoffice password is not working"

  (BpmUser getUserNamed: userName) password: password