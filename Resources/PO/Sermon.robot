*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
  Wait Until Page Contains  Listened to by

Play Sermon
  Click Element  playButton

Verify Sermon Playing
  Wait Until Page Contains  Pause

Share Sermon
  Wait Until Element Is Visible  id=shareButton
  Click Element  shareButton

Email Pastor
  Click Element  emailContactButton

Call Pastor
  Click Element  phoneContactButton

Call Pastor Button Is Hidden
  Page Should Not Contain Element  phoneContactButton

Open Bible Passage
  Click Element  bibleLink
  Switch Window  NEW
  Wait Until Page Contains  loved