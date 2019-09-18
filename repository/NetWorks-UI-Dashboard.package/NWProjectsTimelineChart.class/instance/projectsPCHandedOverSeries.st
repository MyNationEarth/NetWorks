chart
projectsPCHandedOverSeries
  ^ chartData
    at: #'projectsPCHandedOverSeries'
    ifAbsentPut: [ self generateProjectsPCHandedOverSeries ]