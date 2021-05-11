*** Settings ***
Documentation       FR1_01_CaptureStakeEntity_MainScenario
Library             SeleniumLibrary
Resource            ../../Resources/Audits/keywords.robot
Resource            ../../Repository/StakeholderEntity/FR1-FR4_CaptureStakeEntity-CaptureAssocEntities_Keywords.robot
Resource            ../../Resources/Audits/vars.robot
Suite Teardown      Close Browser
Force Tags          behavior-driven

*** Test Cases ***
FR1_01_CaptureStakeEntity_MainScenario
    Launch IsoMetrix Application
    Login with Valid Credentials
    ValidateSiteVersion
    Navigate to Stakeholder Entity
    Stakeholder Entity Add Button
    Stakeholder Entity Enter Details_MS
    Close Browser

FR1_01_CaptureStakeEntity_MS_Logged Notification
    FR1_StakeEntity_LoggedNotification

*** Keywords ***