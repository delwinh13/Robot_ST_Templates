*** Settings ***
Documentation       FR26_01_ViewReports_MainScenario
Library             SeleniumLibrary
Resource            ../../Resources/Audits/keywords.robot
Resource            ../../Repository/StakeholderEntity/FR1-FR4_CaptureStakeEntity-CaptureAssocEntities_Keywords.robot
Resource            ../../Repository/StakeholderEntity/FR6-FR15_CaptureContractorQuestion-ContractorChecklist_Keywords.robot
Resource            ../../Repository/StakeholderEntity/FR16-FR26_ViewRelatedAssessment-ViewReports_Keywords.robot
Resource            ../../Resources/Audits/vars.robot
Resource            ../../Resources/StakeholderEntity/SE_Vars.robot
Resource            ../../Resources/StakeholderEntity/SE_Keywords.robot
Suite Teardown      Close Browser
Force Tags          behavior-driven

*** Test Cases ***
FR26_01_ViewReports_MainScenario
    Launch IsoMetrix Application
    Login with Valid Credentials
    ValidateSiteVersion
    Navigate to Stakeholder Entity
    View Stakeholder Entity Report_MS
    Close Browser

*** Keywords ***