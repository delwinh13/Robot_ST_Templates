*** Settings ***
Documentation       FR2_01_CaptureTopicIssueAssessment_MainScenario
Library             SeleniumLibrary
Resource            ../../Resources/Audits/keywords.robot
Resource            ../../Repository/StakeholderEntity/FR1-FR4_CaptureStakeEntity-CaptureAssocEntities_Keywords.robot
Resource            ../../Resources/Audits/vars.robot
Suite Teardown      Close Browser
Force Tags          behavior-driven

*** Test Cases ***
FR2_01_CaptureTopicIssueAssessment_MainScenario
    Launch IsoMetrix Application
    Login with Valid Credentials
    ValidateSiteVersion
    Navigate to Stakeholder Entity
    Stakeholder Entity Add Button
    Stakeholder Entity Enter Details_MS
    Update Stakeholder Entity Details_Community
    Update Stakeholder Entity Analysis
    Capture Topic Issue Assessment

*** Keywords ***