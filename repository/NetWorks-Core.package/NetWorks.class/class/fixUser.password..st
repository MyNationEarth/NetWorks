utilities
fixUser: userName password: password
  "Sometimes users created in backoffice password is not working"

  | user |
  user := BpmUser getUserNamed: userName.
  user centralUser password: password