Importing
import
  super import.
  self ensureRawDataIsUsableFormat.
  reader := NeoCSVReader on: (ReadStream on: rawData).
  self addFields.
  rows := reader upToEnd