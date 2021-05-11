*** Settings ***
Documentation       FR10_01_ViewRelatedStakeholder_MainScenario
Library             SeleniumLibrary
Resource            ../../Resources/Audits/keywords.robot
Resource            ../../Repository/StakeholderEntity/FR1-FR4_CaptureStakeEntity-CaptureAssocEntities_Keywords.robot
Resource            ../../Repository/StakeholderEntity/FR6-FR15_CaptureContractorQuestion-ContractorChecklist_Keywords.robot
Resource            ../../Resources/Audits/vars.robot
Resource            ../../Resources/StakeholderEntity/SE_Vars.robot
Resource            ../../Resources/StakeholderEntity/SE_Keywords.robot
Suite Teardown      Close Browser
Force Tags          behavior-driven

*** Test Cases ***
FR10_01_ViewRelatedStakeholder_MainScenario
    Launch IsoMetrix Application
    Login with Valid Credentials
    ValidateSiteVersion
    Navigate to Stakeholder Entity
    Capture Contractor Orders_MS
    View Related Stakeholder_MS
    Close Browser

*** Keywords ***