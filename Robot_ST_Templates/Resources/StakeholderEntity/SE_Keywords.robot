*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Audits/vars.robot
Resource    ../../Resources/StakeholderEntity/SE_Vars.robot
Library     DateTime

*** Keywords ***
#*********************************************** FR1-01: Capture Stakeholder Entity_MS *******************************************
Navigate to Stakeholder Entity
    [Documentation]     This will navigate the system to the Stakeholder Entity Module
    #Click on Environment, Health & Safety
    log to console  Click on Environment, Health & Safety
    Wait Until Element Is Visible                   ${EHSButton}                    60 seconds
    click element                                   ${EHSButton}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Environment Health Safety-{index}.png
    #Click on Stakeholder Management Interface Button
    log to console     Click on Stakeholder Management Interface Button
    Wait Until Element Is Visible                   ${StakeholderManagement}        60 seconds
    click element                                   ${StakeholderManagement}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Management Interface-{index}.png
    #Click on Stakeholder Entity Module Button
    log to console     Click on Stakeholder Entity Module Button
    Wait Until Element Is Visible                   ${StakeholderEntityBtn}         60 seconds
    sleep       1 second
    click element                                   ${StakeholderEntityBtn}
    Wait Until Element Is Visible                   ${SEAddBtn}                     60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Module-{index}.png

Stakeholder Entity Add Button
    #Click on Stakeholder Entity Search Button
    log to console     Click on Stakeholder Entity Search Button
    Wait Until Element Is Visible                   ${SESearchButton}               40 seconds
    click element                                   ${SESearchButton}
    Wait Until Element Is Visible                   ${SERecords}                    40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Records Visible-{index}.png
    #Click on Stakeholder Entity Add Button
    log to console     Click on Stakeholder Entity Add Button
    click element                                   ${SEAddBtn}
    Wait Until Element Is Visible                   ${SERecordHeader}               40 seconds
    #Profile Tab
    Wait Until Element Is Visible                   ${SEProfileTab}                 10 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Record-{index}.png

Supporting Documents
    Sleep       1
    Log to Console      Supporting Documents
    Click Element                                   ${SESupportDocsTab}
    Wait Until Element Is Visible                   ${SESupportDocsLink}                  20 seconds
    Click Element                                   ${SESupportDocsLink}
    #Alert should be present
    Switch Window
    sleep    1 second
    Wait Until Element Is Visible                   ${AuditSupportDocUrl}                           20 seconds
    Input Text                                      ${AuditSupportDocUrl}                           www.isomertix.com
    Input Text                                      ${AuditSupportDocURLTitle}                      Isometrix
    Click Element                                   ${AuditSupportDocURLAdd}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Supporting Documents Link Added.png
    sleep    1 second
    Select Frame                                    ${iFrame}
    #Save supporting documents
    Log to Console      Save supporting documents
    Click Element                                   ${SESavesupportingdocuments}
    Wait Until Element Is Visible                   ${RecordSaved}                                  60 seconds
    Wait Until Page Contains Element                ${SESupportDocsLinkAdded}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Supporting Documents Added.png
