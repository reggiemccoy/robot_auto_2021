*** Settings ***
Documentation  Veify Amazon Devices link acccess
Library  SeleniumLibrary

# Copy/paste the line below into Terminal to execute:
# robot -d results tests/amazongui.robot

*** Variables ***
${BROWSER} =  chrome
${DEPARTMENT} =  Amazon Devices
${url} =  http://www.amazon.com

*** Test Cases ***
User doesn't have to sign in to check out the "Whole Foods", option
     [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  ${url}  ${BROWSER}
    Wait Until Page Contains  Cart
    wait until page contains  ${DEPARTMENT}
    click link  ${DEPARTMENT}
    sleep  3s

   page should contain  Explore more from Amazon Devices
   wait until page contains element  id=navFooter
   # page should contain image  alt=Holiday deals for everyone

    capture page screenshot  Screenshots/${DEPARTMENT}_pix.png

    Close Browser
*** Keywords ***
