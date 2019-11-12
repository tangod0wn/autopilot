*** Settings ***

Documentation       Campaign creation test
Library             SeleniumLibrary
Resource            ../Pages/LoginPage.robot
Resource            ../Pages/DashboardPage.robot
Resource            ../Pages/CampaignPage.robot

*** Variables ***


*** Test Cases ***
campaign creation E2E_journey
    [Documentation]  E2E test to cover multiple scenarios in the campaign creation journey
    User can log in and reach the dashboard page
    User can navigate to campaign page
    User can create a new campaign
    Test validation for required fields
    Test Email validation
    Fill out campaign setup form
