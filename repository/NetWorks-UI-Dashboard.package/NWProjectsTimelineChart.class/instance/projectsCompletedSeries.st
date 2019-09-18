chart
projectsCompletedSeries
  ^ chartData
    at: #'projectsCompletedSeries'
    ifAbsentPut: [ self generateProjectsCompletedSeries ]