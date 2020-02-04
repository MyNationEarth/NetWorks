components
projectsTinelineChartComponent
  ^ self
    componentAt: #'projectsTimelineChart'
    ifAbsentPut: [ 
      NWProjectsTimelineChart new
        organisationModel: self organisationModel;
        yourself ]