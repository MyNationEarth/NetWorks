patches
patchPCHandoverDates
  "TODO: REMOVE project-constructionActualPCSubmitDate instvar and accessors"

  NetWorks datateks projects
    do: [ :p | 
      p constructionActualPCSubmitDate
        ifNotNil: [ :cDate | p pcHandedOverDate ifNil: [ p pcHandedOverDate: cDate ] ] ]