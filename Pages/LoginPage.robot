*** Settings ***

Documentation       This is a basic test
Library             SeleniumLibrary


*** Variables ***
${EMAIL_FIELD}                //input[@name="email"]
${PASSWORD_FIELD}             //input[@name="password"]
${EMAIL_VAL}
${PASSWORD_VAL}
${PASSWORD_FIELD}             //input[@name="password"]
${LOGIN_BUTTON}               //input[@value="Login"]
${BROWSER}                    Chrome

*** Keywords ***
User can log in
    [Documentation]         As a user I can open the home page and see the tagline
    open browser                       https://login.autopilothq.com/login    ${BROWSER}
    wait until page contains           Login to Autopilot
    Input Text                         ${EMAIL_FIELD}           ${EMAIL_VAL}
    Input Text                         ${PASSWORD_FIELD}        ${PASSWORD_VAL}
    Click Element                      ${LOGIN_BUTTON}