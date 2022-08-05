*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem


*** Test Cases ***
SEARCH TEST CASE
    Open Browser  ${chrome_url}  chrome
    Input Text  xpath=//input[@class='gLFyf gsfi']  Facebook
    Click Element  xpath=//div[@class='FPdoLc lJ9FBc']/center/input[1]
    Input Text  xpath=//input[@class='gLFyf gsfi']  Instagram  clear=True
    Click Element  xpath=//button[@class='Tg7LZd']
    
*** Variables ***
${chrome_url}  https://www.google.com