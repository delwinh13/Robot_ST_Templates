*** Settings ***
Documentation       FR6_01_OverdueActions_MainScenario
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
FR6_01_OverdueActions_MainScenario
    Launch IsoMetrix Application
    Login with Valid Credentials
    ValidateSiteVersion
    Overdue Actions_MS
    Close Browser

*** Keywords ***
