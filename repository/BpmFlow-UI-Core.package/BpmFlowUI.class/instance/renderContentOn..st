rendering
renderContentOn: canvas
  self session isLoggedIn
    ifFalse: [ 
      self userName isNil
        ifTrue: [ self renderLoginWidgetOn: canvas ]
        ifFalse: [ self renderLockScreenWidgetOn: canvas ] ]
    ifTrue: [ 
      super renderContentOn: canvas.
      self
        renderSupportForAjaxErrorHandlerOn: canvas;
        renderPatchToTestDelayIssueOn: canvas ]