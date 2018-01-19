*** Setting ***
Library  Selenium2Library

*** Variables ***
${BROWSER}  chrome
${GOOGLE URL}   https://www.facebook.co.th

*** Keywords ***
Open Facebook With Chrome
    Open Browser    ${GOOGLE URL}   ${BROWSER}
    Wait Until Page Contains    facebook

Login Facebook Valid Case
     [Arguments]                 ${email}            ${password}
    Input Text                  //*[@id="email"]    lukkade_babysza@hotmail.com
    Input Password              //*[@id="pass"]     ST5731301072
    Click Button                //*[@id="u_0_a"]
    Wait Until Page Contains    Sirin    10

Close Chrome
    Close All Browsers

Open Facebook With Chrome
    Open Browser    ${GOOGLE URL}   ${BROWSER}
    Wait Until Page Contains    facebook

Login Facebook Invalid Case
    [Arguments]                 ${email}            ${password}
    Input Text                  //*[@id="email"]    lukkade_babysza@hotmail.com
    Input Password              //*[@id="pass"]     ST5731312312
    Click Button                //*[@id="u_0_a"]

Close Chrome
    Close All Browsers

Open Facebook With Chrome
    Open Browser    ${GOOGLE URL}   ${BROWSER}
    Wait Until Page Contains    facebook

Login Facebook Invalid Case In Wrong Email Case
    [Arguments]                 ${email}            ${password}
    Input Text                  //*[@id="email"]    lukkade_babysza@gmail.com
    Input Password              //*[@id="pass"]     ST5731301072
    Click Button                //*[@id="u_0_a"]

Close Chrome
    Close All Browsers

Open Facebook With Chrome
    Open Browser    ${GOOGLE URL}   ${BROWSER}
    Wait Until Page Contains    facebook

Login Facebook Invalid Case
    [Arguments]                 ${email}            ${password}
    Input Text                  //*[@id="email"]    lukkade_babysza@gmail.com
    Input Password              //*[@id="pass"]     ST5731312312
    Click Button                //*[@id="u_0_a"]

Close Chrome
    Close All Browsers



*** Test Cases ***
Verify that Login Facebook Success
    Open Facebook With Chrome
    Login Facebook Valid Case     username    password
    Close Chrome

Verify that Login Facebook Not Success
    Open Facebook With Chrome
    Login Facebook Invalid Case   username    password
    Close Chrome

Verify that Login Facebook Not Success
    Open Facebook With Chrome
    Login Facebook Invalid Case   username    password
    Close Chrome

Verify that Login Facebook Not Success
    Open Facebook With Chrome
    Login Facebook Invalid Case   username    password
    Close Chrome