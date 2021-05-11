*** Settings ***
Documentation       FR1_01_CaptureStakeEntity_AlternateScenario2
Library             SeleniumLibrary
Resource            ../../Resources/Audits/keywords.robot
Resource            ../../Repository/StakeholderEntity/FR1-FR4_CaptureStakeEntity-CaptureAssocEntities_Keywords.robot
Resource            ../../Resources/Audits/vars.robot
Suite Teardown      Close Browser
Force Tags          behavior-driven

*** Test Cases ***
FR1_01_CaptureStakeEntity_AlternateScenario2
    Launch IsoMetrix Application
    Login with Valid Credentials
    ValidateSiteVersion
    Navigate to Stakeholder Entity
    Stakeholder Entity Add Button
    Stakeholder Entity Enter Details_AS2
    Close Browser

*** Keywords ***