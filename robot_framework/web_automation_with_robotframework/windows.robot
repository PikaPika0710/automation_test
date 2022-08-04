*** Settings ***
Library   OperatingSystem
Library   SeleniumLibrary
*** Test Cases ***
WindowTest
    open browser    ${url}    ${browser}
    sleep    3
    click link    ${selenium_library}    CTRL
    sleep    3
    switch window    GitHub - robot    framework/SeleniumLibrary: Web testing library for Robot Framework
    sleep    3
    close window
    sleep    3
    close browser

*** Variables ***

${url}    https://robotframework.org/
${browser}      chrome
${selenium_library}    //*[@id="app"]/div[5]/div[3]/div[2]/div/div/div[2]/table/tr[2]/td[1]/a


