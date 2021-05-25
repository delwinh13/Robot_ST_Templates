*** Settings ***
Documentation       FR1_01_CaptureAction_AlternateScenario3
Library             SeleniumLibrary
Resource            ../../Resources/Audits/keywords.robot
Resource            ../../Repository/Actions/FR1_CaptureActions_Keywords.robot
Resource            ../../Resources/Audits/vars.robot
Resource            ../../Resources/Actions/Actions_vars.robot
Suite Teardown      Close Browser
Force Tags          behavior-driven

*** Test Cases ***
FR1_01_CaptureAction_AlternateScenario3
    Launch IsoMetrix Application
    Login with Valid Credentials
    ValidateSiteVersion
    Navigate to Ad-Hoc Actions Module
    Ad-Hoc Actions Add Button
    Capture Ad-Hoc Actions
    Capture Actions_AS3
    Close Browser

*** Keywords ***