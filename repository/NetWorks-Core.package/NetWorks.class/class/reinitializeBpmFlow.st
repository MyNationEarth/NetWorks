setup
reinitializeBpmFlow
  "Hold on to environments, applications, users and roles. Reset the BpmFlow system and recreate the opbjects"

  | envCache applicationCache userCache roleCache |
  envCache := BpmEnvironment cache.
  applicationCache := BpmApplication cache.
  userCache := BpmUser cache.
  roleCache := BpmRole cache