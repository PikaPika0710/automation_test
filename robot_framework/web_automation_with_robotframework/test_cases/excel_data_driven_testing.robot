*** Settings ***
Resource  ../resources/resouces.robot
Library  DataDriver     ../resources/data.xlsx

Suite Setup     Open My Browser
Suite Teardown  Close All My Browsers
Test Template   Invalid Test
*** Test Cases ***
LoginTestUsingExcel using ${p_username} and ${p_password}

*** Keywords ***
Invalid Test
    [Arguments]         ${p_username}    ${p_password}
    Login to webpage    ${p_username}    ${p_password}
    Click login button
    Error message should be visible
