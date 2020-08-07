*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
  Open Browser  about:blank  browser=${BROWSER}  remote_url=${REMOTE_URL}  desired_capabilities=${DESIRED_CAPABILITIES}
  # Maximize Browser Window  

End Web Test
  Close Browser
