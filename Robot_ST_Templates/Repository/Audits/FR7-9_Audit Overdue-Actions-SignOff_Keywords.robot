*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Audits/vars.robot
Library     DateTime

*** Keywords ***
#*********************************************** FR7_01_AuditOverdue_MS ************************************************
View Overdue - MainScenario
    #Audit Search Page - Status Dropdown
    Log to Console     Audit Search Page - Status Dropdown
    Wait Until Element Is Visible       ${AuditSearchStatusDD}      40 seconds
    Click Element                       ${AuditSearchStatusDD}
    #Status = Overdue
    Log to Console      Status = Overdue
    Wait Until Element Is Visible       ${AuditSearchStatusOverdue}         40 seconds
    Click Element                       ${AuditSearchStatusOverdue}
    Click Element                       ${AuditSearchStatusDDArrow}
    #Click on Audits Search Button
    Log to Console      Click on Audits Search Button
    Wait Until Element Is Visible       ${AuditsSearchButton}       40 seconds
    Click Element                       ${AuditsSearchButton}
    Wait Until Element Is Visible       ${AuditSearchRecordOverdue}            40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/AuditOverdueRecordVisible.png
    #Open Overdue Record
    Log to Console      Open Overdue Record
    Click Element                           ${AuditSearchRecordOverdue}
    Wait Until Element Is Visible           ${AuditRecordStatusOverdue}         40 seconds
    Wait Until Page Contains Element        ${AuditRecordStatusOverdue}
    #Process Flow
    Log to Console      Process Flow
    Click Element                           ${AuditsPFButton}
    Wait Until Element Is Visible           ${AuditPFInProgress_Overdue}            40 seconds
    Wait Until Page Contains Element        ${AuditPFInProgress_Overdue}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/AuditOverdueRecordOpened.png

#*********************************************** FR7_01_AuditOverdue_AS ************************************************
Audits_Overdue Notification
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
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/OfficeEmails.png
    #Outlook Folder
    Log to Console      Outlook Folder
    Wait Until Element Is Visible       ${Outlook}                  20 seconds
    Click Element                       ${Outlook}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/OutlookFolder.png
    sleep       15 seconds
    #Switch to Tab
    Switch Window    Mail - Delwin Horsthemke - Outlook
    #System Mail folder
    Log to Console      System Mail folder
    Wait Until Element Is Visible       ${SystemMailFolder}         20 seconds
    sleep       5 seconds
    Click Element                       ${SystemMailFolder}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/OutlookSystemMailFolder.png
    #Audits - Overdue Notification
    Log to Console      Overdue Notification
    sleep       3 seconds
    Wait Until Element Is Visible       ${AuditOverdueSubject}       60 seconds
    Click Element                       ${AuditOverdueSubject}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/AuditOverdueEmailSelection.png
    #Link Back to Record
    Log to Console      Link Back to Record
    Click Element                       ${AuditEmailLinkBacktoRecord}
    sleep       5 seconds
    #Switch window
    Switch Window    IsoMetrix
    #Login to Isometrix Site
    Log to Console      Login to Isometrix Site
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/IsoMetrixTabOpened.png
    Wait Until Element Is Visible       ${Usernameid}
    Input Text                          ${Usernameid}    ${Username Value}
    Input Text                          ${Passwordid}    ${Password Value}
    Click Element                       ${SubmitButtonid}
    #Wait for Audit Record
    Log to Console      Wait for Audit Record
    set selenium implicit wait    50 seconds
    sleep       20 seconds
    Select Frame                        ${iFrame}
    Wait Until Element Is Visible       ${AuditsPFButton}           60 seconds
    Click Element                       ${AuditsPFButton}
    Wait Until Page Contains Element    ${AuditPFInProgress_Overdue}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/AuditsRecordOpened.png

#*********************************************** FR8_01_CaptureAuditActions_MS ************************************************
Capture Audit Actions
    #Audits Actions Tab
    Log to Console      Audits Actions Tab
    Click Element                       ${AuditActionsTab}
    Wait Until Element Is Visible       ${AuditTeamNoResults}       20 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audits Actions Sub-Module.png
    #Actions Add Button
    Log to Console      Actions Add Button
    Wait Until Element Is Visible       ${AuditActionsAddBtn}       20 seconds
    Click Element                       ${AuditActionsAddBtn}
    Wait Until Element Is Visible       ${AuditActionsBreadcrumb}       60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audits Actions Record.png
    #Process Flow
    Log to Console      Actions Process Flow
    Wait Until Element Is Visible       ${AuditActionsPF}           20 seconds
    Click Element                       ${AuditActionsPF}
    Wait Until Page Contains Element    ${AuditActionsPFAddActions}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audits Actions Process Flow Add Action.png
    #Description
    Log to Console      Actions Description
    ${CurrentDate}      Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                 ${CurrentDate}
    Input Text                          ${AuditActionsDescription}                  FR8_01_CaptureAuditActions_MS ${CurrentDate}
    #Department Responsible
    Log to Console      Department Responsible
    Click Element                       ${AuditActionDepartResponsDD}
    Wait Until Element Is Visible       ${AuditsActionsBUGlobalCompanyExpand}      10 seconds
    Click Element                       ${AuditsActionsBUGlobalCompanyExpand}
    Wait Until Element Is Visible       ${AuditsActionsBUSouthAfricaExpand}        10 seconds
    Click Element                       ${AuditsActionsBUSouthAfricaExpand}
    Wait Until Element Is Visible       ${AuditsActionsBUVictorySite}              10 seconds
    Click Element                       ${AuditsActionsBUVictorySite}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Department Responsible Selected.png
    #Responsible Person
    Log to Console      Responsible Person
    Click Element                       ${AuditActionsRespPersonDD}
    Wait Until Element Is Visible       ${AuditActionsRespPerson2Manager}      20 seconds
    Click Element                       ${AuditActionsRespPerson2Manager}
    #Action Due Date
    Log to Console      Action Due Date
    Click Element                       ${AuditActionsDueDate}
    Input Text                          ${AuditActionsDueDate}                    ${CurrentDate}
    #Save Button
    Log to Console      Save Button
    Click Element                       ${AuditActionsSaveBtn}
    Wait Until Element Is Visible       ${AuditTeamRecordSaved}             60 seconds
    Wait Until Element Is Visible       ${AuditActionsRecordNo}             20 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Actions Saved.png
    #Close Button
    Log to Console      Audit Actions Close Button
    Click Element                       ${AuditActionsCloseBtn}
    Wait Until Element Is Visible       ${AuditActionsRecordModule}         20 seconds
    sleep       2 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Actions Record Closed.png

Audit Actions Notification
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
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/OfficeEmails.png
    #Outlook Folder
    Log to Console      Outlook Folder
    Wait Until Element Is Visible       ${Outlook}                  20 seconds
    Click Element                       ${Outlook}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/OutlookFolder.png
    sleep       15 seconds
    #Switch to Tab
    Switch Window    Mail - Delwin Horsthemke - Outlook
    #System Mail folder
    Log to Console      System Mail folder
    Wait Until Element Is Visible       ${SystemMailFolder}         20 seconds
    sleep       5 seconds
    Click Element                       ${SystemMailFolder}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/OutlookSystemMailFolder.png
    #Audits - Actions Notification
    Log to Console      Overdue Notification
    sleep       3 seconds
    Wait Until Element Is Visible       ${AuditActionsSubject}       60 seconds
    Click Element                       ${AuditActionsSubject}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/AuditActionsEmailSelection.png
    #Link Back to Record
    Log to Console      Link Back to Record
    Click Element                       ${AuditEmailLinkBacktoRecord}
    sleep       5 seconds
    #Switch window
    Switch Window    IsoMetrix
    #Login to Isometrix Site
    Log to Console      Login to Isometrix Site
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/IsoMetrixTabOpened.png
    Wait Until Element Is Visible       ${Usernameid}
    Input Text                          ${Usernameid}    ${Username Value}
    Input Text                          ${Passwordid}    ${Password Value}
    Click Element                       ${SubmitButtonid}
    #Wait for Audit Actions Record
    Log to Console      Wait for Audit Record
    set selenium implicit wait    50 seconds
    sleep       20 seconds
    Select Frame                        ${iFrame}
#    Wait Until Element Is Visible       ${AuditsPFButton}           60 seconds
#    Click Element                       ${AuditsPFButton}
#    Wait Until Page Contains Element    ${AuditPFInProgress_Overdue}
#    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/AuditsRecordOpened.png

#*********************************************** FR9_01_AuditAwaitingSignOff_MS ************************************************
Audit Awaiting Sign Off
    #Audit Findings Tab
    Log to Console      Audit Findings Tab
    Click Element                           ${AuditFindingsTab}
    Wait Until Element Is Visible           ${AuditFindingsNoResults}               60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Findings Sub-Module.png
    #Submit for Sign Off
    Log to Console      Submit for Sign Off
    Wait Until Element Is Visible           ${AuditSubmitSignOffBtn}                60 seconds
    Click Element                           ${AuditSubmitSignOffBtn}
    Wait Until Element Is Visible           ${RecordSaved}                          60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Submit for Sign Off_Record Saved.png
    #Awaiting Sign Off Phase
    Log to Console      Awaiting Sign Off Phase
    Wait Until Page Contains Element        ${AuditPFAwaitingSignOff}
    Click Element                           ${AuditProtocolTab}
    Wait Until Element Is Visible           ${AuditStatusAwaitingSignOff}
    Wait Until Page Contains Element        ${AuditStatusAwaitingSignOff}
    #Sign Off Tab
    Log to Console      Sign Off Tab
    Wait Until Page Contains Element        ${AuditSignOffTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Awaiting Sign Off and Tab visible.png

FR9_01_AuditAwaitingSignOff_Notification
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
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/OfficeEmails.png
    #Outlook Folder
    Log to Console      Outlook Folder
    Wait Until Element Is Visible       ${Outlook}                  20 seconds
    Click Element                       ${Outlook}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/OutlookFolder.png
    sleep       15 seconds
    #Switch to Tab
    Switch Window    Mail - Delwin Horsthemke - Outlook
    #System Mail folder
    Log to Console      System Mail folder
    Wait Until Element Is Visible       ${SystemMailFolder}         20 seconds
    sleep       5 seconds
    Click Element                       ${SystemMailFolder}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/OutlookSystemMailFolder.png
    #Audits - AwaitingSignOff Notification
    Log to Console      AwaitingSignOff Notification
    sleep       8 seconds
    Wait Until Element Is Visible       ${AuditAwaitingSignOffSubject}       60 seconds
    Click Element                       ${AuditAwaitingSignOffSubject}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/AuditNewDatesProposedEmailSelection.png
    #Link Back to Record
    Log to Console      Link Back to Record
    Click Element                       ${AuditEmailLinkBacktoRecord}
    sleep       5 seconds
    #Switch window
    Switch Window    IsoMetrix
    #Login to Isometrix Site
    Log to Console      Login to Isometrix Site
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/IsoMetrixTabOpened.png
    Wait Until Element Is Visible       ${Usernameid}                         60 seconds
    Input Text                          ${Usernameid}    ${Username Value}
    Input Text                          ${Passwordid}    ${Password Value}
    Click Element                       ${SubmitButtonid}
    #Wait for Audit Findings Record
    Log to Console      Wait for Audit Record
    set selenium implicit wait    50 seconds
    sleep       30 seconds
    Select Frame                        ${iFrame}
    Wait Until Element Is Visible       ${AuditsPFButton}                     60 seconds
    Click Element                       ${AuditsPFButton}
    Wait Until Page Contains Element        ${AuditPFAwaitingSignOff}
    Wait Until Page Contains Element        ${AuditStatusAwaitingSignOff}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/AuditsRecordOpened.png


