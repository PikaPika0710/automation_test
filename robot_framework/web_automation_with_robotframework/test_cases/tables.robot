*** Settings ***
Library   OperatingSystem
Library   SeleniumLibrary
Library    XML
*** Test Cases ***
Table Test
    open browser    ${url}    ${browser}
    maximize browser window
    ${rows}  get element count  //*[@id="HTML1"]/div[1]/table/tbody/tr

    ${columns}  get element count  //*[@id="HTML1"]/div[1]/table/tbody/tr/th

    log to console  ${rows}
    log to console  ${columns}

#    get element data
    ${data}  get text  //*[@id="HTML1"]/div[1]/table/tbody/tr[6]/td[1]
    log to console  ${data}

    ${data}  get text  //*[@id="HTML1"]/div[1]/table/tbody/tr[6]/td[3]
    log to console  ${data}


    close browser
*** Variables ***

${url}    https://testautomationpractice.blogspot.com/
${browser}      chrome



