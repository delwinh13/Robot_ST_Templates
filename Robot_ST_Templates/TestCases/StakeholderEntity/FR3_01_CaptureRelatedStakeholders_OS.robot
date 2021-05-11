*** Settings ***
Documentation       FR3_01_CaptureRelatedStakeholders_OptonalScenario
Library             SeleniumLibrary
Resource            ../../Resources/Audits/keywords.robot
Resource            ../../Repository/StakeholderEntity/FR1-FR4_CaptureStakeEntity-CaptureAssocEntities_Keywords.robot
Resource            ../../Resources/Audits/vars.robot
Suite Teardown      Close Browser
Force Tags          behavior-driven

*** Test Cases ***
FR3_01_CaptureRelatedStakeholders_OptonalScenario
    Launch IsoMetrix Application
    Login with Valid Credentials
    ValidateSiteVersion
    Navigate to Stakeholder Entity
    Stakeholder Entity Add Button
    Stakeholder Entity Enter Details_MS
    Update Stakeholder Entity Details_Community
    Capture Related Stakeholders_MS
    Capture Related Stakeholders_OS
    Close Browser

*** Keywords ***