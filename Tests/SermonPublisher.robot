*** Settings ***
Documentation  Test suite for sermon publisher.
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Ministries page loads
  Open Browser  https://sermon-publish.herokuapp.com/  safari
  Capture Page Screenshot  ministries.png
  Sleep  3s
  Close Browser

*** Keywords ***
