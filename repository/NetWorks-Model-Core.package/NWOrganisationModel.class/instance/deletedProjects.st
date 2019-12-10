Accessing
deletedProjects
  ^ deletedProjects ifNil: [ deletedProjects := OrderedCollection new ]