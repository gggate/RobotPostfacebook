*** Settings ***
Documentation   test open google on chrome and input text search
...             search
Library    Selenium2Library

*** Variables ***
${BROWSER}    chrome
${GOOGLE URL}    http://www.google.com

*** Keywords ***
Open Google
    Open Browser    ${GOOGLE URL}    ${BROWSER}

Input Text Something
    Input Text    lst-ib    That's How We do

Click Google Search Button
    Press Key    lst-ib    \\13

Page Should Be Display Keywords
    Wait Until Page Contains    Teen Beach 2

Close Browser
    Close All Browsers

*** Test Cases ***
Verify that google search
    Open Google
    Input Text Something
    Click Google Search Button
    Page Should Be Display Keywords
    Close Browser


