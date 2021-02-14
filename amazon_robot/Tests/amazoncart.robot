*** Settings ***
Documentation  Verifying the the site is avaliable 
Library  SeleniumLibrary

# Copy/paste the line below into Terminal to execute:
# robot -d results tests/amazoncart.robot

*** Variables ***


*** Test Cases ***
User must sign in to check out the shopping cart
  [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  https://www.amazon.com  chrome
    wait Until Page Contains  Cart
 
     Click Link    //a[@id="nav-logo-sprites"]
    
    sleep  3s
    # Shopping cart
    Click Element    xpath=(//span[@class="nav-line-2"])[3]
    wait until page contains  Shopping Cart
  
    
    capture page screenshot  screenshot/shoppingcart.png


    close Browser
*** Keywords ***
