*** Settings ***

Documentation       This file contains keywords and variables for the dashboard page
Library             SeleniumLibrary         implicit_wait=15s


*** Variables ***
${CAMPAIGN_BUTTON}               //*[@id="main-nav"]/ul/li[3]/div
${DASHBOARD_URL}                 https://app.autopilothq.com/#dashboard
${CAMPAIGN_PAGE_HEADING}         //*[@id="ap3-campaigns-ui"]/div/div[2]/div/div[2]/div[1]/h4[1]
${CAMPAIGN_WINDOW_TITLE}         Campaigns - Autopilot

*** Keywords ***
User can navigate to campaign page
    sleep                                4s
    Wait Until Element Is Visible        ${CAMPAIGN_BUTTON}
    Click Element                        ${CAMPAIGN_BUTTON}
    sleep                                8s
    Select Window                        ${CAMPAIGN_WINDOW_TITLE}


