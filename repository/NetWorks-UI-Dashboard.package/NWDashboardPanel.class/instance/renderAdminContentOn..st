rendering
renderAdminContentOn: canvas
  canvas heading
    level4;
    with: 'Statistics'.	"canvas tbsRow with: [ self renderClientsInfoBoxOn: canvas ]."
  canvas tbsRow
    with: [ 
      self renderProjectsInfoBoxOn: canvas.
      self renderProjectsCompletedThisMonthBoxOn: canvas.
      self renderProjectsAwardedThisMonthBoxOn: canvas.
      self renderProjectsDesignApprovedThisMonthBoxOn: canvas.
      self renderOpenDefectsBoxOn: canvas.
      (self userHasRoleNamed: 'projectTabFinancials')
        ifTrue: [ 
          self renderProjectsCompletedValueThisMonthBoxOn: canvas.
          self renderProjectsCompletedValueUnpaidUnpaidThisMonthBoxOn: canvas ] ].
  canvas heading
    level4;
    with: 'Charts'.
  canvas tbsRow with: [ self renderChartsOn: canvas ].
  canvas div
    class: 'dashboardActions';
    with: [ 
          canvas heading
            level4;
            with: 'Exporting Data'.
          canvas tbsRow
            with: [ 
              self renderExportProjectsOn: canvas.
              self renderExportProjectsForecastOn: canvas.
              self renderExportInsurancesOn: canvas.
              self renderExportInvoicesOn: canvas ].
          canvas tbsRow with: [ self renderExportProjectNotesOn: canvas ].
          canvas tbsRow
            style: 'padding-top: 24px;';
            with: [ 
                  self renderExportDesignSummaryOn: canvas.
                  self renderExportConstructionSummaryOn: canvas.
                  self renderExportProjectDesignLogsOn: canvas.
                  self renderExportDefectsOn: canvas ].
          (self userHasRoleNamed: 'invoiceTabLineItems')
            ifTrue: [ 
              canvas heading
                level4;
                with: 'Invoicing'.
              canvas tbsRow
                with: [ 
                  self renderGenerateContractorInvoicesOn: canvas.
                  (self userHasRoleNamed: 'xeroIntegration')
                    ifTrue: [ self renderExportXeroContractorInvoicesOn: canvas ] ].
              canvas tbsRow
                style: 'padding-top: 24px;';
                with: [ 
                      self renderGenerateClientInvoicesOn: canvas.
                      (self userHasRoleNamed: 'xeroIntegration')
                        ifTrue: [ self renderExportXeroClientInvoicesOn: canvas ] ] ] ]