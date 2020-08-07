*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Load
  Go To  ${START_URL}

Verify Page Loaded
  Wait Until Page Contains  Ministries

Select Ministry
  Click Link  ministry-0
