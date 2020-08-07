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
${START_URL} =  https://sermon-publish.herokuapp.com/

# ${BROWSER} =  headlesschrome
# ${REMOTE_URL} =  False
# ${DESIRED_CAPABILITIES} =  None

${BROWSER} =  chrome
${REMOTE_URL} =  http://127.0.0.1:4723/wd/hub
${DESIRED_CAPABILITIES} =  platformName:Android,deviceName:RZ8N21RC4EL,automationName:UIAutomator2,browserName:Chrome

*** Test Cases ***

User can listen to a sermon
  Open A Sermon
  Sermon.Play Sermon
  Sermon.Verify Sermon Playing

User can share a sermon
  Open A Sermon
  Sermon.Share Sermon

User can email the pastor
  Open A Sermon
  Sermon.Email Pastor

User cannot call the pastor
  Open A Sermon
  Sermon.Call Pastor Button Is Hidden

User can read bible passage 
  Open A Sermon
  Sermon.Open Bible Passage

*** Keywords ***

Open A Sermon
  MinistryList.Load
  MinistryList.Verify Page Loaded
  MinistryList.Select Ministry
  SermonList.Verify Page Loaded
  SermonList.Select Sermon
  Sermon.Verify Page Loaded
