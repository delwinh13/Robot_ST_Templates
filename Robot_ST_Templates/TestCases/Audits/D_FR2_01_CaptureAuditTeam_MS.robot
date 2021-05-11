*** Settings ***
Documentation       FR2_01_CaptureAuditTeam_MS
Library             SeleniumLibrary
Library             BuiltIn
Resource            ../../Resources/Audits/keywords.robot
Resource            ../../Repository/Audits/FR1_Capture Audit_Keywords.robot
Resource            ../../Repository/Audits/FR2-3_Capture Audit Team-Start Audit_Keywords.robot
Resource            ../../Resources/Audits/vars.robot
Suite Teardown      Close Browser
Force Tags          behavior-driven

*** Test Cases ***
FR1_01-01_CaptureAudit_MainScenario
#    [Tags]    Flatlist
    Launch IsoMetrix Application
    Login with Valid Credentials
    ValidateSiteVersion
    Navigate to Audits
    Audits Add Button
    Audits Enter Details_FR1 01-01: Capture Audit_MS

FR2_01_CaptureAuditTeam_MS
    Capture Audit Team
    Close Browser

FR2_01_CaptureAuditTeam Added Notification
    FR2_Audit_TeamNotification

*** Keywords ***