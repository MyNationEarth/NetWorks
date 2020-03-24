components
selectedProjects
  ^ self organisationModel projects
    select: [ :project | (project perform: searchSelector) = searchValue ]