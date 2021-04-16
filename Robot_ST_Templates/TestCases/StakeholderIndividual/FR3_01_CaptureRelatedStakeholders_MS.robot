*** Settings ***
Documentation       FR3_01_CaptureRelatedStakeholders_MainScenario
Library             SeleniumLibrary
Resource            ../../Resources/Audits/keywords.robot
Resource            ../../Repository/StakeholderIndividual/FR1_CaptureStakeholderIndividual_Keywords.robot
Resource            ../../Repository/StakeholderIndividual/FR2-FR6_TopicIssue-ViewRelatedAssessment_Keywords.robot
Resource            ../../Resources/Audits/vars.robot
Suite Teardown      Close Browser
Force Tags          behavior-driven

*** Test Cases ***
FR3_01_CaptureRelatedStakeholders_MainScenario
    Launch IsoMetrix Application
    Login with Valid Credentials
    ValidateSiteVersion
    Navigate to Stakeholder Individual
    Stakeholder Individual Add Button
    Stakeholder Individual Enter Details_AS1
    Update Stakeholder Details_MS
    Capture Related Stakeholders_MS
    Close Browser

*** Keywords ***