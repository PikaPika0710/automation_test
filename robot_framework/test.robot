*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
Create an Invoice
    # Comment     This is my first robotframework test case!
    My Keyword
    # Open Browser    http://34.225.240.91/    chrome
    Navigate to Home Page
    Page Should Contain     Invoice Manager
    Close Browser

*** Keywords ***
My Keyword
    Comment  This is my keyword test case!


Navigate to Home Page
    Open Browser     http://34.225.240.91     chrome

