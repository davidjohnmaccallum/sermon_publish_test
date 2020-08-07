*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
  Wait Until Page Contains  Sermons

Select Sermon
  Click Link  sermon-0
