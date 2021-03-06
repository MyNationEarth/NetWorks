uploaded
cssstyleCssContent
	^ '/* SASS NetWorks toolkit */
/* ContractorManager Theme */
/* Flat Theme */
@import url(http://fonts.googleapis.com/css?family=Bitter:400,700|Open+Sans:400,300,600,700);
/* NetWorks page layout */
html, body, .wrapper, .content-wrapper {
  height: 100%;
}

.content {
  padding-bottom: 50px;
}

div.alert {
  font-weight: bold;
  font-size: 1.2em;
  color: black !important;
  text-shadow: 1px 1px 1px rgba(255, 255, 255, 0.9);
}
.dashbaordActions > > .btn {
  width: 100%;
  text-align: left !important;
  padding-right: 24px;
}

/* NetWorks report */
.magritte .buttons {
  text-align: right;
}
.magritte .buttons input {
  height: 32px;
  background: none;
  border: none;
  background-repeat: no-repeat;
  background-position: left;
  margin-left: 10px;
  cursor: pointer;
}
.magritte .buttons input:nth-of-type(1) {
  float: right;
  background-image: url(/files/CCFileLibrary/images/save.png);
  background-size: contain;
  padding-left: 35px;
}
.magritte .buttons input:nth-of-type(2) {
  background-image: url(/files/CCFileLibrary/images/cancel.png);
  background-size: contain;
  padding-left: 30px;
}

.row .col-sm-6:last-child .reportSearch,
.row .col-sm-6:last-child button {
  float: right;
}

.magritte dt.reportComponent {
  text-align: center;
  font-weight: bold;
  font-size: 1.5em;
  padding-bottom: 20px;
  display: none;
}

.selection-actions {
  float: right;
}
.selection-actions .dropdown-menu {
  left: auto;
  right: 0;
}

table.report, .reportComponent table {
  width: 100%;
}
table.report th, .reportComponent table th {
  padding-bottom: 5px;
  border-bottom: 1px solid rgba(0, 0, 0, 0.05);
}
table.report td, .reportComponent table td {
  padding: 3px 0px;
}
table.report tfoot, .reportComponent table tfoot {
  text-align: center;
}
table.report tfoot td, .reportComponent table tfoot td {
  padding-top: 2em;
}
table.report th, table.report tbody td, .reportComponent table th, .reportComponent table tbody td {
  text-align: center;
}
table.report th:first-child, table.report tbody td:first-child, .reportComponent table th:first-child, .reportComponent table tbody td:first-child {
  text-align: left;
}
table.report th:nth-child(2), table.report tbody td:nth-child(2), .reportComponent table th:nth-child(2), .reportComponent table tbody td:nth-child(2) {
  text-align: left;
}
table.report th:last-child, table.report tbody td:last-child, .reportComponent table th:last-child, .reportComponent table tbody td:last-child {
  text-align: right;
}
table.report th:last-child a, table.report tbody td:last-child a, .reportComponent table th:last-child a, .reportComponent table tbody td:last-child a {
  padding-left: 8px;
}
table.report th.text-left, table.report tbody td.text-left, .reportComponent table th.text-left, .reportComponent table tbody td.text-left {
  text-align: left !important;
}
table.report th.text-right, table.report tbody td.text-right, .reportComponent table th.text-right, .reportComponent table tbody td.text-right {
  text-align: right !important;
}
table.report tbody tr td:last-child, .reportComponent table tbody tr td:last-child {
  opacity: 0.5;
}
table.report tbody tr:hover, .reportComponent table tbody tr:hover {
  background-color: rgba(0, 0, 0, 0.05);
}
table.report tbody tr:hover td:last-child, .reportComponent table tbody tr:hover td:last-child {
  opacity: 1;
}

/* NetWorks brand */
.logo-lg img, .logo-mini img {
  max-height: 40px;
}

.login-logo img {
  width: 100%;
}

.authCode {
  width: 100%;
  text-align: center;
  padding: 24px;
}

.authCodeLetter {
  display: inline;
  border: 1px solid rgba(0, 0, 0, 0.4);
  border-radius: 6px;
  padding: 4px 12px;
  font-size: 24pt;
  margin-right: 12px;
  box-shadow: inset 0px 0px 5px 2px rgba(0, 0, 0, 0.25);
}

/* NetWorks form */
.magritte dl dt {
  padding-top: 25px;
  padding-bottom: 5px;
}
.magritte dl textarea {
  width: 100%;
}

.box-header.with-border, .nav-tabs-custom > .nav {
  border-bottom: 1px solid rgba(0, 0, 0, 0.15);
  background: -moz-linear-gradient(top, rgba(0, 0, 0, 0) 60%, rgba(0, 0, 0, 0.05) 100%);
  /* FF3.6-15 */
  background: -webkit-linear-gradient(top, rgba(0, 0, 0, 0) 60%, rgba(0, 0, 0, 0.05) 100%);
  /* Chrome10-25,Safari5.1-6 */
  background: linear-gradient(to bottom, rgba(0, 0, 0, 0) 60%, rgba(0, 0, 0, 0.05) 100%);
  /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
}

.form-buttons {
  border-bottom-left-radius: 6px;
  border-bottom-right-radius: 6px;
  border-top: 1px solid rgba(0, 0, 0, 0.15);
  padding-top: 12px;
  margin-left: -10px;
  padding-left: 10px;
  margin-right: -10px;
  padding-right: 10px;
  background: -moz-linear-gradient(top, rgba(0, 0, 0, 0.05) 0%, rgba(0, 0, 0, 0) 40%);
  /* FF3.6-15 */
  background: -webkit-linear-gradient(top, rgba(0, 0, 0, 0.05) 0%, rgba(0, 0, 0, 0) 40%);
  /* Chrome10-25,Safari5.1-6 */
  background: linear-gradient(to bottom, rgba(0, 0, 0, 0.05) 0%, rgba(0, 0, 0, 0) 40%);
  /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
  position: fixed;
  bottom: 0px;
  width: 100%;
}
.form-buttons button {
  margin-left: 0px;
  margin-right: 12px;
}
.form-buttons button:nth-of-type(1), .form-buttons button:nth-of-type(2) {
  float: left;
  margin-left: 12px;
  margin-right: 0px;
}
.form-buttons:after {
  content: " ";
  clear: both;
  display: table;
}

.nav-tabs-custom {
  margin-bottom: 0;
}
.nav-tabs-custom + .form-buttons {
  margin: 0;
  margin-left: -15px;
  padding-left: 16px;
  padding-bottom: 24px;
  background-color: rgba(255, 255, 255, 0.85);
}

.box-footer .buttons {
  float: right;
}
.box-footer .buttons button {
  margin-left: 6px;
}

textarea {
  width: 100%;
  border: 1px solid #ccc;
  border-radius: 4px;
  padding: 6px 12px;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}

label.checkbox {
  margin-left: 24px;
}

/* NetWorks Integration Panel */
.integrationPanel {
  display: flex;
  justify-content: space-between;
}
.integrationPanel .integrationLogo {
  background-color: white;
  border: 1px solid rgba(0, 0, 0, 0.5);
  border-radius: 6px;
  padding: 12px;
}

/* Visualisations */
.controls > .hierarchyNodeSelect {
  -moz-box-shadow: inset 0 0 10px rgba(0, 0, 0, 0.15);
  -webkit-box-shadow: inset 0 0 10px rgba(0, 0, 0, 0.15);
  box-shadow: inset 0 0 10px rgba(0, 0, 0, 0.15);
}

.hierarchyNodeSelect {
  width: 100%;
  height: 300px;
}

div.InfoVis {
  background-color: transparent;
  width: 100%;
  height: 300px;
  overflow: hidden;
}

div.tip {
  display: block;
  font-size: 0.7em;
  max-width: 300px;
  max-height: 200px;
  overflow: hidden;
  background-color: white;
  opacity: 0.7;
  padding: 5px;
  border-style: solid;
  border-width: 1px;
  border-color: black;
  -moz-box-shadow: 2px 2px 8px #555555;
}

div.legend-color {
  border: 1px solid rgba(0, 0, 0, 0.5);
  margin: 3px 3px 0 0;
  padding: 0 0 0 0;
  width: 1em;
  height: 1em;
  float: left;
}

div.legend-label {
  margin-top: 0px;
}

li.legend {
  padding: 0px;
}

ul.legend {
  border: 1px solid #555555;
  list-style-type: none;
  padding: 5px;
  margin: 0px;
  width: 10em;
}

/* Generic Panel  */
input[type=search] {
  -webkit-box-sizing: content-box;
  -moz-box-sizing: content-box;
  box-sizing: content-box;
  -webkit-appearance: searchfield;
  width: 90px;
}

input[type=search]::-webkit-search-cancel-button {
  -webkit-appearance: searchfield-cancel-button;
}

.answerBtn {
  position: absolute;
  right: 16px;
  top: 70px;
}

.filters button {
  border-radius: 12px;
  padding-left: 6px;
}
.filters button .badge {
  position: relative;
  top: -1px;
}

.assignment .ui-selected, .scheduling .ui-selected {
  background-color: rgba(0, 0, 0, 0.05);
}
.assignment .focus .ui-selected, .scheduling .focus .ui-selected {
  background-image: linear-gradient(#428bca 0%, #357ebd 100%);
  color: white;
}
.assignment .focus .ui-selected .fa, .scheduling .focus .ui-selected .fa {
  opacity: 0.9;
  color: rgba(255, 255, 255, 0.65);
}
.assignment .box-header, .scheduling .box-header {
  padding: 4px;
}
.assignment .box-header .box-title, .scheduling .box-header .box-title {
  margin-top: 4px;
}
.assignment .box-header .box-tools, .scheduling .box-header .box-tools {
  position: relative;
  top: -1px;
}
.assignment .box-header .box-tools .search, .scheduling .box-header .box-tools .search {
  position: relative;
  top: 1px;
}
.assignment .box-body, .scheduling .box-body {
  padding: 0;
  height: 200px;
  overflow-y: auto;
  overflow-x: hidden;
}
.assignment .box-footer, .scheduling .box-footer {
  padding: 2px 6px;
  background: rgba(0, 0, 0, 0.05);
}
.assignment .box-footer p, .scheduling .box-footer p {
  font-size: 11px;
  padding: 0;
  margin: 0;
}
.assignment .panel-report .report-row, .scheduling .panel-report .report-row {
  display: flex;
  align-items: center;
  padding: 4px 12px;
  z-index: 9999;
}
.assignment .panel-report .report-row .icon, .scheduling .panel-report .report-row .icon {
  align-self: flex-start;
}
.assignment .panel-report .report-row .icon span, .scheduling .panel-report .report-row .icon span {
  margin-right: 4px;
}
.assignment .panel-report .report-row .labels, .scheduling .panel-report .report-row .labels {
  flex-grow: 100;
  display: flex;
  flex-direction: column;
}
.assignment .panel-report .report-row .labels .title, .scheduling .panel-report .report-row .labels .title {
  font-weight: bold;
  line-height: 0.8em;
}
.assignment .panel-report .report-row .labels .comment, .scheduling .panel-report .report-row .labels .comment {
  font-size: 0.75em;
}
.assignment .panel-report .report-row .columns, .scheduling .panel-report .report-row .columns {
  display: flex;
  text-align: right;
}
.assignment .panel-report .report-row .columns .col, .scheduling .panel-report .report-row .columns .col {
  padding-left: 2px;
  min-width: 60px;
  width: 60px;
}
.assignment .panel-report .report-row .fa, .scheduling .panel-report .report-row .fa {
  opacity: 0.9;
  color: #428bca;
}
.assignment .ui-selected, .scheduling .ui-selected {
  background-color: rgba(0, 0, 0, 0.05);
}
.assignment .focus .ui-selected, .scheduling .focus .ui-selected {
  background-image: linear-gradient(#428bca 0%, #357ebd 100%);
  color: white;
}
.assignment .focus .ui-selected .fa, .scheduling .focus .ui-selected .fa {
  opacity: 0.9;
  color: rgba(255, 255, 255, 0.65);
}

.dropHover {
  box-shadow: inset 0px 0px 6px 3px rgba(0, 0, 0, 0.15);
}

/* NAV TABS */
.nav-tabs-custom > .nav-tabs > li {
  margin-right: 5px;
}
.nav-tabs-custom > .nav-tabs > li > button {
  padding: 8px;
  font-size: 0.9em;
  border: 0;
  color: #444;
  border-radius: 0;
}
.nav-tabs-custom > .nav-tabs > li > button.text-muted {
  color: #999;
}
.nav-tabs-custom > .nav-tabs > li > button, .nav-tabs-custom > .nav-tabs > li > button:hover {
  background: transparent;
  margin: 0;
}
.nav-tabs-custom > .nav-tabs > li > button:hover {
  color: #999;
}
.nav-tabs-custom > .nav-tabs > li:not(.active) > button:hover,
.nav-tabs-custom > .nav-tabs > li:not(.active) > button:focus,
.nav-tabs-custom > .nav-tabs > li:not(.active) > button:active {
  border-color: transparent;
}
.nav-tabs-custom > .nav-tabs > li.active {
  border-top-color: #3c8dbc;
}
.nav-tabs-custom > .nav-tabs > li.active > button, .nav-tabs-custom > .nav-tabs > li.active:hover > button {
  background-color: #fff;
  color: #444;
}
.nav-tabs-custom > .nav-tabs > li.active > button {
  border-top-color: transparent;
  border-left-color: #f4f4f4;
  border-right-color: #f4f4f4;
}
.nav-tabs-custom > .nav-tabs > li:first-of-type {
  margin-left: 0;
}
.nav-tabs-custom > .nav-tabs > li:first-of-type.active > button {
  border-left-color: transparent;
}
.nav-tabs-custom > .nav-tabs.pull-right {
  float: none !important;
}
.nav-tabs-custom > .nav-tabs.pull-right > li {
  float: right;
}
.nav-tabs-custom > .nav-tabs.pull-right > li:first-of-type {
  margin-right: 0;
}
.nav-tabs-custom > .nav-tabs.pull-right > li:first-of-type > a {
  border-left-width: 1px;
}
.nav-tabs-custom > .nav-tabs.pull-right > li:first-of-type.active > button {
  border-left-color: #f4f4f4;
  border-right-color: transparent;
}
.nav-tabs-custom > .nav-tabs li.header {
  margin-top: 6px;
  font-size: 18px;
  line-height: 1;
}

/* Calendar  */
#calendar {
  height: 500px;
  width: 100%;
  padding: 16px;
  font-size: 0.85em;
}
#calendar h2 {
  font-size: 1.5em;
}

.ui-dialog, .dropdown-menu {
  z-index: 10;
}

/*
.calendar {
	margin: 0 0 60px 0;
    td {
        text-align:right;
        border-right: 1px solid rgba(0,0,0,0.05);

        a {
            background-image: linear-gradient(rgb(66, 139, 202) 0%, rgb(53, 126, 189) 100%);
			color: white;
            padding: 2px;
            text-align: left;
        }
        & a:hover {
            background-color: rgba(0,0,0,0.05);
            background-image: none;
			color: black;
        }
    }
}
*/

/*# sourceMappingURL=style.css.map */
'