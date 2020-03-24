rendering
renderContentOn: canvas
  canvas
    form: [ 
      canvas tbsButton
        beInfo;
        beSubmit;
        style: 'position:absolute; right:8px; z-index:9999';
        callback: [ self reset ];
        with: [ 
              (canvas tag: 'i')
                fontAwesome;
                fontAwesomeRefreshIcon;
                with: [ canvas span tbsScreenReaderOnly with: 'Refresh Graph' ] ] ].
  self renderProjectTimelineChartScriptOn: canvas