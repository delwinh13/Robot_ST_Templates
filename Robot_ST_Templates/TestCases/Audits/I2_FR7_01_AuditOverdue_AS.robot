*** Settings ***
Documentation       FR7_01_AuditOverdue_AlternateScenario
Library             SeleniumLibrary
Library             BuiltIn
Resource            ../../Resources/Audits/keywords.robot
Resource            ../../Repository/Audits/FR1_Capture Audit_Keywords.robot
Resource            ../../Repository/Audits/FR2-3_Capture Audit Team-Start Audit_Keywords.robot
Resource            ../../Repository/Audits/FR4-6_Capture Audit Findings-Related Risks_Incidents_Keywords.robot
Resource            ../../Repository/Audits/FR7-9_Audit Overdue-Actions-SignOff_Keywords.robot
Resource            ../../Resources/Audits/vars.robot
Suite Teardown      Close Browser
Force Tags          behavior-driven

*** Test Cases ***
FR7_01_AuditOverdue_AlternateScenario
#    [Tags]    Flatlist
    Audits_Overdue Notification

*** Keywords ***