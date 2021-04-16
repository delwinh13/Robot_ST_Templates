*** Settings ***
Documentation       FR2_01_CaptureTopicIssueAssessment_MainScenario
Library             SeleniumLibrary
Resource            ../../Resources/Audits/keywords.robot
Resource            ../../Repository/StakeholderIndividual/FR1_CaptureStakeholderIndividual_Keywords.robot
Resource            ../../Repository/StakeholderIndividual/FR2-FR6_TopicIssue-ViewRelatedAssessment_Keywords.robot
Resource            ../../Resources/Audits/vars.robot
Suite Teardown      Close Browser
Force Tags          behavior-driven

*** Test Cases ***
FR2_01_CaptureTopicIssueAssessment_MainScenario
    Launch IsoMetrix Application
    Login with Valid Credentials
    ValidateSiteVersion
    Navigate to Stakeholder Individual
    Stakeholder Individual Add Button
    Stakeholder Individual Enter Details_AS2
    Update Stakeholder Details_MS
    Update Stakeholder Analysis
    Capture Topic_Issue Assessment
    Close Browser

*** Keywords ***