*** Settings ***
Documentation       FR3_01_StartAudit_MS
Library             SeleniumLibrary
Library             BuiltIn
Resource            ../../Resources/Audits/keywords.robot
Resource            ../../Repository/Audits/FR1_Capture Audit_Keywords.robot
Resource            ../../Repository/Audits/FR2-3_Capture Audit Team-Start Audit_Keywords.robot
Resource            ../../Resources/Audits/vars.robot
Suite Teardown      Close Browser
Force Tags          behavior-driven

*** Test Cases ***
FR1_01-01_CaptureAudit_AlternateScenario2
#    [Tags]    Flatlist
    Launch IsoMetrix Application
    Login with Valid Credentials
    ValidateSiteVersion
    Navigate to Audits
    Audits Add Button
    Audits Enter Details_FR1 01-01: Capture Audit_AS2

FR1_01-02_UpdateAudit_Main_Alternate_OptionalScenarios
#    [Arguments]    ${AS2Test}
#    Run Keyword If          "${AS2Test}"=="PASS"        FR1_01-02_UpdateAudit_MS_AS1_OS
    Update Audit_MS_AS1_OS
    Close Browser

FR1_01_03_AuditManagerUpdatesAudit_MS
    Launch IsoMetrix Application
    Login with Valid Credentials_Admin
    ValidateSiteVersion
    Navigate to Audits
    Audit Manager Updates Audit_MS

FR3_01_StartAudit_MS
    Start Audit

*** Keywords ***