*** Settings ***
Documentation       FR4_01_SignOffanAction_MainScenario
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
FR2_01_CaptureActionFeedback_AlternateScenario2
    Launch IsoMetrix Application
    Login with Valid Credentials
    ValidateSiteVersion
    Navigate to Ad-Hoc Actions Module
    Ad-Hoc Actions Add Button
    Capture Ad-Hoc Actions
    Capture Actions_MS_Initiated
    Capture Action Feedback_AS2
    Close Browser

FR4_01_SignOffanAction_MainScenario
    Launch IsoMetrix Application
    Login with Valid Credentials_Ian
    ValidateSiteVersion
    Navigate to Ad-Hoc Actions Module
    Sign Off an Action_MS
    Close Browser

FR4_01_SignOffAccepted_MS_Notification
    FR4_01_Action_SignOffAcceptedNotification
    Close Browser

FR4_01_Completed_MS_Notification
    FR4_01_Action_CompletedNotification
    Close Browser


*** Keywords ***