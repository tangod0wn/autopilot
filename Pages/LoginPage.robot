*** Settings ***

Documentation       This file contains keywords and variables for the login page
Library             SeleniumLibrary


*** Variables ***
${EMAIL_FIELD}                //input[@name="email"]
${PASSWORD_FIELD}             //input[@name="password"]
${EMAIL_VAL}                  your@emailaddres.com
${PASSWORD_VAL}               yourpassword
${PASSWORD_FIELD}             //input[@name="password"]
${LOGIN_BUTTON}               //input[@value="Login"]
${DASHBOARD_URL}              https://app.autopilothq.com/
${BROWSER}                    Chrome


*** Keywords ***
User can log in and reach the dashboard page
    [Documentation]                    When I enter valid credentials, I can login and reach the dashboard page
    open browser                       https://login.autopilothq.com/login    ${BROWSER}
    wait until page contains           Login to Autopilot
    Input Text                         ${EMAIL_FIELD}           ${EMAIL_VAL}
    Input Text                         ${PASSWORD_FIELD}        ${PASSWORD_VAL}
    Click Element                      ${LOGIN_BUTTON}
    Location Should Contain            ${DASHBOARD_URL}