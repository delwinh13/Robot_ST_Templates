*** Settings ***
Documentation       FR10_01_SignOffApproval_AlternateScenario
Library             SeleniumLibrary
Library             BuiltIn
Resource            ../Resources/Audits/keywords.robot
Resource            ../Repository/Audits/FR1_Capture Audit_Keywords.robot
Resource            ../Repository/Audits/FR2-3_Capture Audit Team-Start Audit_Keywords.robot
Resource            ../Repository/Audits/FR4-6_Capture Audit Findings-Related Risks_Incidents_Keywords.robot
Resource            ../Repository/Audits/FR7-9_Audit Overdue-Actions-SignOff_Keywords.robot
Resource            ../Repository/Audits/FR10-12_Sign Off-View Audit Registers_Keywords.robot
Resource            ../Resources/Audits/vars.robot
Suite Teardown      Close Browser
Force Tags          behavior-driven

*** Test Cases ***
FR1_01-01_CaptureAudit_AlternateScenario2
    Launch IsoMetrix Application
    Login with Valid Credentials
    ValidateSiteVersion
    Navigate to Audits
    Audits Add Button
    Audits Enter Details_FR1 01-01: Capture Audit_AS2

FR1_01-02_UpdateAudit_Main_Alternate_OptionalScenarios
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

FR9_01_AuditAwaitingSignOff_MainScenario
    Audit Awaiting Sign Off

FR10_01_SignOffApproval_AlternateScenario
    Sign Off Approval - No
    Close Browser

FR10_01_SignOffApproval_AS_Notification
    SignOffApproval_No_Notification

*** Keywords ***