chart
generateDesignApprovedSeries
  | months data |
  months := Dictionary new.
  (self organisationModel projects
    select: [ :p | #('Design Only' 'Design & Construction') includes: p projectType ])
    do: [ :project | 
      project designDDDApprovedDate
        ifNotNil: [ :chartDate | 
          (months
            at:
              (Date newDay: 1 monthNumber: chartDate monthIndex year: chartDate year)
            ifAbsentPut: [ OrderedCollection new ]) add: project ] ].
  data := OrderedCollection new.
  months keys asSortedCollection
    do: [ :month | data add: (ChartDatum belongingTo: month withValue: (months at: month) size) ].
  ^ ChartSeries
    named: 'Design Approved'
    composedOf: data
    creatingChartSeriesWith: #'addLineSeries'
    configuredUsing: [ :aHighchartSeries |  ]