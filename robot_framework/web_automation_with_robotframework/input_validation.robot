*** Settings ***
Library   OperatingSystem
Library   SeleniumLibrary
*** Test Cases ***
ValidationTest
    open browser    ${url}    ${browser}
    wait until page contains    ${url}
    maximize browser window

    ${expected_title}    set variable    Zing ID - Zing Passport - Tài khoản Zing của VNG
    title should be    ${expected_title}
    ${username_input}    set variable    //input[@name='u']
    element should be enabled    ${username_input}
    element should be visible    ${username_input}

    sleep   ${time_out}
    input text    ${username_input}    ${username}    clear=True
    ${password_input}    set variable    //input[@name='p']
    input text    ${password_input}    ${password}

    sleep   ${time_out}
    clear element text    ${username_input}
    clear element text    ${password_input}
    sleep    ${time_out}
    close browser

*** Variables ***
${url}    https://id.zing.vn/
${browser}      chrome
${time_out}    2
${username}    tydeptrai12345
${password}    helloworld

