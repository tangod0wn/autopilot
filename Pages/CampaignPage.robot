*** Settings ***

Documentation       This file contains keywords and variables for the campaign page
Library             SeleniumLibrary         implicit_wait=15s


*** Variables ***
${NEW_CAMPAIGN_BUTTON}                //*[@id="ap3-campaigns-ui"]/div/div[2]/div/div[2]/div[2]/div[2]/div/a/div/div/div
${NEW_CAMPAIGN_HEADING}               //*[contains(text(), 'Setup')]
${NEXT_BUTTON}                        //*[@id="ap3-campaigns-ui"]/div/div/div/div[1]/div/div[3]/div[2]/button
${CAMPAIGN_WINDOW_TITLE}              Campaign setup - Autopilot
${FORM_VALIDATION_ERROR_MESSAGE}      //*[@id="ap3-campaigns-ui"]/div/div/div/div[1]/div/div[2]/div[2]/div/form/div[1]/p[2][contains(text(), 'Field is required.')]
${EMAIL_VALIDATION_ERROR_MESSAGE}      //*[@id="ap3-campaigns-ui"]/div/div/div/div[1]/div/div[2]/div[2]/div/form/div[5]/p[2][contains(text(), 'Please enter a valid email address.')]

#list of input fields on the page
${CAMPAIGN_NAME_INPUTFIELD}           //*[@id="ap3-campaigns-ui"]/div/div/div/div[1]/div/div[2]/div[2]/div/form/div[1]/div/input
${CAMPAIGN_SUBJECT_INPUTFIELD}        //*[@id="ap3-campaigns-ui"]/div/div/div/div[1]/div/div[2]/div[2]/div/form/div[2]/div[1]/input
${CAMPAIGN_FROM_NAME_INPUTFIELD}      //*[@id="ap3-campaigns-ui"]/div/div/div/div[1]/div/div[2]/div[2]/div/form/div[4]/div/input
${CAMPAIGN_FROM_EMAIL_INPUTFIELD}     //*[@id="ap3-campaigns-ui"]/div/div/div/div[1]/div/div[2]/div[2]/div/form/div[5]/div/input

#test values
${CAMPAIGN_NAME_VALUE}               Novembers newsletter
${CAMPAIGN_SUBJECT_VALUE}            Sale on now!
${CAMPAIGN_FROM_NAME_VALUE}          Snatched
${CAMPAIGN_FROM_EMAIL_VALUE}         invalid@email
${INVALID_EMAIL}                     miketest.com

*** Keywords ***
User can create a new campaign
    Set Selenium Implicit Wait           15s
    sleep                                5s
    Wait Until Element Is Visible        ${NEW_CAMPAIGN_BUTTON}
    Click Element                        ${NEW_CAMPAIGN_BUTTON}
    Select Window                        ${CAMPAIGN_WINDOW_TITLE}
    sleep                                5s
    Wait Until Element Is Visible        ${NEW_CAMPAIGN_HEADING}
    Element Should Be Visible            ${NEW_CAMPAIGN_HEADING}

Test validation for required fields
    Click Element                        ${NEXT_BUTTON}
    Element Should Be Visible            ${FORM_VALIDATION_ERROR_MESSAGE}

Test Email validation
    Input Text                           ${CAMPAIGN_FROM_EMAIL_INPUTFIELD}        ${INVALID_EMAIL}
    Click Element                        ${NEXT_BUTTON}
    Element Should Be Visible            ${EMAIL_VALIDATION_ERROR_MESSAGE}
    sleep                                3s

Fill out campaign setup form
    Clear Element Text                  ${CAMPAIGN_FROM_EMAIL_INPUTFIELD}
    sleep                               4s
    Input Text                         ${CAMPAIGN_NAME_INPUTFIELD}              ${CAMPAIGN_NAME_VALUE}
    Input Text                         ${CAMPAIGN_SUBJECT_INPUTFIELD}           ${CAMPAIGN_SUBJECT_VALUE}
    Input Text                         ${CAMPAIGN_FROM_NAME_INPUTFIELD}         ${CAMPAIGN_FROM_NAME_VALUE}
    Input Text                         ${CAMPAIGN_FROM_EMAIL_INPUTFIELD}        ${CAMPAIGN_FROM_EMAIL_VALUE}
    sleep                              3s
    Click Element                      ${NEXT_BUTTON}