*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem


*** Test Cases ***
LOGIN TEST CASE
    Comment  Login Viet Dev Shop AutomationTest
    Open Browser  ${login_url}  chrome
    Input Text  name=email  ${username}
    Input Password  name=password   ${password}
    # Login
    Click Button   xpath=//*[@id="wrapper"]/section/div/div/div/div[2]/div/div[6]/button

    #TODO: Change infomation of account

    # # Change to Account Page
    # Sleep  1s
    # Click Element  xpath=//*[@id="navbar-menu"]/div[2]/div[4]/div/a[2]
    # Sleep  2s
    # # Edit Email
    # Input Text  xpath=//*[@id="wrapper"]/section/div/div/div[2]/div/div[3]/div[2]/input  ${email}  clear=True
    # # Edit Career
    # Input Text  xpath=//*[@id="wrapper"]/section/div/div/div[2]/div/div[3]/div[3]/input  ${job}  clear=True
    # # Save
    # Click Button  xpath=//*[@id="wrapper"]/section/div/div/div[2]/div/div[5]/button  
    # # Sleep  2s
    # # Click Element  xpath=//*[@id="wrapper"]/footer/div/a[4]
    Sleep  ${timeout}
    Close Browser
*** Keywords ***


    
*** Variables ***
${login_url}  https://vietdevshop.herokuapp.com/login/
${update_url}  https://vietdevshop.herokuapp.com/my-account/
${username}  tranviet
${password}  admin123@
${job}  Fullstack-Developer
${email}  viet.tran@paradox.ai
${timeout}  5