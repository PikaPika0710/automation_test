*** Settings ***
Library   OperatingSystem
Library   SeleniumLibrary
*** Test Cases ***
WindowTest
    open browser    ${url}    ${browser}
    sleep    3
    click button    ${click_me}
#    OK
    handle alert    accept
#    CANCEL
#    handle alert    dismiss
#    verify the text on the alert window
#    alert should be present    Press a button!
#    alert should not be present    Press a button!

*** Variables ***

${url}    https://testautomationpractice.blogspot.com/
${browser}      chrome
${click_me}    //*[@id="HTML9"]/div[1]/button


