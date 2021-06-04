*** Settings ***
Documentation       FR3_01_AddActionExtensionRequest_MainScenario
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
FR3_01_AddActionExtensionRequest_MainScenario
    Launch IsoMetrix Application
    Login with Valid Credentials
    ValidateSiteVersion
    Navigate to Ad-Hoc Actions Module
    Ad-Hoc Actions Add Button
    Capture Ad-Hoc Actions
    Capture Actions_MS_Initiated
    Add Action Extension Request_MS
    Close Browser

FR3_01_AddActionExtensionRequest_MainScenario Notification
    FR3_Action_ExtensionRequestNotification
    Close Browser

*** Keywords ***