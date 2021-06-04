*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Audits/vars.robot
Resource    ../../Resources/Actions/Actions_vars.robot
Library     DateTime

*** Keywords ***
#*********************************************** FR2-01: Capture Action Feedback_MS ******************************************************
Capture Action Feedback_MS
    #Actions Feedback Tab
    Log to Console      Actions Feedback Tab
    Click Element                                   ${ActionsFeedbackTab}
    Wait Until Page Contains Element                ${ActionsFeedbackAdd}                           40 seconds
    Sleep       1
    #Add Button
    Log to Console      Add Button
    Click Element                                   ${ActionsFeedbackAdd}
    #Process flow
    Sleep      5
    Element Should Be Visible                       ${ActionsFeedbackPF}
    Element Should Be Visible                       ${ActionsFeedbackSendFeed2Man}
    Element Should Be Visible                       ${ActionsFeedbackSaveCloseBtn}
    Click Element                                   ${ActionsFeedbackPF}
    Wait Until Element Is Visible                   ${ActionsFeedbackPFAdd}                         40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/New Actions Feedback Record Opened - Add phase.png
    #Action feedback
    Log to Console      Action feedback
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsFeedbackText}                          FR2-01: Capture Action Feedback_MS ${CurrentDate}
    #Action complete dropdown
    Log to Console      Action complete dropdown
    Click Element                                   ${ActionsFeedbackDD}
    Wait Until Element Is Visible                   ${ActionsFeedbackDDNo}                           40 seconds
    Click Element                                   ${ActionsFeedbackDDNo}
    #Send action feedback to
    Log to Console      Send action feedback to:
    Click Element                                   ${ActionsFeedbackSendFeed2Manager}
    Click Element                                   ${ActionsFeedbackSendFeed3Logger}
    #Save button
    Log to Console      Save button
    Click Element                                   ${ActionsFeedbackSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    Element Should Be Visible                       ${ActionsFeedbackPFEdit}
    Element Should Be Visible                       ${ActionsFeedbackRecordNo}
    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsFeedbackRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Feedback Record Saved - Edit phase.png
    #Save and close
    Log to Console      Save and close
    Click Element                                   ${ActionsFeedbackSaveClose}
    Sleep       5
    Click Element                                   ${ActionsPF}
    Element Should Be Visible                       ${ActionsPFInProgress}
    Scroll Element Into View                        ${ActionsFeedbackStatusInProgress}
    Element Should Be Visible                       ${ActionsPFInProgress}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record In Progress state - In progress/Overdue phase.png

FR2_Action_FeedbackNotification
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
    #Log to Console      Actions Feedback Notification
    sleep       3 seconds
    Wait Until Element Is Visible       ${ActionsFeedbackSubject}          60 seconds
    Click Element                       ${ActionsFeedbackSubject}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Feedback Logged Email Selection.png
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
    #Log to Console      Wait for Actions Feedback Record
    sleep       20
    Select Frame                        ${iFrame}
    Sleep       5
    Wait Until Element Is Visible       ${ActionsFeedbackPF}                  60 seconds
    Click Element                       ${ActionsFeedbackPF}
    Wait Until Page Contains Element    ${ActionsFeedbackPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Feedback Record Opened.png

#*********************************************** FR2-01: Capture Action Feedback_AS1 ******************************************************
Capture Action Feedback_AS1
    #Add Actions Feedback Button
    Log to Console      Add Actions Feedback Button
    Click Element                                   ${ActionsFeedbackCompleteBtn}
    #Process flow
    Sleep      5
    Element Should Be Visible                       ${ActionsFeedbackPF}
    Element Should Be Visible                       ${ActionsFeedbackSendFeed2Man}
    Element Should Be Visible                       ${ActionsFeedbackSaveCloseBtn}
    Click Element                                   ${ActionsFeedbackPF}
    Wait Until Element Is Visible                   ${ActionsFeedbackPFAdd}                         40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/New Actions Feedback Record Opened - Add phase.png
    #Action feedback
    Log to Console      Action feedback
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsFeedbackText}                          FR2-01: Capture Action Feedback_AS1 ${CurrentDate}
    #Action complete dropdown
    Log to Console      Action complete dropdown
    Click Element                                   ${ActionsFeedbackDD}
    Wait Until Element Is Visible                   ${ActionsFeedbackDDNo}                           40 seconds
    Click Element                                   ${ActionsFeedbackDDNo}
    #Send action feedback to
    Log to Console      Send action feedback to:
    Click Element                                   ${ActionsFeedbackSendFeed2Manager}
    Click Element                                   ${ActionsFeedbackSendFeed3Logger}
    #Save button
    Log to Console      Save button
    Click Element                                   ${ActionsFeedbackSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    Element Should Be Visible                       ${ActionsFeedbackPFEdit}
    Element Should Be Visible                       ${ActionsFeedbackRecordNo}
    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsFeedbackRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Feedback Record Saved - Edit phase.png
    #Save and close
    Log to Console      Save and close
    Click Element                                   ${ActionsFeedbackSaveClose}
    Sleep       5
    Click Element                                   ${ActionsPF}
    Element Should Be Visible                       ${ActionsPFInProgress}
    Scroll Element Into View                        ${ActionsFeedbackStatusInProgress}
    Element Should Be Visible                       ${ActionsPFInProgress}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record In Progress state - In progress/Overdue phase.png

##*********************************************** FR2-01: Capture Action Feedback_AS1 ******************************************************
#Capture Action Feedback_AS1
#    #Add Actions Feedback Button
#    Log to Console      Add Actions Feedback Button
#    Click Element                                   ${ActionsFeedbackCompleteBtn}
#    #Process flow
#    Sleep      5
#    Element Should Be Visible                       ${ActionsFeedbackPF}
#    Element Should Be Visible                       ${ActionsFeedbackSendFeed2Man}
#    Element Should Be Visible                       ${ActionsFeedbackSaveCloseBtn}
#    Click Element                                   ${ActionsFeedbackPF}
#    Wait Until Element Is Visible                   ${ActionsFeedbackPFAdd}                         40 seconds
#    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/New Actions Feedback Record Opened - Add phase.png
#    #Action feedback
#    Log to Console      Action feedback
#    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
#    Set Global Variable                             ${CurrentDate}
#    Input Text                                      ${ActionsFeedbackText}                          FR2-01: Capture Action Feedback_AS1 ${CurrentDate}
#    #Action complete dropdown
#    Log to Console      Action complete dropdown
#    Click Element                                   ${ActionsFeedbackDD}
#    Wait Until Element Is Visible                   ${ActionsFeedbackDDNo}                           40 seconds
#    Click Element                                   ${ActionsFeedbackDDNo}
#    #Save button
#    Log to Console      Save button
#    Click Element                                   ${ActionsFeedbackSaveBtn}
#    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
#    Element Should Be Visible                       ${ActionsFeedbackPFEdit}
#    Element Should Be Visible                       ${ActionsFeedbackRecordNo}
#    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsFeedbackRecordNo}
#    log    ${recordnumber}
#    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Feedback Record Saved - Edit phase.png
#    #Save and close
#    Log to Console      Save and close
#    Click Element                                   ${ActionsFeedbackSaveClose}
#    Sleep       5
#    Click Element                                   ${ActionsPF}
#    Element Should Be Visible                       ${ActionsPFInProgress}
#    Scroll Element Into View                        ${ActionsFeedbackStatusInProgress}
#    Element Should Be Visible                       ${ActionsPFInProgress}
#    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record In Progress state - In progress/Overdue phase.png

#*********************************************** FR2-01: Capture Action Feedback_AS2 ******************************************************
Capture Action Feedback_AS2
    #Actions Feedback Tab
    Log to Console      Actions Feedback Tab
    Click Element                                   ${ActionsFeedbackTab}
    Wait Until Page Contains Element                ${ActionsFeedbackAdd}                           40 seconds
    Sleep       1
    #Add Button
    Log to Console      Add Button
    Click Element                                   ${ActionsFeedbackAdd}
    #Process flow
    Sleep      5
    Element Should Be Visible                       ${ActionsFeedbackPF}
    Element Should Be Visible                       ${ActionsFeedbackSendFeed2Man}
    Element Should Be Visible                       ${ActionsFeedbackSaveCloseBtn}
    Click Element                                   ${ActionsFeedbackPF}
    Wait Until Element Is Visible                   ${ActionsFeedbackPFAdd}                         40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/New Actions Feedback Record Opened - Add phase.png
    #Action feedback
    Log to Console      Action feedback
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsFeedbackText}                          FR2-01: Capture Action Feedback_AS2 ${CurrentDate}
    #Action complete dropdown
    Log to Console      Action complete dropdown
    Click Element                                   ${ActionsFeedbackDD}
    Wait Until Element Is Visible                   ${ActionsFeedbackDDYes}                           40 seconds
    Click Element                                   ${ActionsFeedbackDDYes}
    #Save button
    Log to Console      Save button
    Click Element                                   ${ActionsFeedbackSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    Element Should Be Visible                       ${ActionsFeedbackPFEdit}
    Element Should Be Visible                       ${ActionsFeedbackRecordNo}
    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsFeedbackRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Feedback Record Saved - Edit phase.png
    #Save and close
    Log to Console      Save and close
    Click Element                                   ${ActionsFeedbackSaveClose}
    Sleep       5
    Click Element                                   ${ActionsPF}
    Element Should Be Visible                       ${ActionsPFAwaitSignOff}
    Scroll Element Into View                        ${ActionsFeedbackStatusAwaitingSignOff}
    Element Should Be Visible                       ${ActionsFeedbackStatusAwaitingSignOff}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record Awaiting Sign Off state - Awaiting Sign Off phase.png

FR2_Action_FeedbackAwaitingSignOffNotification
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
    #Actions - AwaitingSignOff Notification
    #Log to Console      Actions AwaitingSignOff Notification
    sleep       3 seconds
    Wait Until Element Is Visible       ${ActionsFeedbackAwaitingSignOffSubject}          60 seconds
    Click Element                       ${ActionsFeedbackAwaitingSignOffSubject}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Feedback Logged Email Selection.png
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
    #Log to Console      Wait for Actions Feedback Record
    sleep       20
    Select Frame                        ${iFrame}
    Sleep       5
    Wait Until Element Is Visible       ${ActionsFeedbackPF}                  60 seconds
    Click Element                       ${ActionsFeedbackPF}
    Wait Until Page Contains Element    ${ActionsFeedbackPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Feedback Record Opened.png

#*********************************************** FR3-01: Add Action Extension Request_MS ******************************************************
Add Action Extension Request_MS
    #Actions Extensions Tab
    Log to Console      Actions Extensions Tab
    Click Element                                   ${ActionsExtensionRequestLogTab}
    Wait Until Page Contains Element                ${ActionsExtensionRequestAdd}                           40 seconds
    Sleep       1
    #Add Button
    Log to Console      Add Button
    Click Element                                   ${ActionsExtensionRequestAdd}
    #Process flow
    Sleep      5
    Element Should Be Visible                       ${ActionsExtensionRequestPF}
    Element Should Be Visible                       ${ActionsExtensionSaveCloseBtn}
    Click Element                                   ${ActionsExtensionRequestPF}
    Wait Until Element Is Visible                   ${ActionsExtensionPFAdd}                         40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/New Actions Action Date Change Log Record Opened - Add phase.png
    #Requested due date
    Log to Console      Requested due date
    ${RequestedDate}          Get Current Date            result_format=%d/%m/%Y                   increment=+10 day
    Set Global Variable                             ${RequestedDate}
    Input Text                                      ${ActionsExtensionRequestedDate}                            ${RequestedDate}
    #Reason for change
    Log to Console      Reason for change
    Input Text                                      ${ActionsExtensionReasonChange}                             FR3-01: Add Action Extension Request_MS
    #Save button
    Log to Console      Save button
    Click Element                                   ${ActionsExtensionSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    Element Should Be Visible                       ${ActionsExtensionPFEdit}
    Element Should Be Visible                       ${ActionsExtensionRecordNo}
    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsExtensionRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Extensions Record Saved - Edit phase.png
    #Save and close
    Log to Console      Save and close
    Click Element                                   ${ActionsExtensionSaveCloseBtn}
    Sleep       5
    Click Element                                   ${ActionsPF}
    Element Should Be Visible                       ${ActionsPFScheduled}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record Pending state - To be initiated/Scheduled phase.png

FR3_Action_ExtensionRequestNotification
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
    #Actions - AwaitingSignOff Notification
    #Log to Console      Actions AwaitingSignOff Notification
    sleep       3 seconds
    Wait Until Element Is Visible       ${ActionsExtensionSubject}          60 seconds
    Click Element                       ${ActionsExtensionSubject}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Feedback Logged Email Selection.png
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
    #Log to Console      Wait for Actions Feedback Record
    sleep       20
    Select Frame                        ${iFrame}
    Sleep       5
    Wait Until Element Is Visible       ${ActionsExtensionRequestPF}                  60 seconds
    Click Element                       ${ActionsExtensionRequestPF}
    Wait Until Page Contains Element    ${ActionsExtensionPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Extensions Record Opened.png

#*********************************************** FR3-01: Add Action Extension Request_AS ******************************************************
Add Action Extension Request_AS
    #Actions Request action extension button
    Log to Console      Actions Request action extension button
    Click Element                                   ${ActionsRequestActionExtensionBtn}
    #Process flow
    Sleep      8
    Element Should Be Visible                       ${ActionsExtensionRequestPF}
    Element Should Be Visible                       ${ActionsExtensionSaveCloseBtn}
    Click Element                                   ${ActionsExtensionRequestPF}
    Wait Until Element Is Visible                   ${ActionsExtensionPFAdd}                         40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/New Actions Action Date Change Log Record Opened - Add phase.png
    #Requested due date
    Log to Console      Requested due date
    ${RequestedDate}          Get Current Date            result_format=%d/%m/%Y                   increment=+8 day
    Set Global Variable                             ${RequestedDate}
    Input Text                                      ${ActionsExtensionRequestedDate}                            ${RequestedDate}
    #Reason for change
    Log to Console      Reason for change
    Input Text                                      ${ActionsExtensionReasonChange}                             FR3-01: Add Action Extension Request_AS
    #Save button
    Log to Console      Save button
    Click Element                                   ${ActionsExtensionSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    Element Should Be Visible                       ${ActionsExtensionPFEdit}
    Element Should Be Visible                       ${ActionsExtensionRecordNo}
    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsExtensionRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Extensions Record Saved - Edit phase.png
    #Save and close
    Log to Console      Save and close
    Click Element                                   ${ActionsExtensionSaveCloseBtn}
    Sleep       5
    Click Element                                   ${ActionsPF}
    Element Should Be Visible                       ${ActionsPFScheduled}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record Pending state - To be initiated/Scheduled phase.png

#*********************************************** FR3-02: Approve Action Extension Request_MS ******************************************************
Approve Action Extension Request_MS
    #Click on Ad-Hoc Actions Search Button
    Log to Console     Click on Ad-Hoc Actions Search Button
    Sleep       1
    Wait Until Element Is Visible                   ${AdHocActionsSearchButton}                 40 seconds
    Click Element                                   ${AdHocActionsSearchButton}
    Wait Until Element Is Visible                   ${AdHocActionsRecords}                      40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Ad-Hoc Actions Records Visible.png
    #Select Ad-Hoc Actions Record
    Log to Console     Select Ad-Hoc Actions Record
    Click Element                                   ${ActionsExtensionApproveAdHocRecordSelect}
    Sleep       5
    Wait Until Element Is Visible                   ${ActionsExtensionApproveActionsRecordSelect}          60 seconds
    #Select Actions Record
    Log to Console     Select Actions Record
    Click Element                                   ${ActionsExtensionApproveActionsRecordSelect}
    Sleep       10
    Wait Until Element Is Visible                   ${AdHocActionsRecordHeader}                 40 seconds
    Click Element                                   ${ActionsPF}
    Wait Until Element Is Visible                   ${ActionsPFScheduled}                       40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Ad-Hoc Actions Records Visible.png
    #Actions Extensions Tab
    Log to Console      Actions Extensions Tab
    Click Element                                   ${ActionsExtensionRequestLogTab}
    Wait Until Page Contains Element                ${ActionsExtensionRequestAdd}                           40 seconds
    Sleep       1
    Wait Until Element Is Visible                   ${ActionsExtensionApproveChangeRecordOpen}              40 seconds
    Click Element                                   ${ActionsExtensionApproveChangeRecordOpen}
    Sleep       5
    Wait Until Element Is Visible                   ${ActionsExtensionApproveChangeRecordHeader}            40 seconds
    Element Should Be Visible                       ${ActionsExtensionRequestPF}
    Element Should Be Visible                       ${ActionsExtensionSaveCloseBtn}
    Click Element                                   ${ActionsExtensionRequestPF}
    Element Should Be Visible                       ${ActionsExtensionPFEdit}
    #Approve/reject request
    Log to Console      Approve/reject request
    Click Element                                   ${ActionsExtensionApproveApproveRejectDD}
    Wait Until Element Is Visible                   ${ActionsExtensionApproveApproveDDApproved}                 40 seconds
    Click Element                                   ${ActionsExtensionApproveApproveDDApproved}
    Element Should Be Visible                       ${ActionsExtensionApproveNewDueDateInput}
    Element Should Be Visible                       ${ActionsExtensionApproveCommentsInput}
    Sleep       1
    Click Element                                   ${ActionsExtensionApproveApproveRejectDD}
    Wait Until Element Is Visible                   ${ActionsExtensionApproveDDDeselect}                      40 seconds
    Click Element                                   ${ActionsExtensionApproveDDDeselect}
    Element Should Not Be Visible                   ${ActionsExtensionApproveNewDueDateInput}
    Element Should Not Be Visible                   ${ActionsExtensionApproveCommentsInput}
    Sleep       1
    Click Element                                   ${ActionsExtensionApproveApproveRejectDD}
    Wait Until Element Is Visible                   ${ActionsExtensionApproveApproveDDApproved}                 40 seconds
    Click Element                                   ${ActionsExtensionApproveApproveDDApproved}
    #New due date
    Log to Console      New due date
    ${RequestedDate}          Get Current Date            result_format=%d/%m/%Y                   increment=+10 day
    Set Global Variable                             ${RequestedDate}
    Input Text                                      ${ActionsExtensionApproveNewDueDateInput}                   ${RequestedDate}
    #Comments
    Log to Console      Comments
    Input Text                                      ${ActionsExtensionApproveCommentsInput}                     FR3-02: Approve Action Extension Request_MS
    #Save button
    Log to Console      Save button
    Click Element                                   ${ActionsExtensionSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    Element Should Be Visible                       ${ActionsExtensionPFClosed}
    Element Should Be Visible                       ${ActionsExtensionRecordNo}
    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsExtensionRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Extensions Record Saved - Closed phase.png
    #Close Action Date Change Log Record
    Log to Console      Close Action Date Change Log Record
    Click Element                                   ${ActionsExtensionApproveCloseBtn}
    Sleep       5
    Scroll Element Into View                        ${ActionsDueDate}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Extensions Record Closed - Action Due Date Updated.png

FR3_02_Action_ApproveActionExtensionRequestNotification
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
    #Actions - AwaitingSignOff Notification
    #Log to Console      Actions AwaitingSignOff Notification
    sleep       3 seconds
    Wait Until Element Is Visible       ${ActionsExtensionApprovedSubject}          60 seconds
    Click Element                       ${ActionsExtensionApprovedSubject}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Extension Apprved Email Selection.png
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
    #Log to Console      Wait for Actions Feedback Record
    sleep       20
    Select Frame                        ${iFrame}
    Sleep       5
    Wait Until Element Is Visible       ${ActionsExtensionRequestPF}                  60 seconds
    Click Element                       ${ActionsExtensionRequestPF}
    Wait Until Page Contains Element    ${ActionsExtensionPFClosed}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Extension Apprved Record Opened.png

#*********************************************** FR3-02: Reject Action Extension Request_AS ******************************************************
Reject Action Extension Request_AS
    #Click on Ad-Hoc Actions Search Button
    Log to Console     Click on Ad-Hoc Actions Search Button
    Sleep       1
    Wait Until Element Is Visible                   ${AdHocActionsSearchButton}                 40 seconds
    Click Element                                   ${AdHocActionsSearchButton}
    Wait Until Element Is Visible                   ${AdHocActionsRecords}                      40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Ad-Hoc Actions Records Visible.png
    #Select Ad-Hoc Actions Record
    Log to Console     Select Ad-Hoc Actions Record
    Click Element                                   ${ActionsExtensionApproveAdHocRecordSelect}
    Sleep       5
    Wait Until Element Is Visible                   ${ActionsExtensionApproveActionsRecordSelect}          60 seconds
    #Select Actions Record
    Log to Console     Select Actions Record
    Click Element                                   ${ActionsExtensionApproveActionsRecordSelect}
    Sleep       10
    Wait Until Element Is Visible                   ${AdHocActionsRecordHeader}                 40 seconds
    Click Element                                   ${ActionsPF}
    Wait Until Element Is Visible                   ${ActionsPFScheduled}                       40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Ad-Hoc Actions Records Visible.png
    #Actions Extensions Tab
    Log to Console      Actions Extensions Tab
    Click Element                                   ${ActionsExtensionRequestLogTab}
    Wait Until Page Contains Element                ${ActionsExtensionRequestAdd}                           40 seconds
    Sleep       1
    Wait Until Element Is Visible                   ${ActionsExtensionApproveChangeRecordOpen}              40 seconds
    Click Element                                   ${ActionsExtensionApproveChangeRecordOpen}
    Sleep       5
    Wait Until Element Is Visible                   ${ActionsExtensionApproveChangeRecordHeader}            40 seconds
    Element Should Be Visible                       ${ActionsExtensionRequestPF}
    Element Should Be Visible                       ${ActionsExtensionSaveCloseBtn}
    Click Element                                   ${ActionsExtensionRequestPF}
    Element Should Be Visible                       ${ActionsExtensionPFEdit}
    #Approve/reject request
    Log to Console      Approve/reject request
    Click Element                                   ${ActionsExtensionApproveApproveRejectDD}
    Wait Until Element Is Visible                   ${ActionsExtensionApproveApproveDDRejected}                 40 seconds
    Click Element                                   ${ActionsExtensionApproveApproveDDRejected}
    Element Should Be Visible                       ${ActionsExtensionApproveCommentsInput}
    Sleep       1
    Click Element                                   ${ActionsExtensionApproveApproveRejectDD}
    Wait Until Element Is Visible                   ${ActionsExtensionApproveDDDeselect}                      40 seconds
    Click Element                                   ${ActionsExtensionApproveDDDeselect}
    Element Should Not Be Visible                   ${ActionsExtensionApproveCommentsInput}
    Sleep       1
    Click Element                                   ${ActionsExtensionApproveApproveRejectDD}
    Wait Until Element Is Visible                   ${ActionsExtensionApproveApproveDDRejected}                 40 seconds
    Click Element                                   ${ActionsExtensionApproveApproveDDRejected}
    #Comments
    Log to Console      Comments
    Input Text                                      ${ActionsExtensionApproveCommentsInput}                     FR3-02: Approve Action Extension Request_AS
    #Save button
    Log to Console      Save button
    Click Element                                   ${ActionsExtensionSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    Element Should Be Visible                       ${ActionsExtensionPFEdit}
    Element Should Be Visible                       ${ActionsExtensionRecordNo}
    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsExtensionRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Extensions Record Saved - Edit phase.png
    #Close Action Date Change Log Record
    Log to Console      Close Action Date Change Log Record
    Click Element                                   ${ActionsExtensionApproveCloseBtn}
    Sleep       5
    Scroll Element Into View                        ${ActionsDueDate}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Extensions Record Closed - Action Due Date Same.png

FR3_02_Action_RejectActionExtensionRequestNotification
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
    #Actions - AwaitingSignOff Notification
    #Log to Console      Actions AwaitingSignOff Notification
    sleep       3 seconds
    Wait Until Element Is Visible       ${ActionsExtensionRejectedSubject}          60 seconds
    Click Element                       ${ActionsExtensionRejectedSubject}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Reject Extension Request Email Selection.png
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
    #Log to Console      Wait for Actions Extension Record
    sleep       20
    Select Frame                        ${iFrame}
    Sleep       5
    Wait Until Element Is Visible       ${ActionsExtensionRequestPF}                  60 seconds
    Click Element                       ${ActionsExtensionRequestPF}
    Wait Until Page Contains Element    ${ActionsExtensionPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Reject Extension Request Record Opened.png

#*********************************************** FR4-01: Sign Off an Action_MS ******************************************************
Sign Off an Action_MS
    #Click on Ad-Hoc Actions Search Button
    Log to Console     Click on Ad-Hoc Actions Search Button
    Sleep       1
    Wait Until Element Is Visible                   ${AdHocActionsSearchButton}                 40 seconds
    Click Element                                   ${AdHocActionsSearchButton}
    Wait Until Element Is Visible                   ${AdHocActionsRecords}                      40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Ad-Hoc Actions Records Visible.png
    #Select Ad-Hoc Actions Record
    Log to Console     Select Ad-Hoc Actions Record
    Click Element                                   ${ActionsExtensionApproveAdHocRecordSelect}
    Sleep       5
    Wait Until Element Is Visible                   ${ActionsSignOffActionsRecordSelect}          60 seconds
    #Select Actions Record
    Log to Console     Select Actions Record
    Click Element                                   ${ActionsSignOffActionsRecordSelect}
    Sleep       10
    Wait Until Element Is Visible                   ${AdHocActionsRecordHeader}                 40 seconds
    Click Element                                   ${ActionsPF}
    Wait Until Element Is Visible                   ${ActionsPFAwaitSignOff}                       40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Records Visible - Awaiting Sign Off.png
    #Actions Sign Off Tab
    Log to Console      Actions Sign Off Tab
    Click Element                                   ${ActionsSignOffTab}
    Sleep       1
    Wait Until Element Is Visible                   ${ActionsSignOffAddBtn}                     60 seconds
    #Actions Add Button
    Log to Console      Actions Add Button
    Click Element                                   ${ActionsSignOffAddBtn}
    Sleep       5
    Wait Until Element Is Visible                   ${ActionsSignOffRecordHeader}                     60 seconds
    Wait Until Element Is Visible                   ${ActionsSignOffPF}                             60 seconds
    #Process Flow
    Log to Console      Process Flow
    Click Element                                   ${ActionsSignOffPF}
    Wait Until Element Is Visible                   ${ActionsSignOffPFAdd}                          40 seconds
    #Sign off action dropdown
    Log to Console      Sign off action dropdown
    Click Element                                   ${ActionsSignOffDD}
    Wait Until Element Is Visible                   ${ActionsSignOffDDYes}                          40 seconds
    Click Element                                   ${ActionsSignOffDDYes}
    #Comments
    Log to Console      Comments
    Input Text                                      ${ActionsSignOffComments}                       FR4-01: Sign Off an Action_MS
    #Send feedback to additional users
    Log to Console      Send feedback to additional users
    Click Element                                   ${ActionsSignOffSendFeedback2Manager}
    Click Element                                   ${ActionsSignOffSendFeedback3Logger}
    #Save button
    Log to Console      Save button
    Click Element                                   ${ActionsSignOffSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    Element Should Be Visible                       ${ActionsSignOffPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Sign Off Record Saved - Edit Phase.png
    #Save and Close Button
    Click Element                                   ${ActionsSignOffSaveCloseBtn}
    Wait Until Element Is Visible                   ${ActionsRecordNo}                              60 seconds
    Click Element                                   ${ActionsPF}
    Wait Until Element Is Visible                   ${ActionsPFClosed}                              40 seconds
    Scroll Element Into View                        ${ActionsSignOffStatusCompleted}
    Element Should Be Visible                       ${ActionsSignOffStatusCompleted}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Sign Off Closed.png

FR4_01_Action_SignOffAcceptedNotification
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
    #Actions - Actions Sign Off Accepted Notification
    #Log to Console      Actions Sign Off Accepted Notification
    sleep       3 seconds
    Wait Until Element Is Visible       ${ActionsSignOffAcceptedSubject}          60 seconds
    Click Element                       ${ActionsSignOffAcceptedSubject}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Sign Off Accepted Email Selection.png
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
    #Log to Console      Wait for Actions Extension Record
    sleep       20
    Select Frame                        ${iFrame}
    Sleep       5
    Wait Until Element Is Visible       ${ActionsSignOffPF}                  60 seconds
    Click Element                       ${ActionsSignOffPF}
    Wait Until Page Contains Element    ${ActionsSignOffPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Sign Off Accepted Record Opened.png

FR4_01_Action_CompletedNotification
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
    #Actions - Actions Completed Notification
    #Log to Console      Actions Completed Notification
    sleep       3 seconds
    Wait Until Element Is Visible       ${ActionsCompletedSubject}          60 seconds
    Click Element                       ${ActionsCompletedSubject}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Completed Email Selection.png
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
    Wait Until Page Contains Element    ${ActionsPFClosed}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Completed Record Opened.png

#*********************************************** FR4-01: Sign Off an Action_AS ******************************************************
Sign Off an Action_AS
    #Click on Ad-Hoc Actions Search Button
    Log to Console     Click on Ad-Hoc Actions Search Button
    Sleep       1
    Wait Until Element Is Visible                   ${AdHocActionsSearchButton}                 40 seconds
    Click Element                                   ${AdHocActionsSearchButton}
    Wait Until Element Is Visible                   ${AdHocActionsRecords}                      40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Ad-Hoc Actions Records Visible.png
    #Select Ad-Hoc Actions Record
    Log to Console     Select Ad-Hoc Actions Record
    Click Element                                   ${ActionsExtensionApproveAdHocRecordSelect}
    Sleep       5
    Wait Until Element Is Visible                   ${ActionsSignOffActionsRecordSelect}          60 seconds
    #Select Actions Record
    Log to Console     Select Actions Record
    Click Element                                   ${ActionsSignOffActionsRecordSelect}
    Sleep       10
    Wait Until Element Is Visible                   ${AdHocActionsRecordHeader}                 40 seconds
    Click Element                                   ${ActionsPF}
    Wait Until Element Is Visible                   ${ActionsPFAwaitSignOff}                       40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Records Visible - Awaiting Sign Off.png
    #Actions Sign Off Tab
    Log to Console      Actions Sign Off Tab
    Click Element                                   ${ActionsSignOffTab}
    Sleep       1
    Wait Until Element Is Visible                   ${ActionsSignOffAddBtn}                     60 seconds
    #Actions Add Button
    Log to Console      Actions Add Button
    Click Element                                   ${ActionsSignOffAddBtn}
    Sleep       5
    Wait Until Element Is Visible                   ${ActionsSignOffRecordHeader}                     60 seconds
    Wait Until Element Is Visible                   ${ActionsSignOffPF}                             60 seconds
    #Process Flow
    Log to Console      Process Flow
    Click Element                                   ${ActionsSignOffPF}
    Wait Until Element Is Visible                   ${ActionsSignOffPFAdd}                          40 seconds
    #Sign off action dropdown
    Log to Console      Sign off action dropdown
    Click Element                                   ${ActionsSignOffDD}
    Wait Until Element Is Visible                   ${ActionsSignOffDDNo}                          40 seconds
    Click Element                                   ${ActionsSignOffDDNo}
    #Comments
    Log to Console      Comments
    Input Text                                      ${ActionsSignOffComments}                       FR4-01: Sign Off an Action_AS
    #Save button
    Log to Console      Save button
    Click Element                                   ${ActionsSignOffSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    Element Should Be Visible                       ${ActionsSignOffPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Sign Off Record Saved - Edit Phase.png
    #Save and Close Button
    Click Element                                   ${ActionsSignOffSaveCloseBtn}
    Wait Until Element Is Visible                   ${ActionsRecordNo}                              60 seconds
    Click Element                                   ${ActionsPF}
    Wait Until Element Is Visible                   ${ActionsPFInProgress}                          40 seconds
    Scroll Element Into View                        ${ActionsSignOffStatusInProgress}
    Element Should Be Visible                       ${ActionsSignOffStatusInProgress}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Sign Off Closed.png

FR4_01_Action_SignOffRejectedNotification
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
    #Actions - Actions Sign Off Accepted Notification
    #Log to Console      Actions Sign Off Accepted Notification
    sleep       3 seconds
    Wait Until Element Is Visible       ${ActionsSignOffRejectedSubject}          60 seconds
    Click Element                       ${ActionsSignOffRejectedSubject}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Sign Off Rejected Email Selection.png
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
    #Log to Console      Wait for Actions Extension Record
    sleep       20
    Select Frame                        ${iFrame}
    Sleep       5
    Wait Until Element Is Visible       ${ActionsSignOffPF}                  60 seconds
    Click Element                       ${ActionsSignOffPF}
    Wait Until Page Contains Element    ${ActionsSignOffPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Sign Off Accepted Record Opened.png

#*********************************************** FR5-01: View all actions_MS ******************************************************
Navigate to Actions Central Module
    #Click on Environment, Health & Safety
    Log to Console  Click on Environment, Health & Safety
    Wait Until Element Is Visible                   ${EHSButton}                                60 seconds
    Click Element                                   ${EHSButton}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Environment Health Safety.png
    #Click on Central Actions Module Button
    Log to Console     Click on Central Actions Module Button
    Wait Until Element Is Visible                   ${CentralActionsModule}                             60 seconds
    Click Element                                   ${CentralActionsModule}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Central Actions Module.png
    #Click Search Button
    Log to Console  Click Search Button
    Wait Until Element Is Visible                   ${CentralActionsSearchButton}                             60 seconds
    Click Element                                   ${CentralActionsSearchButton}
    Sleep       3
    #Click Actions Record
    Log to Console  Click Actions Record
    Wait Until Element Is Visible                   ${CentralActionsRecordSelect}                             60 seconds
    Click Element                                   ${CentralActionsRecordSelect}
    Sleep       5
    #Actions Record Opened
    Log to Console  Actions Record Opened
    Wait Until Element Is Visible                   ${ActionDetailTab}                             60 seconds
    Element Should Be Enabled                       ${ActionsFeedbackTab}
    Element Should Be Enabled                       ${ActionsExtensionRequestLogTab}
    Sleep       2
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Central Actions Module - Record Opened and Visible.png

#*********************************************** FR6-01: Actions automatically goes overdue_MS ******************************************************
Overdue Actions_MS
    #Click on Environment, Health & Safety
    Log to Console      Click on Environment, Health & Safety
    Wait Until Element Is Visible                   ${EHSButton}                                60 seconds
    Click Element                                   ${EHSButton}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Environment Health Safety.png
    #Click on Central Actions Module Button
    Log to Console     Click on Central Actions Module Button
    Wait Until Element Is Visible                   ${CentralActionsModule}                             60 seconds
    Click Element                                   ${CentralActionsModule}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Central Actions Module.png
    #Expand Search
    Log to Console      Expand Search
    Wait Until Element Is Visible                   ${CentralActionsSearchButton}                             60 seconds
    Click Element                                   ${ActionsOverdueExpandSearch}
    Wait Until Element Is Visible                   ${ActionsOverdueOwnerLabel}                             60 seconds
    #Action Status Dropdown
    Log to Console      Action Status Dropdown
    Click Element                                   ${ActionsOverdueStatusDD}
    Wait Until Element Is Visible                   ${ActionsOverdueDDStatusOverdue}                             60 seconds
    Click Element                                   ${ActionsOverdueDDStatusOverdue}
    Sleep       1
    Click Element                                   ${ActionsOverdueStatusDD}
    #Click Search Button
    Log to Console  Click Search Button
    Wait Until Element Is Visible                   ${CentralActionsSearchButton}                             60 seconds
    Click Element                                   ${CentralActionsSearchButton}
    Sleep       3
    #Click Overdue Actions Record
    Log to Console  Click Overdue Actions Record
    Wait Until Element Is Visible                   ${ActionsOverdueRecordOpen}                             60 seconds
    Click Element                                   ${ActionsOverdueRecordOpen}
    Sleep       5
    #Overdue Actions Record Opened
    Log to Console  Overdue Actions Record Opened
    Wait Until Element Is Visible                   ${ActionDetailTab}                             60 seconds
    Element Should Be Enabled                       ${ActionsFeedbackTab}
    Element Should Be Enabled                       ${ActionsExtensionRequestLogTab}
    Sleep       1
    Scroll Element Into View                        ${ActionsOverdueRecordStatusOverdue}
    Element Should Be Visible                       ${ActionsOverdueRecordStatusOverdue}
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Central Actions Module - Overdue Record Opened and Visible.png








