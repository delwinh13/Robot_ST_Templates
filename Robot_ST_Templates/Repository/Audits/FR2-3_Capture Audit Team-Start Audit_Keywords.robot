*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Audits/vars.robot
Library     DateTime

*** Keywords ***
#*********************************************** FR2-01: Capture Audit Team_MS *******************************************
Capture Audit Team
    #Navigate to Audit Team
    Log to Console      Audit Team Tab
    Click Element                           ${AuditTeamTab}
    #Add Button
    Log to Console      Audit Team Add Button
    Wait Until Element Is Visible           ${AuditTeamNoResults}               20 seconds
    Click Element                           ${AuditTeamAddBtn}
    Wait Until Element Is Visible           ${AuditTeamInlineRecord}            10 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/AuditTeam Inline Record Visible-{index}.png
    #Audit Team Enter Data
    Log to Console      Enter Data
    #Full Name
    Click Element                           ${AuditTeamFullNameDD}
    Wait Until Element Is Visible           ${AuditTeamFullNameSelect}          10 seconds
    Click Element                           ${AuditTeamFullNameSelect}
    #Experience/Role
    ${CurrentDate}      Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                 ${CurrentDate}
    Input Text                              ${AuditTeamExperienceRole}          FR2-01: Capture Audit Team_MS ${CurrentDate}
    #Audit Team Start Date
    Log to Console      Audit Team Start Date
    ${CurrentDate}      Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                 ${CurrentDate}
    Click Element                       ${AuditTeamStartDate}
    Input Text                          ${AuditTeamStartDate}                ${CurrentDate}
    #Audit Team End Date
    Log to Console      Audit Team End Date
    ${EndDate}          Get Current Date        result_format=%d/%m/%Y      increment=+7 day
    Set Global Variable     ${EndDate}
    Click Element                       ${AuditTeamEndDate}
    Input Text                          ${AuditTeamEndDate}                  ${EndDate}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Team Start - End Dates-{index}.png
    #Audit Team Save Button
    Log to Console      Save Button
    Click Element                       ${AuditTeamSaveBtn}
    Wait Until Element Is Visible       ${RecordSaved}                      20 seconds
    Wait Until Element Is Visible       ${AuditTeamTab}                     20 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Team Record Saved-{index}.png
    #Open Audit Team Record
    Log to Console      Open Audit Team Record
    Wait Until Element Is Visible       ${AuditTeamOpenRecordIcon}          10 seconds
    Click Element                       ${AuditTeamOpenRecordIcon}
    #Audit Team Record Opened
    Wait Until Element Is Visible       ${AuditTeamBreadcrumb}              10 seconds
    #Process Flow
    Log to Console      Audit Team Process Flow
    Wait Until Element Is Visible       ${AuditTeamProcessFlow}             10 seconds
    Click Element                       ${AuditTeamProcessFlow}
    #Edit Phase
    Wait Until Page Contains Element    ${AuditTeamPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Team Record Opened_Edit Phase-{index}.png
    #Estimated Hours
    Log to Console      Estimated Hours
    Input Text                          ${AuditTeamEstimatedHours}          48
    #Audit Team Save Button
    Log to Console      Audit Team Edit Record Save Button
    Click Element                       ${AuditTeamEditRecordSave}
    Wait Until Element Is Visible       ${AuditTeamRecordSaved}             20 seconds
    Wait Until Element Is Visible       ${AuditTeamBreadcrumb}              10 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Team Record Opened_Estimated Hours-{index}.png
    #Close Button
    Log to Console      Audit Team Close Button
    Click Element                       ${AuditTeamCloseBtn}
    #Audit - Audit Team Tab
    Log to Console      Audit - Audit Team Tab
    Wait Until Element Is Visible       ${AuditTeamRecordFullName}          20 seconds
    sleep       2 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Team Record Closed-{index}.png

FR2_Audit_TeamNotification
    Open Browser    ${Officeurl}  ${BROWSER}
    Maximize Browser Window
    set selenium implicit wait    10 seconds
    #Sign In Button
    Log to Console     Sign In Button
    Click Element                       ${SignInBtn}
    Wait Until Element Is Visible       ${EmailField}               20 seconds
    Input Text                          ${EmailField}               ${outlookusername}
    Wait Until Element Is Visible       ${EmailNext}                20 seconds
    Click Element                       ${EmailNext}
    Wait Until Element Is Visible       ${EmailPasswordField}       20 seconds
    Input Text                          ${EmailPasswordField}       ${outlookpassword}
    Wait Until Element Is Visible       ${EmailSignInBtn}           20 seconds
    Click Element                       ${EmailSignInBtn}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/OfficeEmails-{index}.png
    #Outlook Folder
    Log to Console      Outlook Folder
    Wait Until Element Is Visible       ${Outlook}                  20 seconds
    Click Element                       ${Outlook}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/OutlookFolder-{index}.png
    sleep       15 seconds
    #Switch to Tab
    Switch Window    Mail - Delwin Horsthemke - Outlook
    #System Mail folder
    Log to Console      System Mail folder
    Wait Until Element Is Visible       ${SystemMailFolder}         20 seconds
    sleep       5 seconds
    Click Element                       ${SystemMailFolder}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/OutlookSystemMailFolder-{index}.png
    #Audits - Logged Notification
    Log to Console      Logged Notification
    sleep       3 seconds
    Wait Until Element Is Visible       ${AuditTeamSubject}         60 seconds
    Click Element                       ${AuditTeamSubject}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/AuditTeamAddedEmailSelection-{index}.png
    #Link Back to Record
    Log to Console      Link Back to Record
    Click Element                       ${AuditEmailLinkBacktoRecord}
    sleep       5 seconds
    #Switch window
    Switch Window    IsoMetrix
    #Login to Isometrix Site
    Log to Console      Login to Isometrix Site
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/IsoMetrixTabOpened-{index}.png
    Wait Until Element Is Visible       ${Usernameid}
    Input Text                          ${Usernameid}    ${Username Value}
    Input Text                          ${Passwordid}    ${Password Value}
    Click Element                       ${SubmitButtonid}
    #Wait for Audit Record
    Log to Console      Wait for Audit Record
    set selenium implicit wait    50 seconds
    sleep       20 seconds
    Select Frame                        ${iFrame}
    Wait Until Element Is Visible       ${AuditTeamProcessFlow}           60 seconds
    Click Element                       ${AuditTeamProcessFlow}
    Wait Until Page Contains Element    ${AuditTeamPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/AuditTeamRecordOpened-{index}.png

#*********************************************** FR3_01_StartAudit_MS *******************************************
Start Audit
    #Start Audit Button
    Log to Console      Start Audit Button
    Click Element                       ${AuditStartAuditBtn}
    Wait Until Element Is Visible       ${RecordSaved}                      60 seconds
    #Status & Process Flow changed to In Progress
    Log to Console      Status & Process Flow changed to In Progress
    Wait Until Page Contains Element    ${AuditStatusInProgress}            60 seconds
    Wait Until Page Contains Element    ${AuditPFInProgress_Overdue}        60 seconds
    sleep   1 second
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Record Status - In Progress-{index}.png
