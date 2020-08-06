*** Settings ***
Documentation  Test suite for sermon publisher.
Resource  Resources/Common.robot
Resource  Resources/SermonPublisher.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***

*** Test Cases ***
Ministry list page loads
  Open Browser  https://sermon-publish.herokuapp.com/  safari
  Capture Page Screenshot  ministries.png
  Sleep  3s
  Close Browser

Sermon list page loads

Sermon page loads

I can listen to a sermon

I can share a sermon

I can contact the pastor via email

I can contact the pastor via phone call

I can read the bible passage

*** Keywords ***
