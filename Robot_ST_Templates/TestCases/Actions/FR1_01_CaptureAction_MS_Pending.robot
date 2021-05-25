*** Settings ***
Documentation       FR1_01_CaptureAction_MainScenario_Pending
Library             SeleniumLibrary
Resource            ../../Resources/Audits/keywords.robot
Resource            ../../Repository/Actions/FR1_CaptureActions_Keywords.robot
Resource            ../../Resources/Audits/vars.robot
Resource            ../../Resources/Actions/Actions_vars.robot
Suite Teardown      Close Browser
Force Tags          behavior-driven

*** Test Cases ***
FR1_01_CaptureAction_MainScenario_Pending
    Launch IsoMetrix Application
    Login with Valid Credentials
    ValidateSiteVersion
    Navigate to Ad-Hoc Actions Module
    Ad-Hoc Actions Add Button
    Capture Ad-Hoc Actions
    Capture Actions_MS_Pending
    Close Browser

FR1_01_CaptureAction_MS_Logged Notification
    FR1_Action_LoggedNotification
    Close Browser

FR1_01_CaptureAction_MS_Pending Notification
    FR1_Action_PendingNotification
    Close Browser

*** Keywords ***