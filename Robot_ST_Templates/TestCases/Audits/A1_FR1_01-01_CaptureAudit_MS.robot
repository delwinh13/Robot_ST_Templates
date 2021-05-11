*** Settings ***
Documentation       FR1_01-01_CaptureAudit_MainScenario
Library             SeleniumLibrary
#Library             DataDriver   ../TestData/FR1_01-01_CaptureAudit_MS_TestPack.csv
Resource            ../../Resources/Audits/keywords.robot
Resource            ../../Repository/Audits/FR1_Capture Audit_Keywords.robot
Resource            ../../Resources/Audits/vars.robot
Suite Teardown      Close Browser
Force Tags          behavior-driven
#Test Template       Audits Enter Details_FR1 01-01: Capture Audit_MS

*** Test Cases ***
FR1_01-01_CaptureAudit_MainScenario
#    [Arguments]         ${AuditTitleText}       ${AuditScopeText}
#    [Tags]    Flatlist
    Launch IsoMetrix Application
    Login with Valid Credentials
    ValidateSiteVersion
    Navigate to Audits
    Audits Add Button
    Audits Enter Details_FR1 01-01: Capture Audit_MS
    Close Browser

FR1_01-01_CaptureAudit_Logged Notification
    FR1_Audits_LoggedNotification

*** Keywords ***