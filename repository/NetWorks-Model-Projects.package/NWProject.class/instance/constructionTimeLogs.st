Accessing
constructionTimeLogs
  ^ constructionTimeLogs
    ifNil: [ constructionTimeLogs := OrderedCollection new ]