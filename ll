*** Settings ***
Library  Collection

*** Variables ***
${Browser}  Firefox
${SiteUrl}  http://localhost:4200/roles

*** Keywords ***
Open Browser to the Login Page
    open browser  ${SiteUrl}    ${Browser}

*** Test Cases ***
LoginTest
    Open Browser to the Login Page
    sleep  ${Delay}
    Asset Dashboard Title
    {Teardown}  Close Browser