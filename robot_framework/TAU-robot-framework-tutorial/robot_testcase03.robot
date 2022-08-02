*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***
Check invoice manager contained in page
    Comment  ${comment}
    Open Browser  ${url}  chrome
    Page Should Contain    ${phrase}
*** Keywords ***

*** Variables ***
${phrase}  Invoice Manager 
${comment}  This is the comment for checking ${phrase} contained in page
${url}  http://34.225.240.91/