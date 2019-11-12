*** Settings ***

Documentation       This is a basic test
Library             SeleniumLibrary
Resource            ../Pages/LoginPage.robot

*** Variables ***


*** Test Cases ***
campaign creation E2E_journey
    User can log in

