private
open: anException
  "IMPORTANT: This method is the same as the superclass with the following differences:
* The code that manages the AJAX error. Instead of doing '(self requestContext responseGenerator internalError: anException) respond' we delegate to our custom method #respondFromAjaxRequestWith:continuation which instead of writing a simple response, it writes a JSON serilized dictionary of useful information as the response. This response text (JSON) is then parsed by the #ajaxErrorHandler to show the error info to the user.
* The code that renders a response when there is a rendering error. This class renders the same DpQuuveProductionWalkback instance as it would render for a callback error. 

 "

  | continuation action |
  GRPlatform current canDebugInteractively
    ifTrue: [ 
      (anException isKindOf: Error)
        ifFalse: [ 
          "Halt or BreakpointNotification ... see WASession>>withErrorHandler"
          anException pass ].
      ^ super open: anException ].
  action := [ :cont | 
  continuation := cont.
  #'create' ] callCC.
  action == #'create'
    ifTrue: [ 
      | wb |
      "If an error occurs trying to display the walkback component, we just use the super
			behaviour, which should be to open a debugger.."
      [ 
      self session isNil
        ifTrue: [ 
          | logEntry |
          WACurrentRequestContext value forDebugging: true.
          logEntry := WAObjectLogEntry
            error: anException description
            request: WACurrentRequestContext value request
            continuation: continuation.	"the continuation is not resumable"
          logEntry resumeContinuation.
          logEntry addToLog ]
        ifFalse: [ 
          WACurrentRequestContext value forDebugging: true.
          wb := self walkbackClass
            exception: anException
            continuation: continuation.
          self requestContext request isXmlHttpRequest
            ifTrue: [ 
              wb logContinuation: anException description.
              self
                respondFromAjaxRequestWith: anException
                continuation: continuation ]
            ifFalse: [ self session presenter call: wb ].	"Exception handlers hold the request context because they are used in places where
					 the dynamic variable is not present. Since this particular class depends on RenderLoop,
		 			 however, it will be present and we need to update the stored value after doing a call."
          requestContext := WACurrentRequestContext value ] ]
        on: Error
        do: [ :err | 
          ((err isKindOf: WAUnhandledNotificationError)
            or: [ err isKindOf: WAGsInvalidCallbackContext ])
            ifTrue: [ 
              wb applicationDeployed
                ifFalse: [ wb addContinuation ].
              ^ self handleRenderingError: anException with: wb ]
            ifFalse: [ 
              Transcript
                cr;
                show: 'Error stack for creating walkback: ';
                cr.
              Transcript
                show:
                  (String
                    streamContents: [ :aStream | aStream nextPutAll: (GsProcess stackReportToLevel: 250) ]).
              Transcript
                cr;
                show: 'Error creating WAWalkback: ' , err description	"error depends upon whether we're using #call:onAnswer: or #call:" ] ].
      ^ self ].
  action == #'debug'
    ifTrue: [ self halt ]