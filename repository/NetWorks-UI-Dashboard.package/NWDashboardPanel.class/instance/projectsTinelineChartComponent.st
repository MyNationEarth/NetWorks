components
projectsTinelineChartComponent
  ^ self
    componentAt: #'projectsTimelineChart'
    ifAbsentPut: [ NWProjectsTimelineChart new ]