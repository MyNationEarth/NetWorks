export file
reportDescriptionContainer
  | template |
  template := NWDesignTimeLog new.
  ^ template dateDescription , template projectTitleDescription
    , template projectBuildTypeDescription
    , template projectBuildSubTypeDescription
    , template userDisplayNameDescription , template hoursDescription
    , template commentDescription