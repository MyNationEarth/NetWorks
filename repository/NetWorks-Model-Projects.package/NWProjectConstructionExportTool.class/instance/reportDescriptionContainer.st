export file
reportDescriptionContainer
  | template |
  template := NWProject new.
  ^ template aycaNumberDescription , template titleDescription
    , template addressDescription , template constructionProjectTypeDescription
    , template constructionBuildTypeDescription
    , template constructionStatusDescription , template samDescription
    , template clientContactDescription
    , template constructionSiteContactDescription
    , template efscdDateDescription , template projectEngineerDescription
    , template constructionActualStartDateDescription
    , template constructionForecastCompleteDateDescription
    , template constructionActualCompleteDateDescription
    , template constructionFollowUpDateDescription
    , template constructionForecastPCSubmitDateDescription
    , template pcHandedOverDateDescription
    , template constructionCommentsDescription