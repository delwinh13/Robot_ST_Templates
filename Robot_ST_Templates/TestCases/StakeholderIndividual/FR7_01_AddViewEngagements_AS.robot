*** Settings ***
Documentation       FR7_01_Add_View Engagements_AlternateScenario
Library             SeleniumLibrary
Resource            ../../Resources/Audits/keywords.robot
Resource            ../../Repository/StakeholderIndividual/FR1_CaptureStakeholderIndividual_Keywords.robot
Resource            ../../Repository/StakeholderIndividual/FR2-FR6_TopicIssue-ViewRelatedAssessment_Keywords.robot
Resource            ../../Repository/StakeholderIndividual/FR7-FR12AddEngagements-ViewResettlementProjects_Keywords.robot
Resource            ../../Resources/Audits/vars.robot
Suite Teardown      Close Browser
Force Tags          behavior-driven

*** Test Cases ***
FR7_01_Add_View Engagements_AlternateScenario
    Launch IsoMetrix Application
    Login with Valid Credentials
    ValidateSiteVersion
    Navigate to Stakeholder Individual
    Add_View Engagements_AS
    Close Browser

*** Keywords ***