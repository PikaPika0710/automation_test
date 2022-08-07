*** Settings ***
Library   OperatingSystem
Library   SeleniumLibrary
Library    XML
*** Test Cases ***
Table Test
    open browser    ${url}    ${browser}
    maximize browser window
    ${rows}  get element count  ${table}/tbody/tr

    ${columns}  get element count  ${table}/tbody/tr/th

    log to console  ${rows}
    log to console  ${columns}

#    get element data
    ${data}  get text  ${table}/tbody/tr[6]/td[1]
    log to console  ${data}

    ${data}  get text  ${table}/tbody/tr[6]/td[3]
    log to console  ${data}

    table column should contain  ${table}   1       BookName
    table row should contain  ${table}      5       Master In Selenium
    table cell should contain  ${table}     4   3   Javascript
    table header should contain  ${table}           Subject



    close browser
*** Variables ***

${url}    https://testautomationpractice.blogspot.com/
${browser}      chrome
${table}  //table[@name='BookTable']



