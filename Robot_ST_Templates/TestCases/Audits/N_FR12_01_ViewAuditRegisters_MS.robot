*** Settings ***
Documentation       FR12_01_ViewAuditRegisters_MainScenario
Library             SeleniumLibrary
Library             BuiltIn
Resource            ../../Resources/Audits/keywords.robot
Resource            ../../Repository/Audits/FR1_Capture Audit_Keywords.robot
Resource            ../../Repository/Audits/FR2-3_Capture Audit Team-Start Audit_Keywords.robot
Resource            ../../Repository/Audits/FR4-6_Capture Audit Findings-Related Risks_Incidents_Keywords.robot
Resource            ../../Repository/Audits/FR7-9_Audit Overdue-Actions-SignOff_Keywords.robot
Resource            ../../Repository/Audits/FR10-12_Sign Off-View Audit Registers_Keywords.robot
Resource            ../../Resources/Audits/Sikuli.robot
Resource            ../../Resources/Audits/vars.robot
Suite Teardown      Close Browser
Force Tags          behavior-driven

*** Test Cases ***
FR12_01_ViewAuditRegisters_MainScenario
    Launch IsoMetrix Application
    Login with Valid Credentials
    ValidateSiteVersion
    Navigate to Audits
    View_Print Audit Register
    Full_Print Audit Register
#    ViewReports - Word Document
#    ViewReports - Word Document Close
