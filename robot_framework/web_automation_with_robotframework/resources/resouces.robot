*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

*** Keywords ***
Open My Browser
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window

Close All My Browsers
    Close All Browsers

Login to webpage
    [Arguments]  ${username}  ${password}
    input text  ${username_input}  ${username}
    input text  ${password_input}  ${password}

Click login button
    click element  ${login_btn}

Click logout button
    click link  Logout

Error message should be visible
    page should contain  Login was unsuccessful.

Dashboard page should be visible
    page should contain  Dashboard

*** Variables ***
${URL}  https://admin-demo.nopcommerce.com/
${BROWSER}  chrome
${username_input}  //input[@id='Email']
${password_input}  //input[@id='Password']
${login_btn}  //div[@class='buttons']/button[@type='submit']