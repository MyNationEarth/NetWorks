chart
generateProjectsAwardedSeries
  | months data |
  months := Dictionary new.
  NetWorks datateks projects
    do: [ :project | 
      project projectAwardedDate
        ifNotNil: [ :chartDate | 
          (months
            at:
              (Date newDay: 1 monthNumber: chartDate monthIndex year: chartDate year)
            ifAbsentPut: [ OrderedCollection new ]) add: project ] ].
  data := OrderedCollection new.
  months keys asSortedCollection
    do: [ :month | data add: (ChartDatum belongingTo: month withValue: (months at: month) size) ].
  ^ ChartSeries
    named: 'Awarded'
    composedOf: data
    creatingChartSeriesWith: #'addLineSeries'
    configuredUsing: [ :aHighchartSeries |  ]