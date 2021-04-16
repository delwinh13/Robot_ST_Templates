*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Audits/vars.robot
Library     DateTime

*** Keywords ***
#*********************************************** FR10_01_SignOffApproval_MS ************************************************
Sign Off Approval - Yes
    #Navigate to Sign Off Tab
    Log to Console      Navigate to Sign Off Tab
    Click Element                                   ${AuditSignOffTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Sign Off Tab-{index}.png
    #Audit Rating
    Log to Console      Audit Rating
    Wait Until Element Is Visible                   ${AuditRatingDD}                    10 seconds
    Click Element                                   ${AuditRatingDD}
    Wait Until Element Is Visible                   ${AuditRatingSatisfactory}          10 seconds
    Click Element                                   ${AuditRatingSatisfactory}
    #Conclusion
    Log to Console      Conclusion
    ${CurrentDate}      Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${AuditConclusion}                  FR10_01_SignOffApproval_MS         ${CurrentDate}
    #Sign Off Add Button
    Log to Console      Sign Off Add Button
    Click Element                                   ${AuditSignOffAddBtn}
    Wait Until Element Is Visible                   ${AuditSignOffBreadcrumb}           60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Sign Off Record Opened-{index}.png
    #Process Flow
    Log to Console      Process Flow
    Wait Until Element Is Visible                   ${AuditSignOffPF}                   40 seconds
    Click Element                                   ${AuditSignOffPF}
    Wait Until Page Contains Element                ${AuditSignOffPFAddPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Sign Off Record Add Phase-{index}.png
    #Auditor Type
    Log to Console      Auditor Type
    Click Element                                   ${AuditsSignOffAuditorTypeDD}
    Wait Until Element Is Visible                   ${AuditsSignOffAuditorTypeManager}          20 seconds
    Click Element                                   ${AuditsSignOffAuditorTypeManager}
    #Auditor
    Log to Console      Auditor
    Click Element                                   ${AuditSignOffAuditorDD}
    Wait Until Element Is Visible                   ${AuditSignOffAuditorAdmin}                 20 seconds
    Click Element                                   ${AuditSignOffAuditorAdmin}
    #Sign Off
    Log to Console      Sign Off
    Click Element                                   ${AuditSignOffDD}
    Wait Until Element Is Visible                   ${AuditSignOffDDYes}                20 seconds
    Click Element                                   ${AuditSignOffDDYes}
    #Date
    Page Should Contain Element                      ${AuditSignOffDate}                ${CurrentDate}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Sign Off Date Autopopulated-{index}.png
    #Comments
    Log to Console      Comments
    Input Text                                      ${AuditSignOffComments}                     FR10_01_SignOffApproval_MS ${CurrentDate}
    #Email comments to:
    Log to Console      Email Comments
    Click Element                                   ${AuditSignOffEmailComments}
    #Save Button
    Click Element                                   ${AuditSignOffSaveBtn}
    Wait Until Element Is Visible                   ${AuditTeamRecordSaved}             60 seconds
    Wait Until Element Is Visible                   ${AuditSignOffRecordNo}             20 seconds
    #Process Flow Edit Phase
    Wait Until Element Is Visible                   ${AuditSignOffPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Sign Off Saved - Edit Phase-{index}.png
    #Close Audit Sign Off
    Log to Console      Close Audit Sign Off
    Click Element                                   ${AuditSignOffCloseBtn}
    Wait Until Element Is Visible                   ${AuditSignOffYesRecord}            20 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Sign Off Record Closed-{index}.png
    #Close Audit Record
    Log to Console      Close Audit Record
    Click Element                                   ${AuditRecordCloseBtn}
#    #Alert should be present
#    Log to Console      Alert should be present
#    Switch Window
#    Wait Until Element Is Visible                   ${AuditCloseAlertYes}               20 seconds
#    Click Element                                   ${AuditCloseAlertYes}
#    sleep    1 second
#    Select Frame                                    ${iFrame}
    sleep   5 seconds
    Wait Until Element Is Visible                   ${AuditSearchResultsComplete}       20 seconds
    Click Element                                   ${AuditSearchResultsComplete}
    #Process Flow
    Sleep   8 seconds
    Wait Until Element Is Visible                   ${AuditsPFButton}                   20 seconds
    Click Element                                   ${AuditsPFButton}
    Page Should Contain Element                     ${AuditPFCompleted}
    Page Should Contain Element                     ${AuditStatusCompleted}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Completed Status & Phase-{index}.png

SignOffApproval_Yes_Notification
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
    Wait Until Element Is Visible       ${SystemMailFolder}                 20 seconds
    sleep       5 seconds
    Click Element                       ${SystemMailFolder}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/OutlookSystemMailFolder-{index}.png
    #Audits - Signed Off Notification
    Log to Console      Signed Off Notification
    sleep       8 seconds
    Wait Until Element Is Visible       ${AuditSignedOffSubject}            60 seconds
    Click Element                       ${AuditSignedOffSubject}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Signed Off Email Selection-{index}.png
    #Link Back to Record
    Log to Console      Link Back to Record
    Click Element                       ${AuditEmailLinkBacktoRecord}
    sleep       5 seconds
    #Switch window
    Switch Window    IsoMetrix
    #Login to Isometrix Site
    Log to Console      Login to Isometrix Site
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/IsoMetrixTabOpened-{index}.png
    Wait Until Element Is Visible       ${Usernameid}                  60 seconds
    Input Text                          ${Usernameid}    ${Username Value}
    Input Text                          ${Passwordid}    ${Password Value}
    Click Element                       ${SubmitButtonid}
    #Wait for Audit Sign Off Record
    Log to Console      Wait for Audit Sign Off Record
    set selenium implicit wait    50 seconds
    sleep       30 seconds
    Select Frame                        ${iFrame}
    Wait Until Element Is Visible       ${AuditSignOffPF}                      90 seconds
    Click Element                       ${AuditSignOffPF}
    Wait Until Page Contains Element    ${AuditSignOffPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audits Sign Off RecordOpened-{index}.png

#*********************************************** FR10_01_SignOffApproval_AS ************************************************
Sign Off Approval - No
    #Navigate to Sign Off Tab
    Log to Console      Navigate to Sign Off Tab
    Click Element                                   ${AuditSignOffTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Sign Off Tab-{index}.png
    #Audit Rating
    Log to Console      Audit Rating
    Wait Until Element Is Visible                   ${AuditRatingDD}                    10 seconds
    Click Element                                   ${AuditRatingDD}
    Wait Until Element Is Visible                   ${AuditRatingUnsatisfactory}          10 seconds
    Click Element                                   ${AuditRatingUnsatisfactory}
    #Conclusion
    Log to Console      Conclusion
    ${CurrentDate}      Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${AuditConclusion}                  FR10_01_SignOffApproval_AS ${CurrentDate}
    #Sign Off Add Button
    Log to Console      Sign Off Add Button
    Click Element                                   ${AuditSignOffAddBtn}
    Wait Until Element Is Visible                   ${AuditSignOffBreadcrumb}           60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Sign Off Record Opened-{index}.png
    #Process Flow
    Log to Console      Process Flow
    Wait Until Element Is Visible                   ${AuditSignOffPF}                   40 seconds
    Click Element                                   ${AuditSignOffPF}
    Wait Until Page Contains Element                ${AuditSignOffPFAddPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Sign Off Record Add Phase-{index}.png
    #Auditor Type
    Log to Console      Auditor Type
    Click Element                                   ${AuditsSignOffAuditorTypeDD}
    Wait Until Element Is Visible                   ${AuditsSignOffAuditorTypeSeniorAuditor}          20 seconds
    Click Element                                   ${AuditsSignOffAuditorTypeSeniorAuditor}
    #Auditor
    Log to Console      Auditor
    Click Element                                   ${AuditSignOffAuditorDD}
    Wait Until Element Is Visible                   ${AuditSignOffAuditorAdmin}                 20 seconds
    Click Element                                   ${AuditSignOffAuditorAdmin}
    #Sign Off
    Log to Console      Sign Off
    Click Element                                   ${AuditSignOffDD}
    Wait Until Element Is Visible                   ${AuditSignOffDDNo}                20 seconds
    Click Element                                   ${AuditSignOffDDNo}
    #Date
    Page Should Contain Element                      ${AuditSignOffDate}                ${CurrentDate}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Sign Off Date Autopopulated-{index}.png
    #Comments
    Log to Console      Comments
    Input Text                                      ${AuditSignOffComments}                     FR10_01_SignOffApproval_AS ${CurrentDate}
    #Email comments to:
    Log to Console      Email Comments
    Click Element                                   ${AuditSignOffEmailComments}
    #Save Button
    Click Element                                   ${AuditSignOffSaveBtn}
    Wait Until Element Is Visible                   ${AuditTeamRecordSaved}             60 seconds
    Wait Until Element Is Visible                   ${AuditSignOffRecordNo}             20 seconds
    #Process Flow Edit Phase
    Wait Until Element Is Visible                   ${AuditSignOffPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Sign Off Saved - Edit Phase-{index}.png
    #Close Audit Sign Off
    Log to Console      Close Audit Sign Off
    Click Element                                   ${AuditSignOffCloseBtn}
    Wait Until Element Is Visible                   ${AuditSignOffNoRecord}             20 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Sign Off Record Closed-{index}.png
    #Close Audit Record
    Log to Console      Close Audit Record
    Click Element                                   ${AuditRecordCloseBtn}
#    #Alert should be present
#    Log to Console      Alert should be present
#    Switch Window
#    Wait Until Element Is Visible                   ${AuditCloseAlertYes}               20 seconds
#    Click Element                                   ${AuditCloseAlertYes}
#    sleep    1 second
#    Select Frame                                    ${iFrame}
    sleep   5 seconds
    Wait Until Element Is Visible                   ${AuditSearchResultsInProgress}       20 seconds
    Click Element                                   ${AuditSearchResultsInProgress}
    #Process Flow
    Sleep   8 seconds
    Wait Until Element Is Visible                   ${AuditsPFButton}                   20 seconds
    Click Element                                   ${AuditsPFButton}
    Page Should Contain Element                     ${AuditPFInProgress_Overdue}
    Page Should Contain Element                     ${AuditStatusInProgress}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit In Progress Status & Phase-{index}.png

SignOffApproval_No_Notification
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
    Wait Until Element Is Visible       ${SystemMailFolder}                 20 seconds
    sleep       5 seconds
    Click Element                       ${SystemMailFolder}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/OutlookSystemMailFolder-{index}.png
    #Audits - Sign Off Rejected Notification
    Log to Console      Sign Off Rejected Notification
    sleep       8 seconds
    Wait Until Element Is Visible       ${AuditSignOffRejectedSubject}            60 seconds
    Click Element                       ${AuditSignOffRejectedSubject}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Signed Off Email Selection-{index}.png
    #Link Back to Record
    Log to Console      Link Back to Record
    Click Element                       ${AuditEmailLinkBacktoRecord}
    sleep       5 seconds
    #Switch window
    Switch Window    IsoMetrix
    #Login to Isometrix Site
    Log to Console      Login to Isometrix Site
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/IsoMetrixTabOpened-{index}.png
    Wait Until Element Is Visible       ${Usernameid}                  60 seconds
    Input Text                          ${Usernameid}    ${Username Value}
    Input Text                          ${Passwordid}    ${Password Value}
    Click Element                       ${SubmitButtonid}
    #Wait for Audit Sign Off Record
    Log to Console      Wait for Audit Sign Off Record
    set selenium implicit wait    50 seconds
    sleep       30 seconds
    Select Frame                        ${iFrame}
    Wait Until Element Is Visible       ${AuditSignOffPF}                      40 seconds
    Click Element                       ${AuditSignOffPF}
    Wait Until Page Contains Element    ${AuditSignOffPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audits Sign Off Record Opened-{index}.png

#*********************************************** FR11_01_ViewPrintAuditReport_MS ************************************************
View_Print Audit Report
    #Click on Audits Search Button
    log to console     Click on Audits Search Button
    Wait Until Element Is Visible       ${AuditsSearchButton}    40 seconds
    click element                       ${AuditsSearchButton}
    Wait Until Element Is Visible       ${AuditsRecords}         40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/AuditsRecordsVisible-{index}.png
    #Open Audits Complete Record
    Log to Console     Open Audits Complete Record
    Wait Until Element Is Visible       ${AuditSearchResultsComplete}       20 seconds
    Click Element                       ${AuditSearchResultsComplete}
    #Process Flow
    Sleep   8 seconds
    Wait Until Element Is Visible       ${AuditsPFButton}                   20 seconds
    Click Element                       ${AuditsPFButton}
    Page Should Contain Element         ${AuditPFCompleted}
    Page Should Contain Element         ${AuditStatusCompleted}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Completed Status & Phase-{index}.png
    #Audits Record Report Button
    Log to Console      Audits Record Report Button
    Click Element                       ${AuditsRecordReportBtn}
    Wait Until Element Is Visible       ${AuditsRecordReportAuditTitle}         20 seconds
    #Open Audits Record Report
    Log to Console      Open Audits Record Report
    Click Element                       ${AuditsRecordReportOpen}
    Switch Window
    Wait Until Element Is Visible       ${AuditsReportsPopUpConfirm}        20 seconds
    Click Element                       ${AuditsReportsPopUpConfirm}
    sleep    25 seconds
#    Switch Window           reportviewer.aspx
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audits View Reports Visible-{index}.png
    Switch Window           IsoMetrix

#*********************************************** FR12_01_ViewAuditRegisters_MS ************************************************
View_Print Audit Register
    #Click on Audits Search Button
    Log to Console     Click on Audits Search Button
    Wait Until Element Is Visible       ${AuditsSearchButton}           40 seconds
    Click Element                       ${AuditsSearchButton}
    Wait Until Element Is Visible       ${AuditsRecords}                40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audits Records Visible-{index}.png
    #Audit Reports Button
    Log to Console     Audit Reports Button
    Click Element                       ${AuditsReportsBtn}
    Wait Until Element Is Visible       ${AuditsReportAuditTitle}       40 seconds
    #View Reports
    Log to Console     View Reports
    Click Element                       ${AuditsViewReportsBtn}
    Switch Window
    Wait Until Element Is Visible       ${AuditsReportsPopUpConfirm}        20 seconds
    Click Element                       ${AuditsReportsPopUpConfirm}
    sleep    25 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audits View Reports Visible-{index}.png
    #Switch to Tab
#    Log to Console      Switch to Tab
#    Switch Window
    #View Report Right Arrow
#    Log to Console      View Report Right Arrow
#    Wait Until Element Is Visible       ${AuditsViewReportRightArrow}       60 seconds
#    Click Element                       ${AuditsViewReportRightArrow}
#    sleep   5 seconds
#    #Export Arrow
#    Log to Console      Export Arrow
#    Wait Until Element Is Visible       ${AuditsViewReportExportArrow}       60 seconds
#    Click Element                       ${AuditsViewReportExportArrow}
#    #Export Word
#    Log to Console      Export Word
#    Wait Until Element Is Visible       ${AuditsViewReportExportWord}        60 seconds
#    Click Element                       ${AuditsViewReportExportWord}
#    sleep   15 seconds
    Switch Window           IsoMetrix

Full_Print Audit Register
    #Full Reports
    Log to Console     Full Reports
    Select Frame                        ${iFrame}
    Click Element                       ${AuditsFullReportsBtn}
    Switch Window
    Wait Until Element Is Visible       ${AuditsReportsPopUpConfirm}        20 seconds
    Click Element                       ${AuditsReportsPopUpConfirm}
    sleep    25 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audits Full Reports Visible-{index}.png
    Close Window




