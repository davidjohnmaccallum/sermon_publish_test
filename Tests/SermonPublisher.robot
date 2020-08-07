*** Settings ***
Documentation  Test suite for sermon publisher.
Library  SeleniumLibrary

Resource  ../Resources/Common.robot
Resource  ../Resources/PO/MinistryList.robot
Resource  ../Resources/PO/SermonList.robot
Resource  ../Resources/PO/Sermon.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${BROWSER} =  android
${START_URL} =  https://sermon-publish.herokuapp.com/

*** Test Cases ***
User can listen to a sermon
  MinistryList.Load
  MinistryList.Verify Page Loaded
  MinistryList.Select Ministry
  SermonList.Verify Page Loaded
  SermonList.Select Sermon
  Sermon.Verify Page Loaded
  Sermon.Play Sermon
  Sermon.Verify Sermon Playing

# Sermon list page loads

# Sermon page loads

# I can share a sermon

# I can contact the pastor via email

# I can contact the pastor via phone call

# I can read the bible passage

