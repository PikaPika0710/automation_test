*** Settings ***
Library   OperatingSystem
Library   SeleniumLibrary
*** Test Cases ***
Go to another website
    open browser    ${robotframework_url}    ${browser}
    sleep  3

    go to  ${google_chrome_url}
    sleep  3

    go back
    sleep  3

    close browser

*** Variables ***

${robotframework_url}    https://robotframework.org/
${browser}      chrome
${google_chrome_url}  https://www.google.com/



