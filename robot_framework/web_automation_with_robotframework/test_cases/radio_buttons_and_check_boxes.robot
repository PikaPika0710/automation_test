*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
*** Test Cases ***
Radio button and checkboxes test
    open browser    ${demo_url}    ${browser}
    maximize browser window
    set selenium speed    ${time_out}
    select radio button    sex     Male
    ${value} =    make value    Manual Tester
    select checkbox    ${value}
#    select checkbox    make value    Automation Tester
#    unselect checkbox    make value    Manual Tester
#
#    FOR    ${flavour}    IN    @{flavours}
#        select checkbox      make value    ${flavour}
#    END

    close browser
*** Variables ***
${demo_url}    https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm
${browser}  chrome
@{flavours}    RC   Selenium IDE    Selenium Webdriver
${time_out}    1
*** Keywords ***
make value
    [Arguments]    ${value}
    [Return]       //input[@value='${value}']

