widgets
lockScreenWidget
  ^ self components
    at: #'loginWidget'
    ifAbsentPut: [ AdminLTELockScreenWidget new ]