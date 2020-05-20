chart
projectsDesignApprovedSeries
  ^ chartData
    at: #'projectsDesignApprovedSeries'
    ifAbsentPut: [ self generateDesignApprovedSeries ]