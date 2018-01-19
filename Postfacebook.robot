*** Settings ***
Library  Selenium2Library

*** Variables ***
${BROWSER}  chrome
${GOOGLE URL}   https://www.facebook.com

*** Keywords ***
Open Facebook With Chrome
    Open Browser    ${GOOGLE URL}   ${BROWSER}
    Wait Until Page Contains    facebook

Login Facebook
     [Arguments]                 ${email}            ${password}
    Input Text                  //*[@id="email"]    lukkade_babysza@hotmail.com
    Input Password              //*[@id="pass"]     ST5731301072
    Click Button                //*[@id="u_0_a"]
    Wait Until Page Contains    Sirin    10

Post Massage In Facebook
	[Tags]   done
	Login Facebook

	Click Element    u_0_1t
	Input Text    u_0_1t    eiei
	Click Button    Post


*** Test Cases ***
Verify that Login Facebook
    Open Facebook With Chrome
    Login Facebook     username    password
    Post Massage In Facebook
