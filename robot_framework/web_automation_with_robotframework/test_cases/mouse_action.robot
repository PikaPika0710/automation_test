*** Settings ***
Library   OperatingSystem
Library   SeleniumLibrary
*** Test Cases ***
Scroll Test
    open browser    ${vietnam_url}    ${browser}
    maximize browser window

    open context menu  //button[normalize-space()='Copy Text']
    sleep  3

    double click element  //button[normalize-space()='Copy Text']
    sleep  3

    drag and drop  //img[@alt='the peaks of high tatras']   //div[@id='trash']
    drag and drop  //img[@alt='The chalet at the Green mountain lake']  //div[@id='trash']

    sleep  3
    close browser
*** Variables ***

${vietnam_url}    https://testautomationpractice.blogspot.com/
${browser}      chrome



