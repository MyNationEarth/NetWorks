rendering
renderChartsOn: canvas
  canvas tbsColumn
    mediumSize: 12;
    smallSize: 12;
    extraSmallSize: 12;
    with: [ canvas render: self projectsTinelineChartComponent ]