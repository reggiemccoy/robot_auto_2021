*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

# Copy/paste the line below into Terminal to execute:
# robot -d results tests/amazongui.robot

*** Variables ***


*** Test Cases ***
User can set a location 
     [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  http://www.amazon.com  chrome
    wait Until Page Contains  Cart
    # wait until page contains  Sell
    # click element  id=glow-ingress-line1
    # wait until page contains  Choose your location
    # capture page screenshot  Screenshots/choose_location_amazon.png
    Click Element    //span[@class="icp-nav-flag icp-nav-flag-us"]
    capture page screenshot  screenshots/choose_location_amazon.png
    Click Element    //input[@class="a-button-input"]

    Close Browser
*** Keywords ***
