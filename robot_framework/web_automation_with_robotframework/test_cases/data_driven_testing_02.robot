*** Settings ***
Resource  ../resources/resouces.robot

Suite Setup     Open My Browser
Suite Teardown  Close All My Browsers
#Test Template   Invalid Test
#Test Template   Valid Test
*** Test Cases ***
#Invalid
right username wrong pwd
    Invalid Test    admin@yourstore.com     user
wrong username right pwd
    Invalid Test    user@yourstore.com      admin
wrong username wrong pwd
    Invalid Test    user@yourstore.com      user
empty username empty pwd
    Invalid Test    ${EMPTY}                ${EMPTY}

#Valid
right username right pwd
    Valid Test      admin@yourstore.com     admin



*** Keywords ***
Invalid Test
    [Arguments]  ${username}  ${password}
    Login to webpage    ${username}    ${password}
    Click login button
    Error message should be visible
#    Dashboard page should be visible

Valid Test
    [Arguments]  ${username}  ${password}
    Login to webpage    ${username}    ${password}
    Click login button
    Dashboard page should be visible