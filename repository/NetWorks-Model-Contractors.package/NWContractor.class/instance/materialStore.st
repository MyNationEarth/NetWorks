Accessing
materialStore
  ^ materialStore ifNil: [ materialStore := NWMaterialStore new ]