*** Settings ***
Library   SeleniumLibrary
Library   OperatingSystem
*** Test Cases ***
dropdown testcase
    open browser    ${demo_url}    ${browser}
    maximize browser window
    set selenium speed    ${time_out}
    select from list by label       //select[@name='continents']        South America
    select from list by index       //select[@name='continents']        3
    close browser
*** Keywords ***

*** Variables ***
${demo_url}    https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm
${browser}  chrome
${time_out}    1
