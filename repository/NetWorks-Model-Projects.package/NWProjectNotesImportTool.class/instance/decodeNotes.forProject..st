Importing
decodeNotes: notes forProject: project
  | lastNote |
  (notes substrings: Character lf)
    do: [ :note | 
      note trimBoth
        ifNotEmpty: [ 
          | day month date |
          note first isDigit
            ifFalse: [ 
              lastNote
                ifNotNil: [ 
                  | newComment |
                  newComment := (lastNote comment ifNil: [ '' ])
                    , (self cleanString: note) , Character cr.
                  lastNote comment: newComment.
                  Transcript show: newComment ] ]
            ifTrue: [ 
              day := self numberFromString: (note trimBoth copyFrom: 1 to: 2).
              month := self numberFromString: (note trimBoth copyFrom: 4 to: 5).
              date := DateAndTime
                year:
                  (month > 4
                    ifTrue: [ 2018 ]
                    ifFalse: [ 2019 ])
                month: month
                day: day.
              project notes
                add:
                  ((lastNote := NWNote new)
                    title: (self cleanString: (note copyFrom: 6 to: note size));
                    dateAndTime: date;
                    yourself) ] ] ]