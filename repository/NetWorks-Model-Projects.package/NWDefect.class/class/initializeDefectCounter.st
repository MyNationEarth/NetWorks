initialization
initializeDefectCounter
  ^ defectCounter := RcCounter new
    incrementBy: 10000;
    yourself