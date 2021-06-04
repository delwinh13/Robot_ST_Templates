*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Audits/vars.robot
Resource    ../../Resources/Actions/Actions_vars.robot
Library     DateTime

*** Keywords ***
#*********************************************** Capture Ad-Hoc Actions *******************************************
Navigate to Ad-Hoc Actions Module
    [Documentation]     This will navigate the system to the Ad-Hoc Actions Module
    #Click on Environment, Health & Safety
    Log to Console  Click on Environment, Health & Safety
    Wait Until Element Is Visible                   ${EHSButton}                                60 seconds
    Click Element                                   ${EHSButton}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Environment Health Safety.png
    #Click on Ad-Hoc Actions Button
    Log to Console     Click on Ad-Hoc Actions Button
    Wait Until Element Is Visible                   ${AdHocActions}                             60 seconds
    Click Element                                   ${AdHocActions}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Ad-Hoc Actions Module.png

Ad-Hoc Actions Add Button
    #Click on Ad-Hoc Actions Search Button
    Log to Console     Click on Ad-Hoc Actions Search Button
    Sleep       1
    Wait Until Element Is Visible                   ${AdHocActionsSearchButton}                 40 seconds
    Click Element                                   ${AdHocActionsSearchButton}
    Sleep       2
    Wait Until Element Is Enabled                   ${AdHocActionsRecords}                      40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Ad-Hoc Actions Records Visible.png
    #Click on Ad-Hoc Actions Add Button
    Log to Console     Click on Ad-Hoc Actions Add Button
    Click Element                                   ${AdHocActionsAddBtn}
    Wait Until Element Is Visible                   ${AdHocActionsRecordHeader}                 40 seconds
    #Save and Continue Button
    Wait Until Element Is Visible                   ${AdHocActionsSaveContinue}                 10 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/New Ad-Hoc Actions Record Opened.png

Capture Ad-Hoc Actions
    #Process Flow
    Log to Console      Process Flow
    Sleep       1
    Wait Until Element Is Visible                   ${AdHocActionsPF}                           40 seconds
    Click Element                                   ${AdHocActionsPF}
    Sleep       1
    Wait Until Element Is Visible                   ${AdHocActionsPFAddPhase}                   40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Ad-Hoc Actions Record Add Phase.png
    #Business Unit
    Log to Console      Business Unit
    Click Element                                   ${AdHocActionsBUDD}
    Wait Until Element Is Visible                   ${AdHocActionsBUGlobalCompanyExpand}         40 seconds
    Click Element                                   ${AdHocActionsBUGlobalCompanyExpand}
    Sleep       0.5
    Wait Until Element Is Visible                   ${AdHocActionsBUSouthAfricaExpand}           40 seconds
    Click Element                                   ${AdHocActionsBUSouthAfricaExpand}
    Sleep       0.5
    Wait Until Element Is Visible                   ${AdHocActionsBUVictorySite}                 40 seconds
    Click Element                                   ${AdHocActionsBUVictorySite}
    #Impact Type
    Log to Console      Impact Type
    Click Element                                   ${AdHocActionsImpactTypeDD}
    Wait Until Element Is Visible                   ${AdHocActionsImpactTypeBusRisk}             40 seconds
    Click Element                                   ${AdHocActionsImpactTypeSelectAll}
    #Description
    Log to Console      Description
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${AdHocActionsDescription}                   FR1_Capture Ad-Hoc Actions_MS ${CurrentDate}
    #Save and Continue
    Log to Console      Save and Continue
    Click Element                                   ${AdHocActionsSaveContinue}
    Wait Until Element Is Visible                   ${RecordSaved}                               40 seconds
    Element Should Be Visible                       ${AdHocActionsPFEditPhase}
    Element Should Be Visible                       ${AdHocActionsRecordNo}
    Element Should Be Visible                       ${ActionsSubModule}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Ad-Hoc Actions Record Added - Edit Phase.png



#*********************************************** FR1-01: Capture Actions_MS *******************************************
Capture Actions_MS_Pending
    #Click on Actions Add Button
    Log to Console     Click on Actions Add Button
    Click Element                                   ${ActionsAddBtn}
    Wait Until Element Is Visible                   ${AdHocActionsRecordHeader}                 40 seconds
    #Save and Continue Button
    Element Should Be Visible                       ${ActionsCreateActionBtn}
    Element Should Be Visible                       ${ActionDetailTab}
    Element Should Be Visible                       ${ActionsSupportDocsTab}
    Click Element                                   ${ActionsPF}
    Wait Until Element Is Visible                   ${ActionsPFAddAction}                       40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/New Actions Record Opened - Add Action phase.png
    #Business unit
    Log to Console      Business unit
    Click Element                                   ${ActionsBUDD}
    Wait Until Element Is Visible                   ${ActionsBUGlobalCompanyExpand}              40 seconds
    Click Element                                   ${ActionsBUGlobalCompanyExpand}
    Wait Until Element Is Visible                   ${ActionsBUSouthAfricaExpand}                40 seconds
    Click Element                                   ${ActionsBUSouthAfricaExpand}
    Wait Until Element Is Visible                   ${ActionsBUVictorySite}                      40 seconds
    Click Element                                   ${ActionsBUVictorySite}
    #Action assignee
    Log to Console      Action assignee
    Click Element                                   ${ActionsAssigneeDD}
    Wait Until Element Is Visible                   ${Actions2Manager}                           40 seconds
    Click Element                                   ${Actions2Manager}
    #Action owner
    Log to Console      Action owner
    Element Should Be Visible                       ${ActionsOwner2Manager}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Owner 2 Manager.png
    #Action description
    Log to Console      Action description
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsDescription}                        FR1_Capture Actions_MS_Pending ${CurrentDate}
    #Action category
    Log to Console      Action category
    Click Element                                   ${ActionsCategoryDD}
    Wait Until Element Is Visible                   ${ActionsCategoryHealthSafety}               40 seconds
    Click Element                                   ${ActionsCategoryHealthSafety}
    #Action priority
    Log to Console      Action priority
    #Low
    Click Element                                   ${ActionsPriorityDD}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsPriorityDDLow}                      40 seconds
    Click Element                                   ${ActionsPriorityDDLow}
    Element Should Be Visible                       ${ActionsPriorityLowGreen}
    Sleep       1
    #High
    Click Element                                   ${ActionsPriorityDD}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsPriorityDDHigh}                     40 seconds
    Click Element                                   ${ActionsPriorityDDHigh}
    Element Should Be Visible                       ${ActionsPriorityHighRed}
    Sleep       1
    #Medium
    Click Element                                   ${ActionsPriorityDD}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsPriorityDDMedium}                   40 seconds
    Click Element                                   ${ActionsPriorityDDMedium}
    Element Should Be Visible                       ${ActionsPriorityMediumOrange}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Priority Medium Orange.png
    #Cost
    Log to Console      Cost
    Click Element                                   ${ActionsCostDD}
    Wait Until Element Is Visible                   ${ActionsCostZAR}                            40 seconds
    Click Element                                   ${ActionsCostZAR}
    Input Text                                      ${ActionsCostInput}                          1234
    #Recurring action?
    Log to Console      Recurring action?
    Element Should Be Visible                       ${ActionsRecurringActionDDNo}
    #Pending days required?
    Log to Console      Pending days required?
    Element Should Be Visible                       ${ActionsPendingDaysRequiredDDNo}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Recurring Action_Pending Days Dropdowns - No.png
    #Action due date
    Log to Console      Action due date
    ${CurrentDate}          Get Current Date        result_format=%d/%m/%YY
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsDueDate}                            ${CurrentDate}
    #Action status
    Log to Console      Action status
    Element Should Be Visible                       ${ActionsStatusToBeInitiated}
    #Supporting Documents
    Log to Console      Supporting Documents
    Sleep       1
    Click Element                                   ${ActionsSupportDocsTab}
    Wait Until Element Is Visible                   ${ActionsSupportDocsLink}                       20 seconds
    Click Element                                   ${ActionsSupportDocsLink}
    #Alert should be present
    Switch Window
    sleep       1
    Wait Until Element Is Visible                   ${ActionsSupportDocUrl}                         20 seconds
    Input Text                                      ${ActionsSupportDocUrl}                         www.isomertix.com
    Input Text                                      ${ActionsSupportDocURLTitle}                    Isometrix
    Click Element                                   ${ActionsSupportDocURLAdd}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Supporting Documents Link Added.png
    sleep       1
    Select Frame                                    ${iFrame}
    #Action Details Tab
    Log to Console      Action Details Tab
    Click Element                                   ${ActionDetailTab}
    Sleep       1
    Scroll Element Into View                        ${ActionsCreateActionBtn}
    Sleep       1
    Click Element                                   ${ActionsCreateActionBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    #Supporting Documents Tab
    Log to Console      Supporting Documents Tab
    Click Element                                   ${ActionsSupportDocsTab}
    Wait Until Page Contains Element                ${ActionsSupportDocsLinkAdded}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Supporting Documents Added.png
    #Action Details Tab
    Log to Console      Action Details Tab
    Click Element                                   ${ActionDetailTab}
    Sleep       1
    Element Should Be Visible                       ${ActionsPFScheduled}
    Element Should Be Visible                       ${ActionsFeedbackTab}
    Element Should Be Visible                       ${ActionsExtensionRequestLogTab}
    Element Should Be Visible                       ${ActionsEscalationDDIanAdmin}
    Scroll Element Into View                        ${ActionsRequestActionExtensionBtn}
    Element Should Be Visible                       ${ActionsStatusPending}
    Element Should Be Visible                       ${ActionsActionCompleteFeedbackBtn}
    Element Should Be Visible                       ${ActionsRecordNo}
    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record Saved - To be initiated/Scheduled phase Pending Status.png

Capture Actions_MS_Initiated
    #Click on Actions Add Button
    Log to Console     Click on Actions Add Button
    Click Element                                   ${ActionsAddBtn}
    Wait Until Element Is Visible                   ${AdHocActionsRecordHeader}                 40 seconds
    #Save and Continue Button
    Element Should Be Visible                       ${ActionsCreateActionBtn}
    Element Should Be Visible                       ${ActionDetailTab}
    Element Should Be Visible                       ${ActionsSupportDocsTab}
    Click Element                                   ${ActionsPF}
    Wait Until Element Is Visible                   ${ActionsPFAddAction}                       40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/New Actions Record Opened - Add Action phase.png
    #Business unit
    Log to Console      Business unit
    Click Element                                   ${ActionsBUDD}
    Wait Until Element Is Visible                   ${ActionsBUGlobalCompanyExpand}              40 seconds
    Click Element                                   ${ActionsBUGlobalCompanyExpand}
    Wait Until Element Is Visible                   ${ActionsBUSouthAfricaExpand}                40 seconds
    Click Element                                   ${ActionsBUSouthAfricaExpand}
    Wait Until Element Is Visible                   ${ActionsBUVictorySite}                      40 seconds
    Click Element                                   ${ActionsBUVictorySite}
    #Action assignee
    Log to Console      Action assignee
    Click Element                                   ${ActionsAssigneeDD}
    Wait Until Element Is Visible                   ${Actions2Manager}                           40 seconds
    Click Element                                   ${Actions2Manager}
    #Action owner
    Log to Console      Action owner
    Element Should Be Visible                       ${ActionsOwner2Manager}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Owner 2 Manager.png
    #Action description
    Log to Console      Action description
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsDescription}                        FR1_Capture Actions_MS_Initiated ${CurrentDate}
    #Action category
    Log to Console      Action category
    Click Element                                   ${ActionsCategoryDD}
    Wait Until Element Is Visible                   ${ActionsCategoryHealthSafety}               40 seconds
    Click Element                                   ${ActionsCategoryHealthSafety}
    #Action priority
    Log to Console      Action priority
    #Low
    Click Element                                   ${ActionsPriorityDD}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsPriorityDDLow}                      40 seconds
    Click Element                                   ${ActionsPriorityDDLow}
    Element Should Be Visible                       ${ActionsPriorityLowGreen}
    Sleep       1
    #High
    Click Element                                   ${ActionsPriorityDD}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsPriorityDDHigh}                     40 seconds
    Click Element                                   ${ActionsPriorityDDHigh}
    Element Should Be Visible                       ${ActionsPriorityHighRed}
    Sleep       1
    #Medium
    Click Element                                   ${ActionsPriorityDD}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsPriorityDDMedium}                   40 seconds
    Click Element                                   ${ActionsPriorityDDMedium}
    Element Should Be Visible                       ${ActionsPriorityMediumOrange}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Priority Medium Orange.png
    #Cost
    Log to Console      Cost
    Click Element                                   ${ActionsCostDD}
    Wait Until Element Is Visible                   ${ActionsCostZAR}                            40 seconds
    Click Element                                   ${ActionsCostZAR}
    Input Text                                      ${ActionsCostInput}                          1234
    #Recurring action?
    Log to Console      Recurring action?
    Element Should Be Visible                       ${ActionsRecurringActionDDNo}
    #Pending days required?
    Log to Console      Pending days required?
    Element Should Be Visible                       ${ActionsPendingDaysRequiredDDNo}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Recurring Action_Pending Days Dropdowns - No.png
    #Action due date
    Log to Console      Action due date
    ${FutureDate}          Get Current Date            result_format=%d/%m/%Y                   increment=+5 day
    Set Global Variable                             ${FutureDate}
    Input Text                                      ${ActionsDueDate}                            ${FutureDate}
    #Action status
    Log to Console      Action status
    Element Should Be Visible                       ${ActionsStatusToBeInitiated}
    #Supporting Documents
    Log to Console      Supporting Documents
    Sleep       1
    Click Element                                   ${ActionsSupportDocsTab}
    Wait Until Element Is Visible                   ${ActionsSupportDocsLink}                       20 seconds
    Click Element                                   ${ActionsSupportDocsLink}
    #Alert should be present
    Switch Window
    sleep       1
    Wait Until Element Is Visible                   ${ActionsSupportDocUrl}                         20 seconds
    Input Text                                      ${ActionsSupportDocUrl}                         www.isomertix.com
    Input Text                                      ${ActionsSupportDocURLTitle}                    Isometrix
    Click Element                                   ${ActionsSupportDocURLAdd}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Supporting Documents Link Added.png
    sleep       1
    Select Frame                                    ${iFrame}
    #Action Details Tab
    Log to Console      Action Details Tab
    Click Element                                   ${ActionDetailTab}
    Sleep       1
    Scroll Element Into View                        ${ActionsCreateActionBtn}
    Sleep       1
    Click Element                                   ${ActionsCreateActionBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    #Supporting Documents Tab
    Log to Console      Supporting Documents Tab
    Click Element                                   ${ActionsSupportDocsTab}
    Wait Until Page Contains Element                ${ActionsSupportDocsLinkAdded}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Supporting Documents Added.png
    #Action Details Tab
    Log to Console      Action Details Tab
    Click Element                                   ${ActionDetailTab}
    Sleep       1
    Element Should Be Visible                       ${ActionsPFScheduled}
    Element Should Be Visible                       ${ActionsFeedbackTab}
    Element Should Be Visible                       ${ActionsExtensionRequestLogTab}
    Element Should Be Visible                       ${ActionsEscalationDDIanAdmin}
    Scroll Element Into View                        ${ActionsRequestActionExtensionBtn}
    Element Should Be Visible                       ${ActionsStatusToBeInitiated}
    Element Should Be Visible                       ${ActionsActionCompleteFeedbackBtn}
    Element Should Be Visible                       ${ActionsRecordNo}
    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record Saved - To be initiated/Scheduled phase Pending Status.png

FR1_Action_LoggedNotification
    Open Browser                        ${Officeurl}  ${BROWSER}
    Maximize Browser Window
    set selenium implicit wait    10 seconds
    #Sign In Button
    #Log to Console     Sign In Button
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
    #Log to Console      Outlook Folder
    Wait Until Element Is Visible       ${Outlook}                  20 seconds
    Click Element                       ${Outlook}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/OutlookFolder.png
    sleep       20
    #Switch to Tab
    Switch Window    Mail - Delwin Horsthemke - Outlook
    #System Mail folder
    #Log to Console      System Mail folder
    Wait Until Element Is Visible       ${DeletecItemsFolder}         20 seconds
    sleep       10
    Click Element                       ${DeletecItemsFolder}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/OutlookDeletedItemsFolder.png
    #Actions - Logged Notification
    #Log to Console      Actions Logged Notification
    sleep       3 seconds
    Wait Until Element Is Visible       ${ActionsLoggedSubject}          60 seconds
    Click Element                       ${ActionsLoggedSubject}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Logged Email Selection.png
    #Link Back to Record
    #Log to Console      Link Back to Record
    Click Element                       ${AuditEmailLinkBacktoRecord}
    sleep       5
    #Switch window
    Switch Window    IsoMetrix
    #Login to Isometrix Site
    #Log to Console      Login to Isometrix Site
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/IsoMetrixTabOpened.png
    Wait Until Element Is Visible       ${Usernameid}
    Input Text                          ${Usernameid}    ${Username Value}
    Input Text                          ${Passwordid}    ${Password Value}
    Click Element                       ${SubmitButtonid}
    #Wait for Actions Record
    #Log to Console      Wait for Actions Record
    sleep       20
    Select Frame                        ${iFrame}
    Sleep       5
    Wait Until Element Is Visible       ${ActionsPF}                  60 seconds
    Click Element                       ${ActionsPF}
    Wait Until Page Contains Element    ${ActionsPFScheduled}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record Opened.png

FR1_Action_PendingNotification
    Open Browser                        ${Officeurl}  ${BROWSER}
    Maximize Browser Window
    set selenium implicit wait    10 seconds
    #Sign In Button
    #Log to Console     Sign In Button
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
    #Log to Console      Outlook Folder
    Wait Until Element Is Visible       ${Outlook}                  20 seconds
    Click Element                       ${Outlook}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/OutlookFolder.png
    sleep       20
    #Switch to Tab
    Switch Window    Mail - Delwin Horsthemke - Outlook
    #System Mail folder
    #Log to Console      System Mail folder
    Wait Until Element Is Visible       ${DeletecItemsFolder}         20 seconds
    sleep       5 seconds
    Click Element                       ${DeletecItemsFolder}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/OutlookDeletedItemsFolder.png
    #Actions - Logged Notification
    #Log to Console      Actions Logged Notification
    sleep       3 seconds
    Wait Until Element Is Visible       ${ActionsPendingSubject}          60 seconds
    Click Element                       ${ActionsPendingSubject}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Pending Email Selection.png
    #Link Back to Record
    #Log to Console      Link Back to Record
    Click Element                       ${AuditEmailLinkBacktoRecord}
    sleep       5 seconds
    #Switch window
    Switch Window    IsoMetrix
    #Login to Isometrix Site
    #Log to Console      Login to Isometrix Site
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/IsoMetrixTabOpened.png
    Wait Until Element Is Visible       ${Usernameid}
    Input Text                          ${Usernameid}    ${Username Value}
    Input Text                          ${Passwordid}    ${Password Value}
    Click Element                       ${SubmitButtonid}
    #Wait for Actions Record
    #Log to Console      Wait for Actions Record
    sleep       20
    Select Frame                        ${iFrame}
    Sleep       5
    Wait Until Element Is Visible       ${ActionsPF}                  60 seconds
    Click Element                       ${ActionsPF}
    Wait Until Page Contains Element    ${ActionsPFScheduled}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record Opened.png

#*********************************************** FR1-01: Capture Actions_AS1 ******************************************************
Capture Actions_AS1
    #Click on Actions Add Button
    Log to Console     Click on Actions Add Button
    Click Element                                   ${ActionsAddBtn}
    Wait Until Element Is Visible                   ${AdHocActionsRecordHeader}                 40 seconds
    #Save and Continue Button
    Element Should Be Visible                       ${ActionsCreateActionBtn}
    Element Should Be Visible                       ${ActionDetailTab}
    Element Should Be Visible                       ${ActionsSupportDocsTab}
    Click Element                                   ${ActionsPF}
    Wait Until Element Is Visible                   ${ActionsPFAddAction}                       40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/New Actions Record Opened - Add Action phase.png
    #Business unit
    Log to Console      Business unit
    Click Element                                   ${ActionsBUDD}
    Wait Until Element Is Visible                   ${ActionsBUGlobalCompanyExpand}              40 seconds
    Click Element                                   ${ActionsBUGlobalCompanyExpand}
    Wait Until Element Is Visible                   ${ActionsBUSouthAfricaExpand}                40 seconds
    Click Element                                   ${ActionsBUSouthAfricaExpand}
    Wait Until Element Is Visible                   ${ActionsBUVictorySite}                      40 seconds
    Click Element                                   ${ActionsBUVictorySite}
    #Action assignee
    Log to Console      Action assignee
    Click Element                                   ${ActionsAssigneeDD}
    Wait Until Element Is Visible                   ${Actions2Manager}                           40 seconds
    Click Element                                   ${Actions2Manager}
    #Action owner
    Log to Console      Action owner
    Element Should Be Visible                       ${ActionsOwner2Manager}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Owner 2 Manager.png
    #Action description
    Log to Console      Action description
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsDescription}                        FR1_Capture Actions_AS1 ${CurrentDate}
    #Action category
    Log to Console      Action category
    Click Element                                   ${ActionsCategoryDD}
    Wait Until Element Is Visible                   ${ActionsCategoryHealthSafety}               40 seconds
    Click Element                                   ${ActionsCategoryHealthSafety}
    #Action priority
    Log to Console      Action priority
    #Low
    Click Element                                   ${ActionsPriorityDD}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsPriorityDDLow}                      40 seconds
    Click Element                                   ${ActionsPriorityDDLow}
    Element Should Be Visible                       ${ActionsPriorityLowGreen}
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Priority Low Green.png
    #Cost
    Log to Console      Cost
    Click Element                                   ${ActionsCostDD}
    Wait Until Element Is Visible                   ${ActionsCostZAR}                            40 seconds
    Click Element                                   ${ActionsCostZAR}
    Input Text                                      ${ActionsCostInput}                          1234
    #Recurring action?
    Log to Console      Recurring action?
    Click Element                                   ${ActionsRecurringActionDD}
    Wait Until Element Is Visible                   ${ActionsRecurringActionDDYes}               40 seconds
    Click Element                                   ${ActionsRecurringActionDDYes}
    Scroll Element Into View                        ${ActionsCreateActionBtn}
    Sleep       1
    #Recurrence Frequency
    Element Should Be Visible                       ${ActionsRecurrenceFrequencyLabel}
    #Recurrence Range
    Element Should Be Visible                       ${ActionsRecurrenceRangeLabel}
    #Action status
    Log to Console      Action status - Scheduled
    Element Should Be Visible                       ${ActionsStatusScheduled}
    #Pending days required?
    Log to Console      Pending days required?
    Element Should Not Be Visible                   ${ActionsPendingDaysRequiredDDNo}
    #Action due date
    Log to Console      Action due date
    Element Should Not Be Visible                   ${ActionsDueDate}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Fields triggered and removed.png
    #Action Frequency
    Input Text                                      ${ActionsActionFrequencyInput}               7
    Click Element                                   ${ActionsActionFrequencyDD}
    Wait Until Element Is Visible                   ${ActionsActionFrequencyDays}                40 seconds
    Click Element                                   ${ActionsActionFrequencyDays}
    #Include weekends?
    Log to Console      Include weekends? = No
    Element Should Be Visible                       ${ActionsIncludeWeekendsDDNo}
    #Action start/due date
    Log to Console      Action start/due date
    ${CurrentDate}          Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsStartDueDate}                      ${CurrentDate}
    #Recurrence end date
    Log to Console      Recurrence end date
    ${EndDate}          Get Current Date            result_format=%d/%m/%Y                      increment=+14 day
    Set Global Variable                             ${EndDate}
    Input Text                                      ${ActionsEndDate}                            ${EndDate}
    #Set number of occurrences?
    Element Should Be Visible                       ${ActionsSetNoOccurrencesDDNo}
    #Pending days
    Log to Console      Pending days
    Input Text                                      ${ActionsPendingDays}                        3
    #Notify in advance?
    Log to Console      Notify in advance?
    Click Element                                   ${ActionsNotifyInAdvanceDD}
    Wait Until Element Is Visible                   ${ActionsNotifyInAdvanceYes}                 40 seconds
    Click Element                                   ${ActionsNotifyInAdvanceYes}
    #Period of pre-escalation
    Log to Console      Period of pre-escalation
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    Wait Until Element Is Visible                   ${ActionsPeriodPreEscalation3Days}           40 seconds
    Click Element                                   ${ActionsPeriodPreEscalation3Days}
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    #Create Action Button
    Log to Console      Create Action Button
    Click Element                                   ${ActionsCreateActionBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    Element Should Be Visible                       ${ActionsPFScheduled}
    Element Should Be Visible                       ${ActionsFeedbackTab}
    Element Should Be Visible                       ${ActionsExtensionRequestLogTab}
    Element Should Be Visible                       ${ActionsEscalationDDIanAdmin}
    Scroll Element Into View                        ${ActionsRequestActionExtensionBtn}
    Element Should Be Visible                       ${ActionsStatusPending}
    Element Should Be Visible                       ${ActionsActionCompleteFeedbackBtn}
    Element Should Be Visible                       ${ActionsRecordNo}
    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record Saved - To be initiated/Scheduled phase Pending Status.png

#*********************************************** FR1-01: Capture Actions_AS2_Initiated ******************************************************
Capture Actions_AS2_Initiated
    #Click on Actions Add Button
    Log to Console     Click on Actions Add Button
    Click Element                                   ${ActionsAddBtn}
    Wait Until Element Is Visible                   ${AdHocActionsRecordHeader}                 40 seconds
    #Save and Continue Button
    Element Should Be Visible                       ${ActionsCreateActionBtn}
    Element Should Be Visible                       ${ActionDetailTab}
    Element Should Be Visible                       ${ActionsSupportDocsTab}
    Click Element                                   ${ActionsPF}
    Wait Until Element Is Visible                   ${ActionsPFAddAction}                       40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/New Actions Record Opened - Add Action phase.png
    #Business unit
    Log to Console      Business unit
    Click Element                                   ${ActionsBUDD}
    Wait Until Element Is Visible                   ${ActionsBUGlobalCompanyExpand}              40 seconds
    Click Element                                   ${ActionsBUGlobalCompanyExpand}
    Wait Until Element Is Visible                   ${ActionsBUSouthAfricaExpand}                40 seconds
    Click Element                                   ${ActionsBUSouthAfricaExpand}
    Wait Until Element Is Visible                   ${ActionsBUVictorySite}                      40 seconds
    Click Element                                   ${ActionsBUVictorySite}
    #Action assignee
    Log to Console      Action assignee
    Click Element                                   ${ActionsAssigneeDD}
    Wait Until Element Is Visible                   ${Actions2Manager}                           40 seconds
    Click Element                                   ${Actions2Manager}
    #Action owner
    Log to Console      Action owner
    Element Should Be Visible                       ${ActionsOwner2Manager}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Owner 2 Manager.png
    #Action description
    Log to Console      Action description
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsDescription}                        FR1_Capture Actions_AS2_Initiated ${CurrentDate}
    #Action category
    Log to Console      Action category
    Click Element                                   ${ActionsCategoryDD}
    Wait Until Element Is Visible                   ${ActionsCategoryHealthSafety}               40 seconds
    Click Element                                   ${ActionsCategoryHealthSafety}
    #Action priority
    Log to Console      Action priority
    #High
    Click Element                                   ${ActionsPriorityDD}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsPriorityDDHigh}                     40 seconds
    Click Element                                   ${ActionsPriorityDDHigh}
    Element Should Be Visible                       ${ActionsPriorityHighRed}
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Priority High Red.png
    #Cost
    Log to Console      Cost
    Click Element                                   ${ActionsCostDD}
    Wait Until Element Is Visible                   ${ActionsCostZAR}                            40 seconds
    Click Element                                   ${ActionsCostZAR}
    Input Text                                      ${ActionsCostInput}                          1234
    #Recurring action?
    Log to Console      Recurring action?
    Element Should Be Visible                       ${ActionsRecurringActionDDNo}
    #Pending days required?
    Log to Console      Pending days required?
    Scroll Element Into View                        ${ActionsCreateActionBtn}
    Sleep       1
    Click Element                                   ${ActionsPendingDaysRequiredDD}
    Wait Until Element Is Visible                   ${ActionsPendingDaysRequiredDDYes}           40 seconds
    Click Element                                   ${ActionsPendingDaysRequiredDDYes}
    Element Should Be Visible                       ${ActionsPendingDaysLabel}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Pending Days Required = Yes - Pending Days triggered.png
    #Pending days
    Log to Console      Pending days
    Input Text                                      ${ActionsPendingDaysInput}                  3
    #Action due date
    Log to Console      Action due date
    ${FutureDate}          Get Current Date            result_format=%d/%m/%Y                     increment=+5 day
    Set Global Variable                             ${FutureDate}
    Input Text                                      ${ActionsDueDate}                            ${FutureDate}
    #Action status
    Log to Console      Action status
    Element Should Be Visible                       ${ActionsStatusToBeInitiated}
    Click Element                                   ${ActionsCreateActionBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    Element Should Be Visible                       ${ActionsPFScheduled}
    Element Should Be Visible                       ${ActionsFeedbackTab}
    Element Should Be Visible                       ${ActionsExtensionRequestLogTab}
    Element Should Be Visible                       ${ActionsEscalationDDIanAdmin}
    Scroll Element Into View                        ${ActionsRequestActionExtensionBtn}
    Element Should Be Visible                       ${ActionsStatusToBeInitiated}
    Element Should Be Visible                       ${ActionsActionCompleteFeedbackBtn}
    Element Should Be Visible                       ${ActionsRecordNo}
    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsRecordNo}
    log    ${recordnumber}
    Log to Console      ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record Saved - To be initiated/Scheduled phase ToBeInitiated Status.png

#*********************************************** FR1-01: Capture Actions_AS2_Pending ******************************************************
Capture Actions_AS2_Pending
    #Click on Actions Add Button
    Log to Console     Click on Actions Add Button
    Click Element                                   ${ActionsAddBtn}
    Wait Until Element Is Visible                   ${AdHocActionsRecordHeader}                 40 seconds
    #Save and Continue Button
    Element Should Be Visible                       ${ActionsCreateActionBtn}
    Element Should Be Visible                       ${ActionDetailTab}
    Element Should Be Visible                       ${ActionsSupportDocsTab}
    Click Element                                   ${ActionsPF}
    Wait Until Element Is Visible                   ${ActionsPFAddAction}                       40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/New Actions Record Opened - Add Action phase.png
    #Business unit
    Log to Console      Business unit
    Click Element                                   ${ActionsBUDD}
    Wait Until Element Is Visible                   ${ActionsBUGlobalCompanyExpand}              40 seconds
    Click Element                                   ${ActionsBUGlobalCompanyExpand}
    Wait Until Element Is Visible                   ${ActionsBUSouthAfricaExpand}                40 seconds
    Click Element                                   ${ActionsBUSouthAfricaExpand}
    Wait Until Element Is Visible                   ${ActionsBUVictorySite}                      40 seconds
    Click Element                                   ${ActionsBUVictorySite}
    #Action assignee
    Log to Console      Action assignee
    Click Element                                   ${ActionsAssigneeDD}
    Wait Until Element Is Visible                   ${Actions2Manager}                           40 seconds
    Click Element                                   ${Actions2Manager}
    #Action owner
    Log to Console      Action owner
    Element Should Be Visible                       ${ActionsOwner2Manager}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Owner 2 Manager.png
    #Action description
    Log to Console      Action description
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsDescription}                        FR1_Capture Actions_AS2_Pending ${CurrentDate}
    #Action category
    Log to Console      Action category
    Click Element                                   ${ActionsCategoryDD}
    Wait Until Element Is Visible                   ${ActionsCategoryHealthSafety}               40 seconds
    Click Element                                   ${ActionsCategoryHealthSafety}
    #Action priority
    Log to Console      Action priority
    #High
    Click Element                                   ${ActionsPriorityDD}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsPriorityDDHigh}                     40 seconds
    Click Element                                   ${ActionsPriorityDDHigh}
    Element Should Be Visible                       ${ActionsPriorityHighRed}
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Priority High Red.png
    #Cost
    Log to Console      Cost
    Click Element                                   ${ActionsCostDD}
    Wait Until Element Is Visible                   ${ActionsCostZAR}                            40 seconds
    Click Element                                   ${ActionsCostZAR}
    Input Text                                      ${ActionsCostInput}                          1234
    #Recurring action?
    Log to Console      Recurring action?
    Element Should Be Visible                       ${ActionsRecurringActionDDNo}
    #Pending days required?
    Log to Console      Pending days required?
    Scroll Element Into View                        ${ActionsCreateActionBtn}
    Sleep       1
    Click Element                                   ${ActionsPendingDaysRequiredDD}
    Wait Until Element Is Visible                   ${ActionsPendingDaysRequiredDDYes}           40 seconds
    Click Element                                   ${ActionsPendingDaysRequiredDDYes}
    Element Should Be Visible                       ${ActionsPendingDaysLabel}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Pending Days Required = Yes - Pending Days triggered.png
    #Pending days
    Log to Console      Pending days
    Input Text                                      ${ActionsPendingDaysInput}                  3
    #Action due date
    Log to Console      Action due date
    ${FutureDate}          Get Current Date            result_format=%d/%m/%Y                     increment=+3 day
    Set Global Variable                             ${FutureDate}
    Input Text                                      ${ActionsDueDate}                            ${FutureDate}
    #Action status
    Log to Console      Action status
    Element Should Be Visible                       ${ActionsStatusToBeInitiated}
    Click Element                                   ${ActionsCreateActionBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    Element Should Be Visible                       ${ActionsPFScheduled}
    Element Should Be Visible                       ${ActionsFeedbackTab}
    Element Should Be Visible                       ${ActionsExtensionRequestLogTab}
    Element Should Be Visible                       ${ActionsEscalationDDIanAdmin}
    Scroll Element Into View                        ${ActionsRequestActionExtensionBtn}
    Element Should Be Visible                       ${ActionsStatusPending}
    Element Should Be Visible                       ${ActionsActionCompleteFeedbackBtn}
    Element Should Be Visible                       ${ActionsRecordNo}
    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsRecordNo}
    log    ${recordnumber}
    Log to Console      ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record Saved - To be initiated/Scheduled phase Pending Status.png

#*********************************************** FR1-01: Capture Actions_AS3 ******************************************************
Capture Actions_AS3
    #Click on Actions Add Button
    Log to Console     Click on Actions Add Button
    Click Element                                   ${ActionsAddBtn}
    Wait Until Element Is Visible                   ${AdHocActionsRecordHeader}                 40 seconds
    #Save and Continue Button
    Element Should Be Visible                       ${ActionsCreateActionBtn}
    Element Should Be Visible                       ${ActionDetailTab}
    Element Should Be Visible                       ${ActionsSupportDocsTab}
    Click Element                                   ${ActionsPF}
    Wait Until Element Is Visible                   ${ActionsPFAddAction}                       40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/New Actions Record Opened - Add Action phase.png
    #Business unit
    Log to Console      Business unit
    Click Element                                   ${ActionsBUDD}
    Wait Until Element Is Visible                   ${ActionsBUGlobalCompanyExpand}              40 seconds
    Click Element                                   ${ActionsBUGlobalCompanyExpand}
    Wait Until Element Is Visible                   ${ActionsBUSouthAfricaExpand}                40 seconds
    Click Element                                   ${ActionsBUSouthAfricaExpand}
    Wait Until Element Is Visible                   ${ActionsBUVictorySite}                      40 seconds
    Click Element                                   ${ActionsBUVictorySite}
    #Action assignee
    Log to Console      Action assignee
    Click Element                                   ${ActionsAssigneeDD}
    Wait Until Element Is Visible                   ${Actions2Manager}                           40 seconds
    Click Element                                   ${Actions2Manager}
    #Action owner
    Log to Console      Action owner
    Element Should Be Visible                       ${ActionsOwner2Manager}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Owner 2 Manager.png
    #Action description
    Log to Console      Action description
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsDescription}                        FR1_Capture Actions_AS3 ${CurrentDate}
    #Action category
    Log to Console      Action category
    Click Element                                   ${ActionsCategoryDD}
    Wait Until Element Is Visible                   ${ActionsCategoryHealthSafety}               40 seconds
    Click Element                                   ${ActionsCategoryHealthSafety}
    #Action priority
    Log to Console      Action priority
    #Low
    Click Element                                   ${ActionsPriorityDD}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsPriorityDDLow}                      40 seconds
    Click Element                                   ${ActionsPriorityDDLow}
    Element Should Be Visible                       ${ActionsPriorityLowGreen}
    Sleep       1
    #High
    Click Element                                   ${ActionsPriorityDD}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsPriorityDDHigh}                     40 seconds
    Click Element                                   ${ActionsPriorityDDHigh}
    Element Should Be Visible                       ${ActionsPriorityHighRed}
    Sleep       1
    #Medium
    Click Element                                   ${ActionsPriorityDD}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsPriorityDDMedium}                   40 seconds
    Click Element                                   ${ActionsPriorityDDMedium}
    Element Should Be Visible                       ${ActionsPriorityMediumOrange}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Priority Medium Orange.png
    #Cost
    Log to Console      Cost
    Click Element                                   ${ActionsCostDD}
    Wait Until Element Is Visible                   ${ActionsCostZAR}                            40 seconds
    Click Element                                   ${ActionsCostZAR}
    Input Text                                      ${ActionsCostInput}                          1234
    #Recurring action?
    Log to Console      Recurring action?
    Element Should Be Visible                       ${ActionsRecurringActionDDNo}
    #Pending days required?
    Log to Console      Pending days required?
    Element Should Be Visible                       ${ActionsPendingDaysRequiredDDNo}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Recurring Action_Pending Days Dropdowns - No.png
    #Action due date
    Log to Console      Action due date
    ${FutureDate}          Get Current Date            result_format=%d/%m/%Y                     increment=+5 day
    Set Global Variable                             ${FutureDate}
    Input Text                                      ${ActionsDueDate}                            ${FutureDate}
    #Action status
    Log to Console      Action status
    Element Should Be Visible                       ${ActionsStatusToBeInitiated}
    Scroll Element Into View                        ${ActionsCreateActionBtn}
    Sleep       1
    #Replicate this action to multiple users?
    Log to Console      Replicate this action to multiple users?
    Click Element                                   ${ActionsReplicateMultipleUsers}
    Element Should Be Visible                       ${ActionsMultipleUsersLabel}
    Element Should Be Visible                       ${ActionsMultipleUsersCheckbox}
    #Multiple Users Checkbox
    Log to Console      MultipleUsersCheckbox
    Click Element                                   ${ActionsMultipleUsers3Logger}
    Click Element                                   ${ActionsMultipleUsers4Viewer}
    #Create Action Button
    Log to Console      Create Action Button
    Click Element                                   ${ActionsCreateActionBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    Element Should Be Visible                       ${ActionsPFScheduled}
    Element Should Be Visible                       ${ActionsFeedbackTab}
    Element Should Be Visible                       ${ActionsExtensionRequestLogTab}
    Element Should Be Visible                       ${ActionsEscalationDDIanAdmin}
    Scroll Element Into View                        ${ActionsRequestActionExtensionBtn}
    Element Should Be Visible                       ${ActionsStatusToBeInitiated}
    Element Should Be Visible                       ${ActionsActionCompleteFeedbackBtn}
    Element Should Be Visible                       ${ActionsRecordNo}
    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record Saved - To be initiated/Scheduled phase Pending Status.png
    #Close Actions Record
    Click Element                                   ${ActionsCloseBtn}
    #Confirmation message
    Log to Console      Confirmation message
    Switch Window
    Sleep       1
    Click Element                                   ${ActionsConfirmMessageYes}
    Sleep       1
    Select Frame                                    ${iFrame}
    Sleep       3
    Wait Until Element Is Visible                   ${ActionsAdHocActionSubMod}                      60 seconds
    Element Should Be Visible                       ${ActionsReplicatedRecord3Logger}
    Element Should Be Visible                       ${ActionsReplicatedRecord4Viewer}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record Closed and Additional Records created for Multiple Users.png

