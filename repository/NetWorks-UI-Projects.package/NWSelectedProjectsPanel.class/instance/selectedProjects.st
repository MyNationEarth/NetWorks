components
selectedProjects
  ^ searchResult
    ifNil: [ 
      searchResult := self organisationModel projects
        select: [ :project | (project perform: searchSelector) = searchValue ] ]