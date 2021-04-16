*** Settings ***
Documentation       Correct Username and Password
Library             SeleniumLibrary
Resource            ../Resources/Audits/keywords.robot
Resource            ../Resources/Audits/vars.robot
Suite Teardown      Close Browser

Force Tags          behavior-driven

*** Test Cases ***
Valid Login
    Launch IsoMetrix Application
    Login with Valid Credentials

*** Keywords ***