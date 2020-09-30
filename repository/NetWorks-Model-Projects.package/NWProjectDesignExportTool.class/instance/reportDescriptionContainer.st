export file
reportDescriptionContainer
  | template |
  template := NWProject new.
  ^ template aycaNumberDescription , template designAssignedToDescription
    , template designAssignmentDateDescription
    , template designETADateDescription , template designStatusDescription
    , template samDescription , template buildTypeDescription
    , template buildSubTypeDescription
    , template designSowReceivedDateDescription
    , template designGMLSubmissionDateDescription
    , template designPONPatchingRequestDateDescription
    , template designPONSOWReceivedDateDescription
    , template designDDDSubmissionForecastDateDescription
    , template designDDDActualSubmissionDateDescription
    , template designDDDResubmissionDateDescription
    , template designDDDStatusDescription
    , template designDDDApprovedDateDescription
    , template designDDDInternalSubmissionForecastDateDescription
    , template designDDDInternalActualSubmissionDateDescription
    , template designDDDInternalResubmissionDateDescription
    , template designDDDInternalApprovedDateDescription
    , template designLAANSubmissionDateDescription
    , template designHECSubmissionDateDescription
    , template designHECApprovalDateDescription
    , template designLAANStartDateDescription , template designNotesDescription
    , template designNBNCommentsDescription