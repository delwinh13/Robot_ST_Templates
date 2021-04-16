*** Settings ***
Documentation       FR1_01-02_UpdateStakeholderDetails_AlternateScenario1
Library             SeleniumLibrary
Resource            ../../Resources/Audits/keywords.robot
Resource            ../../Repository/StakeholderIndividual/FR1_CaptureStakeholderIndividual_Keywords.robot
Resource            ../../Resources/Audits/vars.robot
Suite Teardown      Close Browser
Force Tags          behavior-driven

*** Test Cases ***
FR1_01-02_UpdateStakeholderDetails_AlternateScenario1
    Launch IsoMetrix Application
    Login with Valid Credentials
    ValidateSiteVersion
    Navigate to Stakeholder Individual
    Stakeholder Individual Add Button
    Stakeholder Individual Enter Details_AS2
    Update Stakeholder Details_AS1
    Close Browser

*** Keywords ***