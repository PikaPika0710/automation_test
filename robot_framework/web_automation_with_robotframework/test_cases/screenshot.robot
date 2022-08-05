*** Settings ***
Library   OperatingSystem
Library   SeleniumLibrary
*** Test Cases ***
Screen shot
    open browser    ${bunbobae_url}    ${browser}

    capture element screenshot  //*[@id="genesis-content"]/article/div/div[1]/ul  ../images/foods.png

    capture page screenshot  ../images/webpage.png

    close browser

*** Variables ***

${bunbobae_url}    https://bunbobae.com/
${browser}      chrome



