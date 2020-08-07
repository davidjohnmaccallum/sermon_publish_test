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

*** Test Cases ***
User can listen to a sermon
  Given MinistryList.Load
  And MinistryList.Verify Page Loaded
  And MinistryList.Select Ministry
  And SermonList.Verify Page Loaded
  And SermonList.Select Sermon
  And Sermon.Verify Page Loaded
  When Sermon.Play Sermon
  Then Sermon.Verify Sermon Playing

# Sermon list page loads

# Sermon page loads

# I can listen to a sermon

# I can share a sermon

# I can contact the pastor via email

# I can contact the pastor via phone call

# I can read the bible passage

