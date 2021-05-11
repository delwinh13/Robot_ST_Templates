*** Settings ***
Documentation       FR6_01_ViewRelatedIncidents_MainScenario
Library             SeleniumLibrary
Library             BuiltIn
Resource            ../../Resources/Audits/keywords.robot
Resource            ../../Repository/Audits/FR1_Capture Audit_Keywords.robot
Resource            ../../Repository/Audits/FR2-3_Capture Audit Team-Start Audit_Keywords.robot
Resource            ../../Repository/Audits/FR4-6_Capture Audit Findings-Related Risks_Incidents_Keywords.robot
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

FR6_01_ViewRelatedIncidents_MainScenario
    View Related Incidents

*** Keywords ***