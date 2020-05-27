export file
reportDescriptionContainer
  | template |
  template := NWDefect new.
  ^ template titleDescription , template contractorTitleDescription
    , template internalStaffTitleDescription , template raisedByTitleDescription
    , template typeDescription , template classificationDescription
    , template projectTitleDescription , template commentDescription
    , template locationDescription , template rectificationCommentDescription
    , template raisedDateDescription , template closedDateDescription
    , template daysFromRaisedToClosedDescription
    , template evidenceCommentDescription