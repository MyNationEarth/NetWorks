rendering
renderAdminContentOn: canvas
  canvas heading
    level4;
    with: 'Statistics'.
  canvas tbsRow with: [ self renderClientsInfoBoxOn: canvas ].
  canvas tbsRow
    with: [ 
      self renderProjectsInfoBoxOn: canvas.
      self renderProjectsCompletedThisMonthBoxOn: canvas ].
  canvas heading
    level4;
    with: 'Charts'.
  canvas tbsRow with: [ self renderChartsOn: canvas ].
  canvas heading
    level4;
    with: 'Exporting Data'.
  canvas tbsRow
    with: [ 
      self renderExportProjectsOn: canvas.
      self renderExportProjectsForecastOn: canvas.
      self renderExportInsurancesOn: canvas.
      self renderExportInvoicesOn: canvas ].
  canvas tbsRow
    style: 'padding-top: 24px;';
    with: [ self renderExportDesignSummaryOn: canvas ]