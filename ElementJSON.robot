*** Settings ***
Library  SeleniumLibrary
Library  ../ExternalKeyword/Locators.py

*** Variables ***
${Browser}  Chrome
${URL}  https://en-gb.facebook.com/
*** Test Cases ***
First cases
    [Tags]  Smoke
    ${UserName}=  Read Locator  Register.UserName
    Open Browser  ${URL}  ${Browser}
    Input Text  name:${UserName}  ramsteyn420@gmail.com
    Input Text  name:pass  Ramsteyn8$

    #Select Radio Button  xpath
    #Select Checkbix   xpath
    #Click Link  xpath

Second cases
    Click Button  xpath://button[@type='submit']
    Close Browser


*** Keywords ***
Read Locator
  [Arguments]  ${JsonPath}
  ${result}=  element_value  ${JsonPath}
  [Return]  ${result}

