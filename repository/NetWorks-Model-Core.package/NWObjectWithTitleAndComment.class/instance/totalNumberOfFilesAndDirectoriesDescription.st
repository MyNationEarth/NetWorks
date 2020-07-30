descriptions
totalNumberOfFilesAndDirectoriesDescription
  ^ MANumberDescription new
    accessor: #'totalNumberOfFilesAndDirectories';
    label: 'Number of Files & Directories';
    priority: 100;
    default: 0;
    beReadonly;
    yourself