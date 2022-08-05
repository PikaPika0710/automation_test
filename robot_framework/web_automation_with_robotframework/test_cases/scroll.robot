*** Settings ***
Library   OperatingSystem
Library   SeleniumLibrary
*** Test Cases ***
Scroll Test
    open browser    ${vietnam_url}    ${browser}
#    execute javascript  window.scroll(0,2000)
#    scroll element into view  //*[@id="mw-content-text"]/div[1]/div[80]/div/a/img
#    go to the end of the page
    execute javascript  window.scroll(0, document.body.scrollHeight)
    sleep  3
#    back to the start
    execute javascript  window.scroll(0, -document.body.scrollHeight)
    sleep  2

    close browser
*** Variables ***

${vietnam_url}    https://en.wikipedia.org/wiki/Vietnam
${browser}      chrome



