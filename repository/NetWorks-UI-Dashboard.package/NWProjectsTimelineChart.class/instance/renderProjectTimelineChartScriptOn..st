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
  chart plotOptions line point events
    click:
      ((canvas javascript
        callback: [ :seriesKey | 
          parent rootAnnouncer
            announce:
              (AdminLTEPanelSelected
                panel:
                  (NWSelectedProjectsPanel new
                    parent: parent;
                    criteriaLabel: seriesKey asString;
                    searchSelector: #'projectAwardedDate';
                    searchValue: seriesKey;
                    yourself)) ])
        asFunction: #('event')).
  allSeries
    doWithIndex: [ :series :index | 
      (chart addSeriesOf: HighchartsSeriesLine)
        index: index - 1;
        name: series name;
        data: (series dataAsPointsOn: canvas) ].
  canvas div script: chart