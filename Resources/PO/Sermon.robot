*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
  Wait Until Page Contains  Listened to by

Play Sermon
  Click Element  playButton

Verify Sermon Playing
  Wait Until Page Contains  Pause
  Capture Page Screenshot