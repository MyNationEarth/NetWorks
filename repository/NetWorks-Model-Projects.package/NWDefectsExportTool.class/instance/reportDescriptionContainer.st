export file
reportDescriptionContainer
  | template |
  template := NWDefect new.
  ^ template titleDescription , template contractorTitleDescription
    , template typeDescription , template classificationDescription
    , template projectTitleDescription , template commentDescription
    , template internalStaffTitleDescription , template locationDescription
    , template rectificationCommentDescription
    , template raisedByTitleDescription , template raisedDateDescription
    , template closedDateDescription
    , template daysFromRaisedToClosedDescription
    , template evidenceCommentDescription