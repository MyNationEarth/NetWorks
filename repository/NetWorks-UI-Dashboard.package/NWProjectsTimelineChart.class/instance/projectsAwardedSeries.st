chart
projectsAwardedSeries
  ^ chartData
    at: #'projectsAwardedSeries'
    ifAbsentPut: [ self generateProjectsAwardedSeries ]