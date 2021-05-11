*** Settings ***
Documentation       FR1_02_UpdateStakeholderEntityDetails_Contractor_MainScenario
Library             SeleniumLibrary
Resource            ../../Resources/Audits/keywords.robot
Resource            ../../Repository/StakeholderEntity/FR1-FR4_CaptureStakeEntity-CaptureAssocEntities_Keywords.robot
Resource            ../../Resources/Audits/vars.robot
Suite Teardown      Close Browser
Force Tags          behavior-driven

*** Test Cases ***
FR1_02_UpdateStakeholderEntityDetails_Contractor_MainScenario
    Launch IsoMetrix Application
    Login with Valid Credentials
    ValidateSiteVersion
    Navigate to Stakeholder Entity
    Stakeholder Entity Add Button
    Stakeholder Entity Enter Details_AS2
    Update Stakeholder Entity Details_Community_Contractor
    Update Stakeholder Entity Details_Contractor
    Close Browser

*** Keywords ***