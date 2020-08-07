*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
  Open Browser  about:blank  headlesschrome
  Maximize Browser Window  

End Web Test
  Close Browser
