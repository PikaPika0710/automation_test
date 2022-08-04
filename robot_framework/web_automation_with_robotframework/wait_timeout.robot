*** Settings ***
Library   SeleniumLibrary
Library   OperatingSystem

Task Setup    open browser
Task Teardown    close browser
*** Test Cases ***
wait_timeout testcase
    go to    ${demo_url}
    maximize browser window
#    ${timeout}    get selenium timeout
#    log to console    ${timeout}
#    time out is the time robot will wait for the wait step to execute
#    set selenium timeout    10
#    wait until page contains    Practice Form    #5seconds



    ${wait}    get selenium implicit wait
    log to console    ${wait}
#    implicit wait is the time that robot will wait for the step to be resolve (before throws exception)
    set selenium implicit wait     10

    ${wait}    get selenium implicit wait
    log to console    ${wait}
#    ${timeout}    get selenium timeout
#    log to console    ${timeout}
    input text    //input[@name='firstname1']    Tran

    input text    //input[@name='lastname']    Viet


*** Keywords ***

*** Variables ***
${demo_url}    https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm
${first_name}    //input[@name='firstname']
${last_name}    //input[@name='lastname']
