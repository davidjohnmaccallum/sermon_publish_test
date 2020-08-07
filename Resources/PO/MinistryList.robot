*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Load
  Go To  https://sermon-publish.herokuapp.com/

Verify Page Loaded
  Wait Until Page Contains  Ministries

Select Ministry
  Click Element  css=body > div > div:nth-child(2) > div > a
