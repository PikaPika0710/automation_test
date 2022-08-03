*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem


*** Test Cases ***
LOGIN TEST CASE
    Comment  Login Viet Dev Shop AutomationTest
    Open Browser  ${login_url}  chrome
    Maximize Browser Window
    Input Text  name=email  ${username}
    Input Password  name=password   ${password}
    Click Button   xpath=//*[@id="wrapper"]/section/div/div/div/div[2]/div/div[6]/button



    # TODO: Change infomation of account
    Sleep  1
    Click Element  xpath=//*[@id="navbar-menu"]/div[2]/div[4]/div/a[2]
    Clear Element Text  xpath=//*[@id="wrapper"]/section/div/div/div[2]/div/div[3]/div[2]/input
    Sleep  2
    Input Text  xpath=//*[@id="wrapper"]/section/div/div/div[2]/div/div[3]/div[2]/input  ${email}  clear=True
    Clear Element Text  xpath=//*[@id="wrapper"]/section/div/div/div[2]/div/div[3]/div[3]/input
    Input Text  xpath=//*[@id="wrapper"]/section/div/div/div[2]/div/div[3]/div[3]/input  ${job}  clear=True
    Sleep  2
    Click Button  xpath=//*[@id="wrapper"]/section/div/div/div[2]/div/div[5]/button
#    Close Browser
*** Keywords ***



*** Variables ***
${login_url}  https://vietdevshop.herokuapp.com/login/
${update_url}  https://vietdevshop.herokuapp.com/my-account/
${username}  tranviet
${password}  admin123@
${job}  Fullstack-Developer
${email}  viet.tran@paradox.ai
${timeout}  5