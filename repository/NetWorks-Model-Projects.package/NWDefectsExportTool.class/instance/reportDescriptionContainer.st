export file
reportDescriptionContainer
  | template |
  template := NWDefect new.
  ^ template contractTitleDescription , template typeDescription
    , template classificationDescription , template projectTitleDescription
    , template contractorTitleDescription
    , template internalStaffTitleDescription , template locationDescription
    , template rectificationCommentDescription
    , template raisedByTitleDescription , template raisedDateDescription
    , template closedDateDescription
    , template daysFromRaisedToClosedDescription
    , template evidenceCommentDescription