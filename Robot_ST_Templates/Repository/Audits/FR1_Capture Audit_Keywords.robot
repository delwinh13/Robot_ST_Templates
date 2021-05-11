*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Audits/vars.robot
Library     DateTime

*** Keywords ***
#*********************************************** FR1 01-01: Capture Audit_MS *******************************************
Audits Enter Details_FR1 01-01: Capture Audit_MS
#    [Arguments]         ${AuditTitleText}       ${AuditScopeText}
    #Process Flow
    log to console      Process Flow Button
    Wait Until Element Is Visible       ${AuditsPFButton}                   60 seconds
    Click Element                       ${AuditsPFButton}
    #Logging Audit Phase
    log to console      Audit in Logging Audit Phase
    Wait Until Page Contains Element    ${AuditsPFLoggingAuditActive}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/LoggingAuditPhase.png
    #Business Unit
    log to console      Business Unit
    Click Element                       ${AuditsBusinessUnitDD}
    Wait Until Element Is Visible       ${AuditsBUGlobalCompanyExpand}      20 seconds
    Click Element                       ${AuditsBUGlobalCompanyExpand}
    Wait Until Element Is Visible       ${AuditsBUSouthAfricaExpand}        20 seconds
    Click Element                       ${AuditsBUSouthAfricaExpand}
    Wait Until Element Is Visible       ${AuditsBUVictorySite}              20 seconds
    Click Element                       ${AuditsBUVictorySite}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Business Unit Selected.png
    #Project Link
    log to console      Project
    Click Element                       ${AuditsProjectCheckbox}
    log to console      Project and Related Stakeholder Triggered
    #Project Label
    Element Should Be Visible           ${AuditsProjectLabel}
    #Related Stakeholder Label and Dropdown
    Element Should Be Visible           ${RelatedStakeholderLabel}
    Element Should Be Visible           ${RelatedStakeholderDD}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Project and Related Stakeholder Triggered.png
    Wait Until Element Is Visible       ${AuditsProjectDD}                  5 seconds
    Click Element                       ${AuditsProjectDD}
    Wait Until Element Is Visible       ${AuditsProjectSelect}              10 seconds
    Click Element                       ${AuditsProjectSelect}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Project Link.png
    #Impact Type
    log to console      Impact Type
    Click Element                       ${AuditsImpactTypeDD}
    sleep   2
    Wait Until Element Is Visible       ${AuditsImpactTypeSelectAll}        10 seconds
    Click Element                       ${AuditsImpactTypeSelectAll}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Impact Type Select All.png
    #Audit Title
    log to console      Audit Title
    ${CurrentDate}      Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                 ${CurrentDate}
    Input Text                          ${AuditTitle}                       FR1 01-01: Capture Audit_MS ${CurrentDate}
    #Audit Scope
    Input Text                          ${AuditScope}                       FR1 01-01: Capture Audit_MS ${CurrentDate}
    #Audit Type
    Click Element                       ${AuditTypeDD}
    Wait Until Element Is Visible       ${AuditTypeSelectExternal}          10 seconds
    Click Element                       ${AuditTypeSelectExternal}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Title_Scope_Type Selections.png
    #Related Stakeholder
    Log to Console     Related Stakeholder
    Click Element                       ${RelatedStakeholderDD}
    Wait Until Element Is Visible       ${AuditRelatedStakeholderSearchField}       10 seconds
    sleep   1
    Input Text                          ${AuditRelatedStakeholderSearchField}       Reg Auth
    sleep   1
    Wait Until Element Is Visible       ${AuditRS_RegAuth}                  10 seconds
    Element Should Be Visible           ${AuditRS_RegAuth}
    Click Element                       ${AuditRS_RegAuth}
    #Audit Protocol
    Log to Console     Audit Protocol
    Click Element                       ${AuditProtocolDD}
    Wait Until Element Is Visible       ${AuditProtocolSelect}              20 seconds
    Click Element                       ${AuditProtocolSelect}
    #Process/Activity
    Log to Console     Process/Activity
    Wait Until Element Is Visible       ${AuditProcessActivityBusAdminExpand}           20 seconds
    Click Element                       ${AuditProcessActivityBusAdminExpand}
    Click Element                       ${AuditProcessActivityCommunications}
    Element Should Be Visible           ${AuditProcessActivitySelected}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Related Stakeholder_Audit Protocol_ProcessActivity.png
    #Audit Manager
    Log to Console      Audit Manager
    Scroll Element Into View            ${AuditIntroAuditObjectivePanel}
    Sleep   1
    Click Element                       ${AuditManagerDD}
    Wait Until Element Is Visible       ${AuditManager_2Manager}            10 seconds
    Click Element                       ${AuditManager_2Manager}
    #Auditee
    Log to Console      Auditee
    Click Element                       ${AuditeeDD}
    Wait Until Element Is Visible       ${Auditee_2Manager}                 10 seconds
    Click Element                       ${Auditee_2Manager}
    #Person conducting the audit
    Log to Console      Person conducting the audit
    Click Element                       ${PersonConductingAuditDD}
    Wait Until Element Is Visible       ${PersonConductingAudit_2Manager}      10 seconds
    Click Element                       ${PersonConductingAudit_2Manager}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Manager_Auditee_PersonConductAudit.png
    #Audit Start Date
    Log to Console      Audit Start Date
    ${CurrentDate}      Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                 ${CurrentDate}
    Click Element                       ${AuditStartDate}
    Input Text                          ${AuditStartDate}                    ${CurrentDate}
    #Audit End Date
    Log to Console      Audit End Date
    ${EndDate}          Get Current Date        result_format=%d/%m/%Y      increment=+7 day
    Set Global Variable     ${EndDate}
    Click Element                       ${AuditEndDate}
    Input Text                          ${AuditEndDate}                      ${EndDate}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Start - End Dates.png
    #Introduction & Audit Objective Panel
    Log to Console      Introduction & Audit Objective Panel
    Click Element                       ${AuditIntroAuditObjectivePanel}
    #Introduction
    Log to Console      Introduction
    Scroll Element Into View            ${AuditSaveandContinue}
    Sleep   1
    Input Text                          ${AuditIntroduction}                FR1_01-01_CaptureAudit_MS ${CurrentDate}
    #Audit Objective
    Log to Console      Audit Objective
    Input Text                          ${AuditObjective}                   FR1_01-01_CaptureAudit_MS ${CurrentDate}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Introduction_Audit Objective.png
    #Save To Continue
    Click Element                       ${AuditSaveandContinue}
#    Wait Until Page Does Not Contain        Saving...                       10 seconds
    Wait Until Element Is Visible       ${RecordSaved}                      20 seconds
    #Planned Audit Phase
    log to console      Audit in Planned Phase
    Scroll Element Into View            ${AuditsTeamTab}
    Wait Until Page Contains Element    ${AuditsPFPlannedActive}
    Wait Until Page Contains Element    ${AuditsTeamTab}
    Wait Until Page Contains Element    ${AuditRisksIncidentsTab}
    Wait Until Page Contains Element    ${AuditActionsTab}
    Wait Until Page Contains Element    ${AuditPlanningStatus}
#    Element Should Be Disabled          ${AuditPlanningStatus}
    ${recordnumber}=    SeleniumLibrary.Get Text        ${AuditsSavedRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/AuditPlannedPhase_TabsVisible_StatusPlanning.png

FR1_Audits_LoggedNotification
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
    #Audits - Logged Notification
    Log to Console      Logged Notification
    sleep       3 seconds
    Wait Until Element Is Visible       ${AuditLoggedSubject}       60 seconds
    Click Element                       ${AuditLoggedSubject}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/AuditLoggedEmailSelection.png
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
    Wait Until Page Contains Element    ${AuditsPFPlannedActive}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/AuditsRecordOpened.png

#*********************************************** FR1 01-01: Capture Audit_AS1 *******************************************
Audits Enter Details_FR1 01-01: Capture Audit_AS1
    #Process Flow
    log to console      Process Flow Button
    Click Element                       ${AuditsPFButton}
    #Logging Audit Phase
    log to console      Audit in Logging Audit Phase
    Wait Until Page Contains Element    ${AuditsPFLoggingAuditActive}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/LoggingAuditPhase.png
    #Business Unit
    log to console      Business Unit
    Click Element                       ${AuditsBusinessUnitDD}
    Wait Until Element Is Visible       ${AuditsBUGlobalCompanyExpand}      10 seconds
    Click Element                       ${AuditsBUGlobalCompanyExpand}
    Wait Until Element Is Visible       ${AuditsBUSouthAfricaExpand}        10 seconds
    Click Element                       ${AuditsBUSouthAfricaExpand}
    Wait Until Element Is Visible       ${AuditsBUVictorySite}              10 seconds
    Click Element                       ${AuditsBUVictorySite}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Business Unit Selected.png
#    #Project Link
#    log to console      Project
#    Click Element                       ${AuditsProjectCheckbox}
#    log to console      Project and Related Stakeholder Triggered
#    #Project Label
#    Element Should Be Visible           ${AuditsProjectLabel}
#    Wait Until Element Is Visible       ${AuditsProjectDD}                  5 seconds
#    Click Element                       ${AuditsProjectDD}
#    Wait Until Element Is Visible       ${AuditsProjectSelect}              10 seconds
#    Click Element                       ${AuditsProjectSelect}
#    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Project Link.png
    #Impact Type
    log to console      Impact Type
    Click Element                       ${AuditsImpactTypeDD}
    sleep   2
    Wait Until Element Is Visible       ${AuditsImpactTypeSelectAll}        10 seconds
    Click Element                       ${AuditsImpactTypeSelectAll}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Impact Type Select All.png
    #Audit Title
    log to console      Audit Title
    ${CurrentDate}      Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                 ${CurrentDate}
    Input Text                          ${AuditTitle}                       FR1_01-01_CaptureAudit_AS1 ${CurrentDate}
    #Audit Scope
    Input Text                          ${AuditScope}                       FR1_01-01_CaptureAudit_AS1 ${CurrentDate}
    #Audit Type
    Click Element                       ${AuditTypeDD}
    Wait Until Element Is Visible       ${AuditTypeSelectSupplier}          10 seconds
    Click Element                       ${AuditTypeSelectSupplier}
    #Related Stakeholder Label and Dropdown
    Element Should Be Visible           ${RelatedStakeholderLabel}
    Element Should Be Visible           ${RelatedStakeholderDD}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Title_Scope_Type Selections.png
    #Related Stakeholder
    Log to Console     Related Stakeholder
    Click Element                       ${RelatedStakeholderDD}
    Wait Until Element Is Visible       ${AuditRelatedStakeholderSearchField}       10 seconds
    sleep   1
    Input Text                          ${AuditRelatedStakeholderSearchField}       Reg Auth
    sleep   1
    Wait Until Element Is Visible       ${AuditRS_RegAuth}                  10 seconds
    Element Should Be Visible           ${AuditRS_RegAuth}
    Click Element                       ${AuditRS_RegAuth}
    #Audit Protocol
    Log to Console     Audit Protocol
    Click Element                       ${AuditProtocolDD}
    Wait Until Element Is Visible       ${AuditProtocolSelect}              10 seconds
    Click Element                       ${AuditProtocolSelect}
    #Process/Activity
    Log to Console     Process/Activity
    Click Element                       ${AuditProcessActivityBusAdminExpand}
    Click Element                       ${AuditProcessActivityCommunications}
    Element Should Be Visible           ${AuditProcessActivitySelected}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Related Stakeholder_Audit Protocol_ProcessActivity.png
    #Audit Manager
    Log to Console      Audit Manager
    Scroll Element Into View            ${AuditIntroAuditObjectivePanel}
    Sleep   1
    Click Element                       ${AuditManagerDD}
    Wait Until Element Is Visible       ${AuditManager_2Manager}            10 seconds
    Click Element                       ${AuditManager_2Manager}
    #Auditee
    Log to Console      Auditee
    Click Element                       ${AuditeeDD}
    Wait Until Element Is Visible       ${Auditee_2Manager}                 10 seconds
    Click Element                       ${Auditee_2Manager}
    #Person conducting the audit
    Log to Console      Person conducting the audit
    Click Element                       ${PersonConductingAuditDD}
    Wait Until Element Is Visible       ${PersonConductingAudit_2Manager}      10 seconds
    Click Element                       ${PersonConductingAudit_2Manager}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Manager_Auditee_PersonConductAudit.png
    #Audit Start Date
    Log to Console      Audit Start Date
    ${CurrentDate}      Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                 ${CurrentDate}
    Click Element                       ${AuditStartDate}
    Input Text                          ${AuditStartDate}                    ${CurrentDate}
    #Audit End Date
    Log to Console      Audit End Date
    ${EndDate}          Get Current Date        result_format=%d/%m/%Y      increment=+7 day
    Set Global Variable     ${EndDate}
    Click Element                       ${AuditEndDate}
    Input Text                          ${AuditEndDate}                      ${EndDate}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Start - End Dates.png
    #Introduction & Audit Objective Panel
    Log to Console      Introduction & Audit Objective Panel
    Click Element                       ${AuditIntroAuditObjectivePanel}
    #Introduction
    Log to Console      Introduction
    Scroll Element Into View            ${AuditSaveandContinue}
    Sleep   1
    Input Text                          ${AuditIntroduction}                FR1_01-01_CaptureAudit_AS1 ${CurrentDate}
    #Audit Objective
    Log to Console      Audit Objective
    Input Text                          ${AuditObjective}                   FR1_01-01_CaptureAudit_AS1 ${CurrentDate}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Introduction_Audit Objective.png
    #Save To Continue
    Click Element                       ${AuditSaveandContinue}
#    Wait Until Page Does Not Contain        Saving...                       10 seconds
    Wait Until Element Is Visible       ${RecordSaved}                      20 seconds
    #Planned Audit Phase
    log to console      Audit in Planned Phase
    Scroll Element Into View            ${AuditsTeamTab}
    Wait Until Page Contains Element    ${AuditsPFPlannedActive}
    Wait Until Page Contains Element    ${AuditsTeamTab}
    Wait Until Page Contains Element    ${AuditRisksIncidentsTab}
    Wait Until Page Contains Element    ${AuditActionsTab}
    Wait Until Page Contains Element    ${AuditPlanningStatus}
#    Element Should Be Disabled          ${AuditPlanningStatus}
    ${recordnumber}=    SeleniumLibrary.Get Text        ${AuditsSavedRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/AuditPlannedPhase_TabsVisible_StatusPlanning.png

#*********************************************** FR1 01-01: Capture Audit_AS2 *******************************************
Audits Enter Details_FR1 01-01: Capture Audit_AS2
    #Process Flow
    log to console      Process Flow Button
    Click Element                       ${AuditsPFButton}
    #Logging Audit Phase
    log to console      Audit in Logging Audit Phase
    Wait Until Page Contains Element    ${AuditsPFLoggingAuditActive}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/LoggingAuditPhase.png
    #Business Unit
    log to console      Business Unit
    Click Element                       ${AuditsBusinessUnitDD}
    Wait Until Element Is Visible       ${AuditsBUGlobalCompany}      10 seconds
    Click Element                       ${AuditsBUGlobalCompany}
#    Wait Until Element Is Visible       ${AuditsBUSouthAfricaExpand}        10 seconds
#    Click Element                       ${AuditsBUSouthAfricaExpand}
#    Wait Until Element Is Visible       ${AuditsBUVictorySite}              10 seconds
#    Click Element                       ${AuditsBUVictorySite}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Business Unit Selected.png
#    #Project Link
#    log to console      Project
#    Click Element                       ${AuditsProjectCheckbox}
#    log to console      Project and Related Stakeholder Triggered
#    #Project Label
#    Element Should Be Visible           ${AuditsProjectLabel}
#    Wait Until Element Is Visible       ${AuditsProjectDD}                  5 seconds
#    Click Element                       ${AuditsProjectDD}
#    Wait Until Element Is Visible       ${AuditsProjectSelect}              10 seconds
#    Click Element                       ${AuditsProjectSelect}
#    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Project Link.png
    #Impact Type
    log to console      Impact Type
    Click Element                       ${AuditsImpactTypeDD}
    sleep   2
    Wait Until Element Is Visible       ${AuditsImpactTypeSelectAll}        10 seconds
    Click Element                       ${AuditsImpactTypeSelectAll}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Impact Type Select All.png
    #Audit Title
    log to console      Audit Title
    ${CurrentDate}      Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                 ${CurrentDate}
    Input Text                          ${AuditTitle}                       FR1_01-01_CaptureAudit_AS2 ${CurrentDate}
    #Audit Scope
    Input Text                          ${AuditScope}                       FR1_01-01_CaptureAudit_AS2 ${CurrentDate}
    #Audit Type
    Click Element                       ${AuditTypeDD}
    Wait Until Element Is Visible       ${AuditTypeSelectInternal}          10 seconds
    Click Element                       ${AuditTypeSelectInternal}
#    #Related Stakeholder Label and Dropdown
#    Element Should Be Visible           ${RelatedStakeholderLabel}
#    Element Should Be Visible           ${RelatedStakeholderDD}
#    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Title_Scope_Type Selections.png
#    #Related Stakeholder
#    Log to Console     Related Stakeholder
#    Click Element                       ${RelatedStakeholderDD}
#    Wait Until Element Is Visible       ${AuditRelatedStakeholderSearchField}       10 seconds
#    sleep   1
#    Input Text                          ${AuditRelatedStakeholderSearchField}       Reg Auth
#    sleep   1
#    Wait Until Element Is Visible       ${AuditRS_RegAuth}                  10 seconds
#    Element Should Be Visible           ${AuditRS_RegAuth}
#    Click Element                       ${AuditRS_RegAuth}
    #Audit Protocol
    Log to Console     Audit Protocol
    Click Element                       ${AuditProtocolDD}
    Wait Until Element Is Visible       ${AuditProtocolSelect}              10 seconds
    Click Element                       ${AuditProtocolSelect}
    #Process/Activity
    Log to Console     Process/Activity
    Click Element                       ${AuditProcessActivitySelectAll}
#    Click Element                       ${AuditProcessActivityCommunications}
#    Element Should Be Visible           ${AuditProcessActivitySelected}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Related Stakeholder_Audit Protocol_ProcessActivity.png
    #Audit Manager
    Log to Console      Audit Manager
    Scroll Element Into View            ${AuditIntroAuditObjectivePanel}
    Sleep   1
    Click Element                       ${AuditManagerDD}
    Wait Until Element Is Visible       ${AuditManager_1Admin}              10 seconds
    Click Element                       ${AuditManager_1Admin}
    #Auditee
    Log to Console      Auditee
    Click Element                       ${AuditeeDD}
    Wait Until Element Is Visible       ${Auditee_2Manager}                 10 seconds
    Click Element                       ${Auditee_2Manager}
    #Person conducting the audit
    Log to Console      Person conducting the audit
    Click Element                       ${PersonConductingAuditDD}
    Wait Until Element Is Visible       ${PersonConductingAudit_2Manager}      10 seconds
    Click Element                       ${PersonConductingAudit_2Manager}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Manager_Auditee_PersonConductAudit.png
    #Audit Start Date
    Log to Console      Audit Start Date
    ${CurrentDate}      Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                 ${CurrentDate}
    Click Element                       ${AuditStartDate}
    Input Text                          ${AuditStartDate}                    ${CurrentDate}
    #Audit End Date
    Log to Console      Audit End Date
    ${EndDate}          Get Current Date        result_format=%d/%m/%Y      increment=+7 day
    Set Global Variable     ${EndDate}
    Click Element                       ${AuditEndDate}
    Input Text                          ${AuditEndDate}                      ${EndDate}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Start - End Dates.png
    #Introduction & Audit Objective Panel
    Log to Console      Introduction & Audit Objective Panel
    Click Element                       ${AuditIntroAuditObjectivePanel}
    #Introduction
    Log to Console      Introduction
    Scroll Element Into View            ${AuditSaveandContinue}
    Sleep   1
    Input Text                          ${AuditIntroduction}                FR1_01-01_CaptureAudit_AS2 ${CurrentDate}
    #Audit Objective
    Log to Console      Audit Objective
    Input Text                          ${AuditObjective}                   FR1_01-01_CaptureAudit_AS2 ${CurrentDate}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Introduction_Audit Objective.png
    #Save To Continue
    Click Element                       ${AuditSaveandContinue}
#    Wait Until Page Does Not Contain        Saving...                       10 seconds
    Wait Until Element Is Visible       ${RecordSaved}                      60 seconds
    #Planned Audit Phase
    log to console      Audit in Planned Phase
    Scroll Element Into View            ${AuditsTeamTab}
    Wait Until Page Contains Element    ${AuditsPFPlannedActive}
    Wait Until Page Contains Element    ${AuditsTeamTab}
    Wait Until Page Contains Element    ${AuditRisksIncidentsTab}
    Wait Until Page Contains Element    ${AuditActionsTab}
    Wait Until Page Contains Element    ${AuditPlanningStatus}
#    Element Should Be Disabled          ${AuditPlanningStatus}
    ${recordnumber}=    SeleniumLibrary.Get Text        ${AuditsSavedRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/AuditPlannedPhase_TabsVisible_StatusPlanning.png

#*********************************************** FR1 01-01: Capture Audit_AS3 *******************************************
Audits Enter Details_FR1 01-01: Capture Audit_AS3
    #Process Flow
    log to console      Process Flow Button
    Click Element                       ${AuditsPFButton}
    #Logging Audit Phase
    log to console      Audit in Logging Audit Phase
    Wait Until Page Contains Element    ${AuditsPFLoggingAuditActive}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/LoggingAuditPhase.png
    #Business Unit
    log to console      Business Unit
    Click Element                       ${AuditsBusinessUnitDD}
    Wait Until Element Is Visible       ${AuditsBUGlobalCompanyExpand}      10 seconds
    Click Element                       ${AuditsBUGlobalCompanyExpand}
    Wait Until Element Is Visible       ${AuditsBUSouthAfricaExpand}        10 seconds
    Click Element                       ${AuditsBUSouthAfricaExpand}
    Wait Until Element Is Visible       ${AuditsBUVictorySite}              10 seconds
    Click Element                       ${AuditsBUVictorySite}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Business Unit Selected.png
    #Project Link
    log to console      Project
    Click Element                       ${AuditsProjectCheckbox}
    log to console      Project and Related Stakeholder Triggered
    #Project Label
    Element Should Be Visible           ${AuditsProjectLabel}
    Wait Until Element Is Visible       ${AuditsProjectDD}                  5 seconds
    Click Element                       ${AuditsProjectDD}
    Wait Until Element Is Visible       ${AuditsProjectSelect}              10 seconds
    Click Element                       ${AuditsProjectSelect}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Project Link.png
    #Impact Type
    log to console      Impact Type
    Click Element                       ${AuditsImpactTypeDD}
    sleep   2
    Wait Until Element Is Visible       ${AuditsImpactTypeSelectAll}        10 seconds
    Click Element                       ${AuditsImpactTypeSelectAll}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Impact Type Select All.png
    #Audit Title
    log to console      Audit Title
    ${CurrentDate}      Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                 ${CurrentDate}
    Input Text                          ${AuditTitle}                       FR1_01-01_CaptureAudit_AS3 ${CurrentDate}
    #Audit Scope
    Input Text                          ${AuditScope}                       FR1_01-01_CaptureAudit_AS3 ${CurrentDate}
    #Audit Type
    Click Element                       ${AuditTypeDD}
    Wait Until Element Is Visible       ${AuditTypeSelectSupplier}          10 seconds
    Click Element                       ${AuditTypeSelectSupplier}
    #Related Stakeholder Label and Dropdown
    Element Should Be Visible           ${RelatedStakeholderLabel}
    Element Should Be Visible           ${RelatedStakeholderDD}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Title_Scope_Type Selections.png
    #Related Stakeholder
    Log to Console     Related Stakeholder
    Click Element                       ${RelatedStakeholderDD}
    Wait Until Element Is Visible       ${AuditRelatedStakeholderSearchField}       10 seconds
    sleep   1
    Input Text                          ${AuditRelatedStakeholderSearchField}       Reg Auth
    sleep   1
    Wait Until Element Is Visible       ${AuditRS_RegAuth}                  10 seconds
    Element Should Be Visible           ${AuditRS_RegAuth}
    Click Element                       ${AuditRS_RegAuth}
    #Audit Protocol
    Log to Console     Audit Protocol
    Click Element                       ${AuditProtocolDD}
    Wait Until Element Is Visible       ${AuditProtocolSelect}              10 seconds
    Click Element                       ${AuditProtocolSelect}
    #Process/Activity
    Log to Console     Process/Activity
    Click Element                       ${AuditProcessActivityBusAdminExpand}
    Click Element                       ${AuditProcessActivityCommunications}
    Element Should Be Visible           ${AuditProcessActivitySelected}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Related Stakeholder_Audit Protocol_ProcessActivity.png
    #Audit Manager
    Log to Console      Audit Manager
    Scroll Element Into View            ${AuditIntroAuditObjectivePanel}
    Sleep   1
    Click Element                       ${AuditManagerDD}
    Wait Until Element Is Visible       ${AuditManager_2Manager}            10 seconds
    Click Element                       ${AuditManager_2Manager}
    #Auditee
    Log to Console      Auditee
    Click Element                       ${AuditeeDD}
    Wait Until Element Is Visible       ${Auditee_2Manager}                 10 seconds
    Click Element                       ${Auditee_2Manager}
    #Person conducting the audit
    Log to Console      Person conducting the audit
    Click Element                       ${PersonConductingAuditDD}
    Wait Until Element Is Visible       ${PersonConductingAudit_2Manager}      10 seconds
    Click Element                       ${PersonConductingAudit_2Manager}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Manager_Auditee_PersonConductAudit.png
    #Audit Start Date
    Log to Console      Audit Start Date
    ${CurrentDate}      Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                 ${CurrentDate}
    Click Element                       ${AuditStartDate}
    Input Text                          ${AuditStartDate}                    ${CurrentDate}
    #Audit End Date
    Log to Console      Audit End Date
    ${EndDate}          Get Current Date        result_format=%d/%m/%Y      increment=+7 day
    Set Global Variable     ${EndDate}
    Click Element                       ${AuditEndDate}
    Input Text                          ${AuditEndDate}                      ${EndDate}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audit Start - End Dates.png
    #Introduction & Audit Objective Panel
    Log to Console      Introduction & Audit Objective Panel
    Click Element                       ${AuditIntroAuditObjectivePanel}
    #Introduction
    Log to Console      Introduction
    Scroll Element Into View            ${AuditSaveandContinue}
    Sleep   1
    Input Text                          ${AuditIntroduction}                FR1_01-01_CaptureAudit_AS3 ${CurrentDate}
    #Audit Objective
    Log to Console      Audit Objective
    Input Text                          ${AuditObjective}                   FR1_01-01_CaptureAudit_AS3 ${CurrentDate}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Introduction_Audit Objective.png
    #Submit Audit Button
    Click Element                       ${AuditSubmitBtn}
    sleep       5 seconds
#    Wait Until Page Does Not Contain        Saving...                       10 seconds
    #User Returned to Search Results Page
    Log to Console      User Returned to Search Results Page
    Wait Until Element Is Visible       ${AuditsSearchPageRecord1}          20 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audits Record Saved after clicking Submit Button.png
    #Open Record
    Log to Console      Open Record
    Click Element                       ${AuditsSearchPageRecord1}
    Wait Until Element Is Visible       ${AuditsSavedRecordNo}              20 seconds
    #Process Flow
    log to console      Process Flow Button
    Click Element                       ${AuditsPFButton}
    #Planned Audit Phase
    log to console      Audit in Planned Phase
    Wait Until Page Contains Element    ${AuditsPFPlannedActive}
    Wait Until Page Contains Element    ${AuditsTeamTab}
    Wait Until Page Contains Element    ${AuditRisksIncidentsTab}
    Wait Until Page Contains Element    ${AuditActionsTab}
    Wait Until Page Contains Element    ${AuditPlanningStatus}
#    Element Should Be Disabled          ${AuditPlanningStatus}
    ${recordnumber}=    SeleniumLibrary.Get Text        ${AuditsSavedRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/AuditPlannedPhase_TabsVisible_StatusPlanning.png

#*********************************************** FR1_01-02_UpdateAudit_MS ***************************************************
Update Audit_MS_AS1_OS
    Log to Console      Propose Dates Checkbox
    Scroll Element Into View            ${AuditProposeDatesCheckbox}
    sleep   1 second
    Click Element                       ${AuditProposeDatesCheckbox}
    Scroll Element Into View            ${AuditIntroAuditObjectivePanel}
    sleep   1 second
    #Dates can only be updated when suggested dates are populated
    Element Should Be Visible           ${AuditDatescanonlybeupdated}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/AuditDatescanonlybeupdated.png
    Click Element                       ${AuditProposeDatesCheckbox}
    sleep   2 seconds
    Click Element                       ${AuditProposeDatesCheckbox}
    #Suggested Start Date
    Log to Console      Suggested start date
    ${SuggestedStartDate}      Get Current Date        result_format=%d/%m/%Y           increment=+5 day
    Set Global Variable                 ${CurrentDate}
    Click Element                       ${AuditSuggestedStartDate}
    Input Text                          ${AuditSuggestedStartDate}                       ${SuggestedStartDate}
    #Suggested End Date
    Log to Console      Suggested end date
    ${SuggestedEndDate}         Get Current Date        result_format=%d/%m/%Y           increment=+14 day
    Set Global Variable                 ${CurrentDate}
    Click Element                       ${AuditSuggestedEndDate}
    Input Text                          ${AuditSuggestedEndDate}                         ${SuggestedEndDate}
    Scroll Element Into View            ${AuditIntroAuditObjectivePanel}
    sleep   1 second
    Click Element                       ${AuditNewProposedDateComments}
    #Please note that the audit manager must log in to accept the proposed date
    Element Should Be Visible           ${AuditPleasenotethatauditmanager}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Pleasenotethatauditmanager.png
    #New proposed dates comments
    Log to Console      New proposed dates comments
    Input Text                          ${AuditNewProposedDateComments}                  FR1_01-02_UpdateAudit_MS ${CurrentDate}
    #Supporting Documents
    Log to Console      Supporting Documents
    Click Element                       ${AuditSupportDocTab}
    Wait Until Element Is Visible       ${AuditSupportDocLinkDocument}                  20 seconds
    Click Element                       ${AuditSupportDocLinkDocument}
    #Alert should be present
    Switch Window
    sleep    1 second
    Wait Until Element Is Visible       ${AuditSupportDocUrl}                           20 seconds
    Input Text                          ${AuditSupportDocUrl}                           www.isomertix.com
    Input Text                          ${AuditSupportDocURLTitle}                      Isometrix
    Click Element                       ${AuditSupportDocURLAdd}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Supporting Documents Link Added.png
    sleep    1 second
    Select Frame                        ${iFrame}
    #Audit Protocol Tab
    Log to Console      Audit Protocol Tab
    Click Element                       ${AuditProtocolTab}
    sleep    1 second
    #Save Button
    Click Element                       ${AuditSaveBtn}
    Wait Until Element Is Visible       ${RecordSaved}                      20 seconds
    #Planned Audit Phase
    log to console      Audit still in Planned Phase
    Scroll Element Into View            ${AuditsTeamTab}
    Wait Until Page Contains Element    ${AuditsPFPlannedActive}
    Wait Until Page Contains Element    ${AuditsTeamTab}
    Wait Until Page Contains Element    ${AuditRisksIncidentsTab}
    Wait Until Page Contains Element    ${AuditActionsTab}
    Wait Until Page Contains Element    ${AuditPlanningStatus}
    ${recordnumber}=    SeleniumLibrary.Get Text        ${AuditsSavedRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/AuditPlannedPhase_TabsVisible_StatusPlanning.png

FR1_01-02_Audits_NewDatesProposedNotification
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
    #Audits - New Dates Proposed Notification
    Log to Console      New Dates Proposed Notification
    sleep       8 seconds
    Wait Until Element Is Visible       ${AuditNewDatesProposedSubject}       60 seconds
    Click Element                       ${AuditNewDatesProposedSubject}
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
    Wait Until Page Contains Element    ${AuditsPFPlannedActive}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/AuditsRecordOpened.png

Audit Manager Updates Audit_MS
    #Click on Audits Search Button
    log to console     Click on Audits Search Button
    Wait Until Element Is Visible       ${AuditsSearchButton}                   40 seconds
    click element                       ${AuditsSearchButton}
    #Record Select
    Log to Console      Open Audit Record
    Wait Until Element Is Visible       ${AuditAdminSearchRecordOpen}           20 seconds
    Click Element                       ${AuditAdminSearchRecordOpen}
    #Process Flow
    log to console      Process Flow Button
    Wait Until Element Is Visible       ${AuditPlanningStatus}                  20 seconds
    Click Element                       ${AuditsPFButton}
    #Planned Audit Phase
    log to console      Audit in Planned Phase
    Wait Until Page Contains Element    ${AuditsPFPlannedActive}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/PlannedAuditPhase.png
    #Accept Proposed Date
    Log to Console      Accept Proposed Date
    Scroll Element Into View            ${AuditIntroAuditObjectivePanel}
    sleep       1 second
    Wait Until Element Is Visible       ${AuditAcceptProposeDatesChckbx}        10 seconds
    Click Element                       ${AuditAcceptProposeDatesChckbx}
    Scroll Element Into View            ${AuditIntroAuditObjectivePanel}
    sleep       1 second
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Accept Proposed Date Checkbox.png
    #Schedule Approved
    Log to Console      Schedule Approved
    Wait Until Page Contains Element    ${AuditScheduleApprovedPanel}
    Wait Until Page Contains Element    ${AuditApprovedByDDAdmin}
    Wait Until Page Contains Element    ${AuditDateApproved}
#    Element Should Contain              ${AuditDateApproved}       ${CurrentDate}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Schedule Approved Panel.png
    Scroll Element Into View            ${AuditsTeamTab}
    sleep       1 second
    Wait Until Page Contains Element    ${AuditStatusScheduled}
    #Save Button
    Log to Console      Save Button
    Click Element                       ${AuditSaveBtn}
    Wait Until Element Is Visible       ${RecordSaved}                      60 seconds
    #Scheduled Audit Phase
    Log to Console      Audit still in Scheduled Phase
    Wait Until Element Is Visible       ${AuditsPFScheduledActive}          20 seconds
    Wait Until Element Is Visible       ${AuditStartAuditBtn}               20 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audits Saved Button and Scheduled Phase.png

Audit Manager Updates Audit_AS
    #Click on Audits Search Button
    log to console     Click on Audits Search Button
    Wait Until Element Is Visible       ${AuditsSearchButton}                   40 seconds
    click element                       ${AuditsSearchButton}
    #Record Select
    Log to Console      Open Audit Record
    Wait Until Element Is Visible       ${AuditAdminSearchRecordOpen}           20 seconds
    Click Element                       ${AuditAdminSearchRecordOpen}
    #Process Flow
    log to console      Process Flow Button
    Wait Until Element Is Visible       ${AuditPlanningStatus}                  20 seconds
    Click Element                       ${AuditsPFButton}
    #Planned Audit Phase
    log to console      Audit in Planned Phase
    Wait Until Page Contains Element    ${AuditsPFPlannedActive}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/PlannedAuditPhase.png
    #Accept Proposed Date
    Log to Console      Accept Proposed Date
    Scroll Element Into View            ${AuditIntroAuditObjectivePanel}
    sleep       1 second
    Wait Until Element Is Visible       ${AuditAcceptProposeDatesChckbx}        10 seconds
    Click Element                       ${AuditAcceptProposeDatesChckbx}
    Scroll Element Into View            ${AuditIntroAuditObjectivePanel}
    sleep       1 second
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Accept Proposed Date Checkbox.png
    #Schedule Approved
    Log to Console      Schedule Approved
    Wait Until Page Contains Element    ${AuditScheduleApprovedPanel}
    Wait Until Page Contains Element    ${AuditApprovedByDDAdmin}
    Wait Until Page Contains Element    ${AuditDateApproved}
#    Element Should Contain              ${AuditDateApproved}       ${CurrentDate}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Schedule Approved Panel.png
    Scroll Element Into View            ${AuditsTeamTab}
    sleep       1 second
    Wait Until Page Contains Element    ${AuditStatusScheduled}
    #Submit New Dates Button
    Log to Console      Submit New Dates Button
    Click Element                       ${AuditSubmitNewDatesBtn}
    sleep       5 seconds
    #User Returned to Search Results Page
    Log to Console      User Returned to Search Results Page
    Wait Until Element Is Visible       ${AuditsSearchPageRecord1}          20 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audits Record Saved after clicking Submit New Dates Button.png
    #Open Record
    Log to Console      Open Record
    Click Element                       ${AuditsSearchPageRecord1}
    Wait Until Element Is Visible       ${AuditsSavedRecordNo}              20 seconds
    #Process Flow
    log to console      Process Flow Button
    Wait Until Element Is Visible       ${AuditStatusScheduled}             20 seconds
    Click Element                       ${AuditsPFButton}
    #Scheduled Audit Phase
    Log to Console      Audit still in Scheduled Phase
    Wait Until Element Is Visible       ${AuditsPFScheduledActive}          20 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Audits Saved Button and Scheduled Phase.png

