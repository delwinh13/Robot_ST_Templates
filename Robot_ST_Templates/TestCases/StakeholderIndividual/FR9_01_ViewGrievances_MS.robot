*** Settings ***
Documentation       FR9_01_View Grievances_MainScenario
Library             SeleniumLibrary
Resource            ../../Resources/Audits/keywords.robot
Resource            ../../Repository/StakeholderIndividual/FR1_CaptureStakeholderIndividual_Keywords.robot
Resource            ../../Repository/StakeholderIndividual/FR2-FR6_TopicIssue-ViewRelatedAssessment_Keywords.robot
Resource            ../../Repository/StakeholderIndividual/FR7-FR12AddEngagements-ViewResettlementProjects_Keywords.robot
Resource            ../../Resources/Audits/vars.robot
Suite Teardown      Close Browser
Force Tags          behavior-driven

*** Test Cases ***
FR9_01_View Grievances_MainScenario
    Launch IsoMetrix Application
    Login with Valid Credentials
    ValidateSiteVersion
    Navigate to Stakeholder Individual
    View Grievances_MS
    Close Browser

*** Keywords ***