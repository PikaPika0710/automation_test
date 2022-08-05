*** Settings ***
Library   SeleniumLibrary
Library   OperatingSystem

Task Setup    open browser
Task Teardown    close browser
*** Test Cases ***
practice form
    comment    Complete Selenium - Automation Practice Form
    go to    ${demo_url}
    maximize browser window

    input text    ${first_name}    Tran
    input text    ${last_name}    Viet

    select radio button    group_name=sex  value=Male
    select radio button    group_name=exp  value=6

    input text    ${date}    7/10/2001

    select checkbox    ${profession}

    choose file    ${photo}    ${file_path}

    FOR    ${flavour}    IN    @{flavours}
        select checkbox    //input[@value='${flavour}']
    END

    select from list by label    ${continents}    Europe

    select from list by label    ${commands}    Navigation Commands

    log to console    COMPLETE FILLING THE FORM
    sleep    5
*** Keywords ***

*** Variables ***
${demo_url}    https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm
${first_name}    //input[@name='firstname']
${last_name}    //input[@name='lastname']
${profession}  //input[@value='Automation Tester']
${date}     //*[@id="mainContent"]/div[4]/div/form/table/tbody/tr[5]/td[2]/input
${photo}    //input[@name='photo']
${file_path}    /home/congviet/Downloads/paradox.png
@{flavours}    RC   Selenium IDE    Selenium Webdriver
${continents}    //select[@name='continents']
${commands}    //select[@name='selenium_commands']