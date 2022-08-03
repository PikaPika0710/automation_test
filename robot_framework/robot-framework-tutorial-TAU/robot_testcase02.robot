*** Settings ***

*** Test Cases ***
TEST CASE 1
    # Set value for variable
    ${nick_name} =  Set Variable  Viet
    # Create a new keyword and passing parameters
    Print Profile  ${nick_name}  Tran  Developer  https://www.facebook.com/pikapika0710
    # Change value of variable using keyword
    ${nick_name} =  Change Nickname  ${nick_name}  VietDev
    # Using keyword to update the value
    Print Profile  ${nick_name}  Tran  Developer  https://www.facebook.com/pikapika0710

TEST CASE 2
    # Find a sum using keyword
    ${sum} =  Add  2  3
    # Check if correct result returned
    Should Be Equal As Integers  ${sum}  6

*** Keywords ***
Print Profile
    [Arguments]  ${first_name}  ${last_name}  ${job}  ${facebook}
    Log To Console    \n  
    Log to Console    First Name: ${first_name}
    Log To Console    Last name: ${last_name}
    Log To Console    Job: ${job}
    Log To Console    Facebook: ${facebook}
    
Change Nickname
    [Arguments]  ${nickname}  ${new_nickname}
    [Return]  ${new_nickname}
Add 
    [Arguments]  ${first_num}  ${second_num}
    ${value} =  Evaluate  ${first_num} + ${second_num}
    [Return]  ${value}



