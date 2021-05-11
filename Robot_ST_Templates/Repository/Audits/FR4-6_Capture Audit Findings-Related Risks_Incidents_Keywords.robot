*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Audits/vars.robot
Library     DateTime

*** Keywords ***
#*********************************************** FR4_Capture Audit Findings_MS *****************************************
Capture Findings
    #Findings Tab
    Log to Console      Findings Tab
    Click Element                           ${AuditFindingsTab}
    Wait Until Element Is Visible           ${AuditFindingsNoResults}               20 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Findings Sub-Module.png
    #Findings Add Button
    Log to Console      Add Button
    Wait Until Element Is Visible           ${AuditFindingsAddBtn}                  20 seconds
    Click Element                           ${AuditFindingsAddBtn}
    #Enter Findings Details
    Log to Console      Enter Findings Details
    Wait Until Element Is Visible           ${AuditFindingsBreadcrumb}              20 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Findings Add Button.png
    #Process Flow
    Log to Console      Process Flow
    Wait Until Element Is Visible           ${AuditFindingsProcessFlow}             20 seconds
    Click Element                           ${AuditFindingsProcessFlow}
    Wait Until Page Contains Element        ${AuditFindingsPFAdd}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Findings Process Flow Add Phase.png
    #Audit Elements
    Log to Console      Audit Elements
    Click Element                           ${AuditFindingsElementsDD}
    Wait Until Element Is Visible           ${AuditFindingsElementExpand1}          20 seconds
    Click Element                           ${AuditFindingsElementExpand1}
    Wait Until Element Is Visible           ${AuditFindingsElementSelect}           20 seconds
    Click Element                           ${AuditFindingsElementSelect}
    Click Element                           ${AuditFindingsElementChkBx}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Findings Elements Selected and CheckBox.png
    #More Information
    Log to Console      More Information
    ${CurrentDate}      Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                     ${CurrentDate}
    Input Text                              ${AuditFindinsgMoreInfo}                FR4_Capture Audit Findings_MS ${CurrentDate}
    #Findings Description
    Log to Console      Findings Description
    Input Text                              ${AuditFindingsDescription}             FR4_Capture Audit Findings_MS ${CurrentDate}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Findings More Info & Description.png
    #Findings Owner
    Log to Console      Findings Owner
    Click Element                           ${AuditFindingsOwnerDD}
    Wait Until Element Is Visible           ${AuditFindingsOwner1Admin}             5 seconds
    Click Element                           ${AuditFindingsOwner1Admin}
    #Risk Source
    Log to Console      Risk Source
    Click Element                           ${AuditFindingsRiskSourceDD}
    Wait Until Element Is Visible           ${AuditFindingsRiskSourceExpand1}       15 seconds
    Click Element                           ${AuditFindingsRiskSourceExpand1}
    Wait Until Element Is Visible           ${AuditFindingsRiskSourceSelect}        10 seconds
    Click Element                           ${AuditFindingsRiskSourceSelect}
    Click Element                           ${AuditFindingsRiskSourceDDArrow}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Findings Owner & Risk Source.png
    #Findings Classification
    Log to Console      Findings Classification
    Click Element                           ${AuditFindingsClassDD}
    Wait Until Element Is Visible           ${AuditFindingsClassSelect}             10 seconds
    Click Element                           ${AuditFindingsClassSelect}
    #Risk
    Log to Console      Risk
    Click Element                           ${AuditFindingsRiskDD}
    Wait Until Element Is Visible           ${AuditFindingsRiskSelect}              10 seconds
    Click Element                           ${AuditFindingsRiskSelect}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Findings Classification & Risk.png
    #Supporting Documents
    Log to Console      Findings Supporting Documents
    Click Element                           ${AuditFindingsSupportDocTab}
    Wait Until Element Is Visible           ${AuditFindingsSupportDocLinkDocument}                  20 seconds
    Click Element                           ${AuditFindingsSupportDocLinkDocument}
    #Alert should be present
    Switch Window
    sleep    1 second
    Wait Until Element Is Visible           ${AuditSupportDocUrl}                           20 seconds
    Input Text                              ${AuditSupportDocUrl}                           www.isomertix.com
    Input Text                              ${AuditSupportDocURLTitle}                      Isometrix
    Click Element                           ${AuditSupportDocURLAdd}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Findings Supporting Documents Link Added.png
    sleep    1 second
    Select Frame                            ${iFrame}
    #Save to continue
    Log to Console          Save and continue
    Click Element                           ${AuditFindingsDetailTab}
    Wait Until Element Is Visible           ${AuditFindingsSaveContinue}            10 seconds
    Click Element                           ${AuditFindingsSaveContinue}
    Wait Until Element Is Visible           ${AuditTeamRecordSaved}                 20 seconds
    #Process Flow
    Log to Console      Process Flow - Edit Phase
    Wait Until Page Contains Element        ${AuditFindingsPFEdit}
    Wait Until Page Contains Element        ${AuditFindingsRecordNo}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Findings Process Flow Edit Phase.png
    #Close Audit Finding
    Log to Console      Close Audit Finding
    Click Element                           ${AuditFindingsCloseBtn}
#    #Alert should be present
#    Log to Console      Alert should be present
#    Switch Window
#    sleep    1 second
#    Wait Until Element Is Visible           ${AuditFindingsCloseYES}                10 seconds
#    Click Element                           ${AuditFindingsCloseYES}
    Wait Until Element Is Visible           ${AuditFindingsSearchRecord}            10 seconds
    sleep   1 second
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Findings Record Sub-Module.png

FR4_CaptureAuditFindings_Notification
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
    #Audits - Findings Notification
    Log to Console      Findings Notification
    sleep       8 seconds
    Wait Until Element Is Visible       ${AuditFindingsSubject}       60 seconds
    Click Element                       ${AuditFindingsSubject}
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
    Wait Until Element Is Visible       ${Usernameid}                  60 seconds
    Input Text                          ${Usernameid}    ${Username Value}
    Input Text                          ${Passwordid}    ${Password Value}
    Click Element                       ${SubmitButtonid}
    #Wait for Audit Findings Record
    Log to Console      Wait for Audit Record
    set selenium implicit wait    50 seconds
    sleep       30 seconds
    Select Frame                        ${iFrame}
    Wait Until Element Is Visible       ${AuditFindingsProcessFlow}           60 seconds
    Click Element                       ${AuditFindingsProcessFlow}
    Wait Until Page Contains Element    ${AuditFindingsPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/AuditsRecordOpened.png

#*********************************************** FR5_01_ViewRelatedRisks_MainScenario *********************************************
View Related Risks
    #Risks and Incidents Tab
    Log to Console      Risks and Incidents Tab
    Click Element                       ${AuditRelatedRiskIncidentTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Risks and Incidents Panels.png
    #Related Risk Panel
    Log to Console      Related Risk Panel
    Wait Until Element Is Visible       ${AuditRelatedRiskPanel}                20 seconds
    Click Element                       ${AuditRelatedRiskPanel}
    Wait Until Element Is Visible       ${AuditRelatedRiskVGRecord}             60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Related Risk Record in Viewing Grid.png
    #Open Related Risk Record
    Log to Console      Open Related Risk Record
    Click Element                       ${AuditRelatedRiskVGRecord}
    Wait Until Element Is Visible       ${AuditRelatedRiskRecordNo}             60 seconds
    #Risk Process Flow
    Log to Console      Risk Process Flow
    Wait Until Element Is Visible       ${AuditRelatedRiskRecordPF}             20 seconds
    Click Element                       ${AuditRelatedRiskRecordPF}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Related Risk Record Opened and Risk Process Flow.png

#*********************************************** FR6-View Related Incidents_MainScenario ******************************************************
View Related Incidents
    #Risks and Incidents Tab
    Log to Console      Risks and Incidents Tab
    Click Element                       ${AuditRelatedRiskIncidentTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Risks and Incidents Panels.png
    #Related Incidents Panel
    Log to Console      Related Incidents Panel
    Wait Until Element Is Visible       ${AuditRelatedIncidentPanel}            20 seconds
    Click Element                       ${AuditRelatedIncidentPanel}
    Wait Until Element Is Visible       ${AuditRelatedIncidentVGRecord}         60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Related Incidents Record in Viewing Grid.png
    #Open Related Incidents Record
    Log to Console      Open Related Incidents Record
    Click Element                       ${AuditRelatedIncidentVGRecord}
    Wait Until Element Is Visible       ${AuditRelatedIncidentRecordNo}          60 seconds
    #Incidents Process Flow
    Log to Console      Incidents Process Flow
    Wait Until Element Is Visible       ${AuditRelatedIncidentRecordPF}             20 seconds
    Click Element                       ${AuditRelatedIncidentRecordPF}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Related Incidents Record Opened and Incidents Process Flow.png