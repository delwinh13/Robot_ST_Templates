*** Settings ***
Documentation       FR5_01_ViewAllActions_MainScenario
Library             SeleniumLibrary
Resource            ../../Resources/Audits/keywords.robot
Resource            ../../Repository/Actions/FR1_CaptureActions_Keywords.robot
Resource            ../../Repository/Actions/FR1_02_AddAction_Recurring_Keywords.robot
Resource            ../../Repository/Actions/FR2_CaptureActionFeedback-FR6_ActionsOverdue_Keywords.robot
Resource            ../../Resources/Audits/vars.robot
Resource            ../../Resources/Actions/Actions_vars.robot
Suite Teardown      Close Browser
Force Tags          behavior-driven

*** Test Cases ***
FR5_01_ViewAllActions_MainScenario
    Launch IsoMetrix Application
    Login with Valid Credentials
    ValidateSiteVersion
    Navigate to Actions Central Module
    Close Browser

*** Keywords ***
