*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
  Wait Until Page Contains  Sermons

Select Sermon
  Click Element  css=body > div > div:nth-child(2) > div > a
