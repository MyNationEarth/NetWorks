searching
allProjectAreas
  "Answer a set of the areas form projects"

  ^ (Set withAll: (projects collect: [ :project | project area ]))
    asSortedCollection