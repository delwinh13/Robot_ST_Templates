*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Audits/vars.robot
Resource    ../../Resources/StakeholderIndividual/SI_vars.robot
Library     DateTime

*** Keywords ***
#*********************************************** FR1 01-01: Capture Stakeholder Individual_MS *******************************************
Navigate to Stakeholder Individual
    [Documentation]     This will navigate the system to the Stakeholder Individual Module
    #Click on Environment, Health & Safety
    log to console  Click on Environment, Health & Safety
    Wait Until Element Is Visible           ${EHSButton}                    60 seconds
    click element                           ${EHSButton}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Environment Health Safety-{index}.png
    #Click on Stakeholder Management Interface Button
    log to console     Click on Stakeholder Management Interface Button
    Wait Until Element Is Visible           ${StakeholderManagement}        60 seconds
    click element                           ${StakeholderManagement}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Management Interface-{index}.png
    #Click on Stakeholder Individual Module Button
    log to console     Click on Audits Module Button
    Wait Until Element Is Visible           ${StakeholderIndividualBtn}     60 seconds
    sleep       1 second
    click element                           ${StakeholderIndividualBtn}
    Wait Until Element Is Visible           ${SIAddBtn}                     60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Module-{index}.png

Stakeholder Individual Add Button
    #Click on Stakeholder Individual Search Button
    log to console     Click on Audits Search Button
    Wait Until Element Is Visible           ${SISearchButton}               40 seconds
    click element                           ${SISearchButton}
    Wait Until Element Is Visible           ${SIRecords}                    40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Records Visible-{index}.png
    #Click on Stakeholder Individual Add Button
    log to console     Click on Audits Add Button
    click element                           ${SIAddBtn}
    Wait Until Element Is Visible           ${SIRecordHeader}               40 seconds
    #Profile Tab
    Wait Until Element Is Visible           ${SIProfileTab}                 10 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Record-{index}.png