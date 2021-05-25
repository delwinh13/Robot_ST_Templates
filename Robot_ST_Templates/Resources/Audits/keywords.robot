*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Audits/vars.robot
Library     DateTime
#Library     SikuliLibrary      mode=NEW


*** Keywords ***
Launch IsoMetrix Application
    Open Browser                        ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    Wait Until Page Contains Element    ${SubmitButtonid}

Login with Valid Credentials
    [Documentation]     Login with Valid Credentials
    SeleniumLibrary.Input Text                          ${Usernameid}  ${Username Value}
    SeleniumLibrary.Input Text                          ${Passwordid}  ${Password Value}
#    [Setup]    Remove Directory    ${OUTPUTDIR}/Results    recursive
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Login-{index}.png
    Click Element                       ${SubmitButtonid}
    Wait Until Page Contains Element    ${SiteName}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Succesful_Login-{index}.png

Login with Valid Credentials_Admin
    [Documentation]     Login with Valid Credentials
    Input Text                          ${Usernameid}  ${Username ValueAdmin}
    Input Text                          ${Passwordid}  ${Password ValueAdmin}
#    [Setup]    Remove Directory    ${OUTPUTDIR}/Results    recursive
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Login-{index}.png
    Click Element                       ${SubmitButtonid}
    Wait Until Page Contains Element    ${SiteName}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Succesful_Login-{index}.png

ValidateSiteVersion
    [Documentation]     This is to validate that the Site is on the correct version
    Wait Until Element Is Visible       ${Sidebarlink}              60 seconds
    click element                       ${Sidebarlink}
    SeleniumLibrary.Get Text                            ${FooterSiteVersion}
    #Log to Console                      ${FooterSiteVersion}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/SiteCorrectVersion-{index}.png
    sleep    1 seconds
    element should be visible           ${Sidebarlink}
    click element                       ${Sidebarlink}
    Select Frame                        ${iFrame}
    #Log to Console      Switched to iFrame
    Wait Until Element Is Visible       ${SolutionsInterface}       60 seconds
    SeleniumLibrary.Get Text                            ${SolutionsInterface}
    #Log to Console                      ${SolutionsInterface}

#*********************************************** Audits Module *********************************************************
Navigate to Audits
    [Documentation]     This will navigate the system to the Audits Module
    #Click on Environment, Health & Safety
    #Log to Console  Click on Environment, Health & Safety
    Wait Until Element Is Visible       ${EHSButton}                60 seconds
    click element                       ${EHSButton}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/EnvironmentHealthSafety-{index}.png
    #Click on Audits Interface Button
    #Log to Console     Click on Audits Interface Button
    Wait Until Element Is Visible       ${AuditsInterfaceButton}     60 seconds
    click element                       ${AuditsInterfaceButton}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/AuditsInterface-{index}.png
    #Click on Audits Module Button
    #Log to Console     Click on Audits Module Button
    Wait Until Element Is Visible       ${AuditsModuleButton}    60 seconds
    sleep       1 second
    click element                       ${AuditsModuleButton}
    Wait Until Element Is Visible       ${AuditsAddButton}       60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/AuditsModule-{index}.png

Audits Add Button
    #Click on Audits Search Button
    #Log to Console     Click on Audits Search Button
    Wait Until Element Is Visible       ${AuditsSearchButton}    40 seconds
    click element                       ${AuditsSearchButton}
#    set selenium speed  10 seconds
    Wait Until Element Is Visible       ${AuditsRecords}         40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/AuditsRecordsVisible-{index}.png
    #Click on Audits Add Button
    #Log to Console     Click on Audits Add Button
    click element                       ${AuditsAddButton}
    Wait Until Element Is Visible       ${AuditsRecordHeader}     40 seconds
    #Audit Protocol & Supporting Documents Tabs
    Wait Until Element Is Visible       ${AuditProtocolTab}       10 seconds
    Wait Until Element Is Visible       ${AuditSupportDocsTab}       10 seconds
    #Introduction & Audit Objective panel
    Wait Until Element Is Visible       ${AuditIntroAuditObjectivePanel}       10 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/AuditsRecord-{index}.png

