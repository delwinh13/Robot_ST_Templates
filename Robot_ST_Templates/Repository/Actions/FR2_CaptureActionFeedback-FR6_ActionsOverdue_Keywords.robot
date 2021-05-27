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











