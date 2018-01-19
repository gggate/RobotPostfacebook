*** Settings ***
Documentation    A test suite containing tests related to search some keywords on Google search
...              Created By Phannida P
Library          Selenium2Library
*** Variables ***
${URL}                      https://www.google.co.th
${Browser}                  firefox
${DELAY}                    0
${SearchKeyword}            Fon phannida on medium
${PageContainKeyword}       Fon Phannida — Medium
*** Keywords ***
Open Google Search Page
    open browser              ${URL}    ${Browser}
    Maximize Browser Window
    Set Selenium Speed        ${DELAY}

Search on Google
    input text      lst-ib      ${SearchKeyword}
    press key       lst-ib      \\13 # ASCII code for enter key

Wait for Search Results
    wait until page contains    ${PageContainKeyword}

Close Browser After Finish
    close browser



*** Test Cases ***
Test Case: Search some keywords on Google search
    Open Google Search Page
    Search on Google
    Wait for Search Results
    Close Browser After Finish