rendering
renderAdminContentOn: canvas
  canvas heading
    level4;
    with: 'Statistics'.
  canvas tbsRow
    with: [ 
      self
        renderClientsInfoBoxOn: canvas;
        renderProjectsInfoBoxOn: canvas ].
  canvas heading
    level4;
    with: 'Exporting Data'.
  canvas tbsRow
    with: [ 
      self renderExportProjectsOn: canvas.
      self renderExportInsurancesOn: canvas ].
  canvas tbsRow
    style: 'padding-top: 24px;';
    with: [ self renderExportDesignSummaryOn: canvas ]