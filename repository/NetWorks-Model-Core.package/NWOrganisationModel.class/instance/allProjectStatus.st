searching
allProjectStatus
  "Answer a set of the areas form projects"

  ^ (Set withAll: (projects collect: [ :project | project status ]))
    asSortedCollection