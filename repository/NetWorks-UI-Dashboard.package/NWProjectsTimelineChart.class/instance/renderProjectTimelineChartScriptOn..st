chart
renderProjectTimelineChartScriptOn: canvas
  | chart allSeries |
  allSeries := self projectsSeries.
  chart := canvas highcharts newChart.
  chart addYAxis title text: 'Total'.
  chart title text: 'Project History'.
  chart subtitle text: 'All Projects'.
  chart xAxis title text: nil.
  chart xAxis labels rotation: nil.
  chart xAxis type: 'datetime'.	"chart chart width: 100."
  chart chart backgroundColor: '#fff'.
  chart chart type: 'line'.
  chart legend x: 10.
  chart exporting enabled: false.
  (parent userHasRoleNamed: 'menuProjects')
    ifTrue: [ 
      chart plotOptions line point events
        click:
          (canvas jQuery ajax
            callback: [ :dateAndSeries | 
                  | date series |
                  date := Date
                    fromStream: dateAndSeries first readStream
                    usingFormat: #(1 2 3 $/ 1 1).
                  series := dateAndSeries last.
                  parent rootAnnouncer
                    announce:
                      (AdminLTEPanelSelected
                        panel:
                          (NWSelectedProjectsPanel new
                            parent: parent;
                            criteriaLabel:
                                'Projects ' , series , ' in ' , date monthName , ' ' , date year asString;
                            searchResult: ((callbackData at: series) at: date);
                            yourself)) ]
              json:
                (JSStream
                  on:
                    'new Array(event.point.category.toLocaleDateString(),event.point.series.name)');
            script: [ :script | script refresh ];
            asFunction: #('event')) ].
  allSeries
    doWithIndex: [ :series :index | 
      (chart addSeriesOf: HighchartsSeriesLine)
        index: index - 1;
        name: series name;
        data: (series dataAsPointsOn: canvas) ].
  canvas div script: chart