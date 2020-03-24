components
projectsTinelineChartComponent
  ^ self
    componentAt: #'projectsTimelineChart'
    ifAbsentPut: [ 
      NWProjectsTimelineChart new
        parent: self;
        organisationModel: self organisationModel;
        yourself ]