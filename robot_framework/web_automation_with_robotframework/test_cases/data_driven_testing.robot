*** Settings ***
Resource  ../resources/resouces.robot

Suite Setup     Open My Browser
Suite Teardown  Close All My Browsers
#Test Template   Invalid Test
Test Template   Valid Test
*** Test Cases ***             username             password
#Invalid
right username wrong pwd       admin@yourstore.com  user
wrong username right pwd       user@yourstore.com   admin
wrong username wrong pwd       user@yourstore.com   user
empty username empty pwd       ${EMPTY}             ${EMPTY}
#Valid
right username right pwd       admin@yourstore.com  admin
*** Keywords ***
Invalid Test
    [Arguments]         ${username}  ${password}
    Login to webpage    ${username}    ${password}
    Click login button
    Error message should be visible
#    Dashboard page should be visible

Valid Test
    [Arguments]         ${username}  ${password}
    Login to webpage    ${username}    ${password}
    Click login button
    Dashboard page should be visible