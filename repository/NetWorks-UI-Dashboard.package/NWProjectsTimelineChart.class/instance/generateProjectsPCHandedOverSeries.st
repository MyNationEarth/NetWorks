chart
generateProjectsPCHandedOverSeries
  | months data |
  months := Dictionary new.
  NetWorks datateks projects
    do: [ :project | 
      project pcHandedOverDate
        ifNotNil: [ :chartDate | 
          (months
            at:
              (Date newDay: 1 monthNumber: chartDate monthIndex year: chartDate year)
            ifAbsentPut: [ OrderedCollection new ]) add: project ] ].
  data := OrderedCollection new.
  months keys asSortedCollection
    do: [ :month | data add: (ChartDatum belongingTo: month withValue: (months at: month) size) ].
  ^ ChartSeries
    named: 'Completed'
    composedOf: data
    creatingChartSeriesWith: #'addLineSeries'
    configuredUsing: [ :aHighchartSeries |  ]