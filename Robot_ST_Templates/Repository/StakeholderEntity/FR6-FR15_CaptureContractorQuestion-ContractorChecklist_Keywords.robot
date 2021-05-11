*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Audits/vars.robot
Resource    ../../Resources/StakeholderEntity/SE_Vars.robot
Resource    ../../Resources/StakeholderIndividual/SI_vars.robot
Resource    ../../Resources/StakeholderEntity/SE_Keywords.robot
Library     DateTime

*** Keywords ***
#*********************************************** FR6 01-01: Capture Contractor Questionnaire_MS *******************************************
Capture Contractor Questionnaire_MS
    #Questionnaires panel
    Log to Console      Questionnaires panel
    Click Element                                   ${SEContractorQuestionnairePanel}
    Wait Until Element Is Visible                   ${SEQuestionNoResults}
    Wait Until Element Is Visible                   ${SEQuestionAddBtn}
    Click Element                                   ${SEQuestionAddBtn}
    Sleep       2
    Wait Until Element Is Visible                   ${SEQuestionRecordOpened}
    Wait Until Element Is Visible                   ${SEQuestionPF}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Questionnaire Opened.png
    #Tabs Visible
    Log to Console      Tabs Visible
    Page Should Contain Element                     ${SEQuestionCompanyInfoTab}
    Page Should Contain Element                     ${SEQuestionBusinessPartnerTab}
    Page Should Contain Element                     ${SEQuestionCompanyCertificatesTab}
    #Tab Right Arrow
    Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  5
    Click Element                                   ${SEQuestionTabRightArrow}
    END
    Sleep       1
    Page Should Contain Element                     ${SEQuestionSafetyHealthIssuesTab}
    Page Should Contain Element                     ${SEQuestionHealthSafeyEnvironmentTab}
    Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  5
    Click Element                                   ${SEQuestionTabRightArrow}
    END
    Sleep       1
    Page Should Contain Element                     ${SEQuestionAdditionalCompanyInformationTab}
    Page Should Contain Element                     ${SEQuestionSupportDocsTab}
    Log to Console      Tab Left Arrow
    FOR  ${i}     IN RANGE  1   11
    Click Element                                   ${SEQuestionTabLeftArrow}
    END
    Sleep       1
    #Company Information
    Log to Console      Company Information
    Click Element                                   ${SEQuestionCompanyInfoTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Questionnaire Company Information Tab.png
    #Company Type
    Log to Console      Company Type
    Click Element                                   ${SEQuestionCompanyTypeDD}
    Wait Until Element Is Visible                   ${SEQuestionCompanyTypeCC}                  30 seconds
    Click Element                                   ${SEQuestionCompanyTypeCC}
    #Provide your relevant Entity's Registration Number
    Log to Console      Provide your relevant Entity's Registration Number
    Input Text                                      ${SEQuestionEntityRegNo}                    001357894
    #(1) BUSINESS PARTNER COMPANY ENGAGEMENT FORM
    Log to Console      (1) BUSINESS PARTNER COMPANY ENGAGEMENT FORM
    Click Element                                   ${SEQuestionBusinessPartnerTab}
    #Main Area
    Log to Console      Main Area
    Input Text                                      ${SEQuestionMainArea}                       FR6_01_CaptureContractorQuestionnaire_MainScenario
    #Operating Unit
    Log to Console      Operating Unit
    Input Text                                      ${SEQuestionOperatingUnit}                  FR6_01_CaptureContractorQuestionnaire_MainScenario
    #Company Certificates
    Log to Console      Company Certificates
    Click Element                                   ${SEQuestionCompanyCertificatesTab}
    #Quality Management
    Log to Console      Is your Company ISO 9001 (Quality Management) Certified?
    Click Element                                   ${SEQuestionQualityManDD}
    Wait Until Element Is Visible                   ${SEQuestionQualityManNo}                  30 seconds
    Click Element                                   ${SEQuestionQualityManNo}
    Sleep       1
    Click Element                                   ${SEQuestionQualityManDD}
    Wait Until Element Is Visible                   ${SEQuestionQualityManYes}                 30 seconds
    Click Element                                   ${SEQuestionQualityManYes}
    #Environmental Management
    Log to Console      Is your Company ISO 14001 (Environmental Management) Certified?
    Click Element                                   ${SEQuestionEnvironmentalManDD}
    Wait Until Element Is Visible                   ${SEQuestionEnvironmentalManNo}                  30 seconds
    Click Element                                   ${SEQuestionEnvironmentalManNo}
    Sleep       1
    Click Element                                   ${SEQuestionEnvironmentalManDD}
    Wait Until Element Is Visible                   ${SEQuestionEnvironmentalManYes}                 30 seconds
    Click Element                                   ${SEQuestionEnvironmentalManYes}
    #Management Systems
    Log to Console      Is your Company OSHAS 18001 (Management Systems) Certified?
    Click Element                                   ${SEQuestionManSystemsDD}
    Wait Until Element Is Visible                   ${SEQuestionManSystemsNo}                  30 seconds
    Click Element                                   ${SEQuestionManSystemsNo}
    Sleep       1
    Click Element                                   ${SEQuestionManSystemsDD}
    Wait Until Element Is Visible                   ${SEQuestionManSystemsYes}                 30 seconds
    Click Element                                   ${SEQuestionManSystemsYes}
    #Safety and Health Legal Requirements & Issues
    Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  4
    Click Element                                   ${SEQuestionTabRightArrow}
    END
    Sleep       1
    Log to Console      Safety and Health Legal Requirements & Issues
    Click Element                                   ${SEQuestionSafetyHealthIssuesTab}
    #Are you registered with the Department of Labour in terms of the COID Act
    Log to Console      Are you registered with the Department of Labour in terms of the COID Act
    Click Element                                   ${SEQuestionCOID_Act_DD}
    Wait Until Element Is Visible                   ${SEQuestionCOID_Act_No}                    30 seconds
    Click Element                                   ${SEQuestionCOID_Act_No}
    Sleep       1
    Click Element                                   ${SEQuestionCOID_Act_DD}
    Wait Until Element Is Visible                   ${SEQuestionCOID_Act_Yes}                 30 seconds
    Click Element                                   ${SEQuestionCOID_Act_Yes}
    #Provide your COID (Compensation for Occupational Injuries and Diseases) Registration Number as it appears on your Letter of Good Standing
    Log to Console      Provide your COID
    Input Text                                      ${SEQuestionProvideCOID}                    123654789987456321
    Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  4
    Click Element                                   ${SEQuestionTabRightArrow}
    END
    Sleep       1
    #Health,Safety,Environmental and Community (Policies, Plans & Systems)
    Log to Console      Health,Safety,Environmental and Community
    Click Element                                   ${SEQuestionHealthSafeyEnvironmentTab}
    #Does your Company have access to relevant Environmental and Health & Safety Legislation (Legal Register)?
    Log to Console      Legal Register
    Click Element                                   ${SEQuestionLegalRegisterDD}
    Wait Until Element Is Visible                   ${SEQuestionLegalRegisterNo}                    30 seconds
    Click Element                                   ${SEQuestionLegalRegisterNo}
    Sleep       1
    Click Element                                   ${SEQuestionLegalRegisterDD}
    Wait Until Element Is Visible                   ${SEQuestionLegalRegisterYes}                   30 seconds
    Click Element                                   ${SEQuestionLegalRegisterYes}
    #Health and Safety Plan
    Log to Console      Health and Safety Plan
    Click Element                                   ${SEQuestionHealthSafetyPlanDD}
    Wait Until Element Is Visible                   ${SEQuestionHealthSafetyPlanNo}                    30 seconds
    Click Element                                   ${SEQuestionHealthSafetyPlanNo}
    Sleep       1
    Click Element                                   ${SEQuestionHealthSafetyPlanDD}
    Wait Until Element Is Visible                   ${SEQuestionHealthSafetyPlanYes}                   30 seconds
    Click Element                                   ${SEQuestionHealthSafetyPlanYes}
#    Log to Console      Tab Right Arrow
#    FOR  ${i}     IN RANGE  1  2
#    Click Element                                   ${SEQuestionTabRightArrow}
#    END
    Sleep       1
    #Additional Company Information
    Log to Console      Additional Company Information
    Click Element                                   ${SEQuestionAdditionalCompanyInformationTab}
    #Is the premises you are using Rented, Owned or Leased?
    Log to Console      Rented, Owned or Leased?
    Click Element                                   ${SEQuestionRentedOwnedLeasedDD}
    Wait Until Element Is Visible                   ${SEQuestionRentedOwnedLeasedRented}               30 seconds
    Click Element                                   ${SEQuestionRentedOwnedLeasedRented}
    #Furnish Annual Nett Profit
    Log to Console      Furnish Annual Nett Profit
    Input Text                                      ${SEQuestionFurnishAnnualNettProfit}               12500000
    #Supporting Documents
    Log to Console      Supporting Documents
    Click Element                                   ${SEQuestionSupportDocsTab}
    Wait Until Element Is Visible                   ${SEQuestionSupportDocsLink}                  20 seconds
    Click Element                                   ${SEQuestionSupportDocsLink}
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
    #Save Button
    Log to Console      Save Button
    Click Element                                   ${SEQuestionSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                              60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Associated Entities Record Saved.png
    Log to Console      Tab Left Arrow
    FOR  ${i}     IN RANGE  1   11
    Click Element                                   ${SEQuestionTabLeftArrow}
    END
    Sleep       1

#*********************************************** FR7 01-01: Capture Contractor Documents_MS *******************************************
Capture Contractor Documents_MS
    #Documents Panel
    Log to Console      Documents Panel
    Click Element                                   ${SEContractorDocumentsPanel}
    Wait Until Element Is Visible                   ${SEDocumentsNoResults}                             20 seconds
    Wait Until Element Is Visible                   ${SEDocumentsAddBtn}                                20 seconds
    Click Element                                   ${SEDocumentsAddBtn}
    Scroll Element Into View                        ${SEDocumentsInLineEdit}
    Sleep       2
    Wait Until Element Is Visible                   ${SEDocumentsTypeTextBox}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Documents.png
    #Document Type
    Log to Console      Document Type
    Input Text                                      ${SEDocumentsTypeTextBox}                           FR7 01-01: Capture Contractor Documents_MS
    #Document Uploaded
    Log to Console      Document Uploaded
    Click Element                                   ${SEDocumentsUploadedDD}
    Wait Until Element Is Visible                   ${SEDocumentsUploadedNo}                            10 seconds
    Click Element                                   ${SEDocumentsUploadedNo}
    Sleep       1
    Click Element                                   ${SEDocumentsUploadedDD}
    Wait Until Element Is Visible                   ${SEDocumentsUploadedYes}                           10 seconds
    Click Element                                   ${SEDocumentsUploadedYes}
    #Outcome
    Log to Console      Outcome
    Click Element                                   ${SEDocumentsOutcomeDD}
    Wait Until Element Is Visible                   ${SEDocumentsOutcomeNotVerified}                    10 seconds
    Click Element                                   ${SEDocumentsOutcomeNotVerified}
    Sleep       1
    Click Element                                   ${SEDocumentsOutcomeDD}
    Wait Until Element Is Visible                   ${SEDocumentsOutcomeUnresolved}                     10 seconds
    Click Element                                   ${SEDocumentsOutcomeUnresolved}
    Sleep       1
    Click Element                                   ${SEDocumentsOutcomeDD}
    Wait Until Element Is Visible                   ${SEDocumentsOutcomeVerified}                       10 seconds
    Click Element                                   ${SEDocumentsOutcomeVerified}
    Sleep       1
    #Date Verified
    Log to Console      Date Verified
    ${CurrentDate}          Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${SEDocumentsDateVerified}                          ${CurrentDate}
    #Comments
    Log to Console      Comments
    Input Text                                      ${SEDocumentsComments}                              FR7 01-01: Capture Contractor Documents_MS
    #Save Button
    Log to Console      Save Button
    Click Element                                   ${SEDocumentsSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                                      60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Documents Record Saved.png
    #In Line Edit Button
    Log to Console      In Line Edit Button
    Click Element                                   ${SEDocumentsInLineEditBtn}
    Wait Until Element Is Visible                   ${SEDocumentsInLineEditRecord}                      60 seconds
    #Open Documents Record
    Log to Console      Open Documents Record
    Click Element                                   ${SEDocumentsInLineEditRecord}
    Wait Until Element Is Visible                   ${SEDocumentsRecordHeader}                          60 seconds
    Wait Until Element Is Visible                   ${SEDocumentsUploadLink}                            60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Documents Record Opened.png
    #Process Flow
    Log to Console      Process Flow
    Sleep       2
    Click Element                                   ${SEDocumentsPF}
    Page Should Contain Element                     ${SEDocumentsPFEdit}
    #Document upload
    Log to Console      Document upload
    Wait Until Element Is Visible                   ${SEDocumentsUploadLink}                  20 seconds
    Click Element                                   ${SEDocumentsUploadLink}
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
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Documents Upload Added.png
    #Record Save Button
    Log to Console      Record Save Button
    Click Element                                   ${SEDocumentsRecordSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                 60 seconds
    #Close Button
    Log to Console      Close Button
    Click Element                                   ${SEDocumentsCloseBtn}
    Sleep       5

#*********************************************** FR8 01-01: Capture Contractor Orders_MS *******************************************
Capture Contractor Orders_MS
    #Full Name Search
    Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SEOrdersFullNameSearch}                 30 seconds
    Input Text                                      ${SEOrdersFullNameSearch}                 Coltness Iron Company Ltd
    #Search Button
    Log to Console      Search Button
    Click Element                                   ${SEOrdersSearchButton}
    Wait Until Element Is Visible                   ${SEOrdersSearchResultsSingleRecord}      40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Records Visible.png
    #Open Coltness Iron Company Ltd Record
    Log to Console      Open Coltness Iron Company Ltd Record
    Wait Until Element Is Visible                   ${SERecordColtness}                 30 seconds
    Click Element                                   ${SERecordColtness}
    Sleep       2
    Wait Until Element Is Visible                   ${SEColtnessRecordNo}               30 seconds
    Wait Until Element Is Visible                   ${SEProcessFlowBtn}                 30 seconds
    Click Element                                   ${SEProcessFlowBtn}
    Page Should Contain Element                     ${SEPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Coltness Iron Company Ltd Record Opened.png
    #Contractor or Supplier Manager Tab
    Log to Console      Contractor or Supplier Manager Tab
    Click Element                                   ${SEContractorTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor or Supplier Manager Tab.png
    #Orders Panel
    Log to Console      Orders Panel
    Click Element                                   ${SEContractorOrdersPanel}
    Sleep       1
    Scroll Element Into View                        ${SEOrdersInLineEdit}
    Sleep       1
    Wait Until Element Is Not Visible               ${SEOrdersRiskAssLoadingMask}                       60 seconds
    Wait Until Element Is Visible                   ${SEOrdersAddBtn}                                   60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Orders.png
    #Orders Add Button
    Log to Console      Orders Add Button
    Click Element                                   ${SEOrdersAddBtn}
    Sleep       5
    Wait Until Element Is Not Visible               ${SEOrdersRecordLoading}                            30 seconds
    Wait Until Element Is Visible                   ${SEOrdersRecordHeader}                             60 seconds
    Wait Until Element Is Visible                   ${SEOrdersOrderNo}                                  60 seconds
    Page Should Contain Element                     ${SEOrdersOrderTab}
    Page Should Contain Element                     ${SEOrdersScopeWorkTab}
    #Process Flow
    Log to Console      Process Flow
    Wait Until Element Is Visible                   ${SEOrdersPF}                                       60 seconds
    Click Element                                   ${SEOrdersPF}
    Page Should Contain Element                     ${SEOrdersPFAdd}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Orders Opened - Add Phase.png
    #Order number
    Log to Console      Order number
    Input Text                                      ${SEOrdersOrderNo}                                  0123
    #Order Status
    Log to Console      Order Status
    Click Element                                   ${SEOrdersStatusDD}
    Wait Until Element Is Visible                   ${SEOrdersStatusApproved}                           60 seconds
    Click Element                                   ${SEOrdersStatusApproved}
    Sleep       1
    Page Should Contain Element                     ${SEOrdersApprovedByDD}
    Page Should Contain Element                     ${SEOrdersDateApproved}
    Click Element                                   ${SEOrdersStatusDD}
    Wait Until Element Is Visible                   ${SEOrdersStatusApproved}                           60 seconds
    Click Element                                   ${SEOrdersStatusDDDeselect}
    Sleep       1
    Click Element                                   ${SEOrdersStatusDD}
    Wait Until Element Is Visible                   ${SEOrdersStatusApproved}                           60 seconds
    Click Element                                   ${SEOrdersStatusApproved}
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Orders Status - Approved.png
    #Approved By
    Log to Console      Approved By
    Click Element                                   ${SEOrdersApprovedByDD}
    Wait Until Element Is Visible                   ${SEOrdersApprovedBy2Manager}                       60 seconds
    Click Element                                   ${SEOrdersApprovedBy2Manager}
    #Date approved
    Log to Console      Date approved
    ${CurrentDate}          Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${SEOrdersDateApproved}                             ${CurrentDate}
    #Scope of Work
    Log to Console      Scope of Work
    Click Element                                   ${SEOrdersScopeWorkTab}
    #Area where work conducted
    Log to Console      Area where work conducted
    Click Element                                   ${SEOrdersBusUnitExpand1}
    Wait Until Element Is Visible                   ${SEOrdersBusUnitExpand2}                       60 seconds
    Click Element                                   ${SEOrdersBusUnitExpand2}
    Click Element                                   ${SEOrdersBusUnitVictorySite}
    Click Element                                   ${SEOrdersBusUnitSA}
    Click Element                                   ${SEOrdersBusUnitGlobalCompany}
    #Project
    Log to Console      Project
    Input Text                                      ${SEOrdersProject}                              FR8 01-01: Capture Contractor Orders_MS
    #Project description
    Log to Console      Project description
    Input Text                                      ${SEOrdersProjectDescription}                   FR8 01-01: Capture Contractor Orders_MS
    #Start date
    Log to Console      Start date
    ${CurrentDate}          Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${SEOrdersStartDate}                            ${CurrentDate}
    #End Date
    Log to Console      End Date
    ${EndDate}          Get Current Date        result_format=%d/%m/%Y              increment=+7 day
    Set Global Variable                             ${EndDate}
    Input Text                                      ${SEOrdersEndDate}                              ${EndDate}
    #Contractor type
    Log to Console      Contractor type
    Click Element                                   ${SEOrdersContractorTypeDD}
    Wait Until Element Is Visible                   ${SEOrdersContractorTypeMaintenance}            60 seconds
    Click Element                                   ${SEOrdersContractorTypeMaintenance}
    Click Element                                   ${SEOrdersContractorTypeProject}
    Click Element                                   ${SEOrdersContractorTypeDDArrow}
    #Save Button
    Log to Console      Save Button
    Click Element                                   ${SEOrdersSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                 60 seconds
    Page Should Contain Element                     ${SEOrdersRecordNo}
    Page Should Contain Element                     ${SEOrdersRiskAssessmentTab}
    Page Should Contain Element                     ${SEOrdersEmployeesTab}
    Page Should Contain Element                     ${SEOrdersFleetManagementTab}
    Page Should Contain Element                     ${SEOrdersToolsEquipTab}
    Page Should Contain Element                     ${SEOrdersChemicalRegisterTab}
    Wait Until Element Is Not Visible               ${RecordSaved2}                                 30 seconds
    Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  5
    Click Element                                   ${SEQuestionTabRightArrow}
    END
    Sleep       1
    Page Should Contain Element                     ${SEOrdersPermissiontoWorkTab}
    Page Should Contain Element                     ${SEOrdersEvaluationsTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Orders Saved and Tabs Visible.png

#*********************************************** FR8 01-01: Capture Contractor Orders_AS *******************************************
Capture Contractor Orders_AS
    #Full Name Search
    Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SEOrdersFullNameSearch}                 30 seconds
    Input Text                                      ${SEOrdersFullNameSearch}                 Coltness Iron Company Ltd
    #Search Button
    Log to Console      Search Button
    Click Element                                   ${SEOrdersSearchButton}
    Wait Until Element Is Visible                   ${SEOrdersSearchResultsSingleRecord}      40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Records Visible.png
    #Open Coltness Iron Company Ltd Record
    Log to Console      Open Coltness Iron Company Ltd Record
    Wait Until Element Is Visible                   ${SERecordColtness}                 30 seconds
    Click Element                                   ${SERecordColtness}
    Wait Until Element Is Visible                   ${SEColtnessRecordNo}               30 seconds
    Wait Until Element Is Visible                   ${SEProcessFlowBtn}                 30 seconds
    Click Element                                   ${SEProcessFlowBtn}
    Page Should Contain Element                     ${SEPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Coltness Iron Company Ltd Record Opened.png
    #Contractor or Supplier Manager Tab
    Log to Console      Contractor or Supplier Manager Tab
    Click Element                                   ${SEContractorTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor or Supplier Manager Tab.png
    #Orders Panel
    Log to Console      Orders Panel
    Click Element                                   ${SEContractorOrdersPanel}
    Sleep       1
    Scroll Element Into View                        ${SEOrdersInLineEdit}
    Sleep       1
    Wait Until Element Is Visible                   ${SEOrdersAddBtn}                                   20 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Orders.png
    #Orders Add Button
    Log to Console      Orders Add Button
    Click Element                                   ${SEOrdersAddBtn}
    Sleep       10
    Wait Until Element Is Not Visible               ${SEOrdersRecordLoading}                            30 seconds
    Wait Until Element Is Visible                   ${SEOrdersRecordHeader}                             60 seconds
    Wait Until Element Is Visible                   ${SEOrdersOrderNo}                                  60 seconds
    Page Should Contain Element                     ${SEOrdersOrderTab}
    Page Should Contain Element                     ${SEOrdersScopeWorkTab}
    #Process Flow
    Log to Console      Process Flow
    Wait Until Element Is Visible                   ${SEOrdersPF}                                       60 seconds
    Click Element                                   ${SEOrdersPF}
    Page Should Contain Element                     ${SEOrdersPFAdd}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Orders Opened - Add Phase.png
    #Order number
    Log to Console      Order number
    Input Text                                      ${SEOrdersOrderNo}                                  0123
    #Order Status
    Log to Console      Order Status
    Click Element                                   ${SEOrdersStatusDD}
    Wait Until Element Is Visible                   ${SEOrdersStatusRejected}                           60 seconds
    Click Element                                   ${SEOrdersStatusRejected}
    Sleep       1
    Click Element                                   ${SEOrdersStatusDD}
    Wait Until Element Is Visible                   ${SEOrdersStatusRejected}                           60 seconds
    Click Element                                   ${SEOrdersStatusDDDeselect}
    Sleep       1
    Click Element                                   ${SEOrdersStatusDD}
    Wait Until Element Is Visible                   ${SEOrdersStatusRejected}                           60 seconds
    Click Element                                   ${SEOrdersStatusRejected}
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Orders Status - Rejected.png
    #Scope of Work
    Log to Console      Scope of Work
    Click Element                                   ${SEOrdersScopeWorkTab}
    #Area where work conducted
    Log to Console      Area where work conducted
    Click Element                                   ${SEOrdersBusUnitExpand1}
    Wait Until Element Is Visible                   ${SEOrdersBusUnitExpand2}                       60 seconds
    Click Element                                   ${SEOrdersBusUnitExpand2}
    Click Element                                   ${SEOrdersBusUnitVictorySite}
    Click Element                                   ${SEOrdersBusUnitSA}
    Click Element                                   ${SEOrdersBusUnitGlobalCompany}
    #Project
    Log to Console      Project
    Input Text                                      ${SEOrdersProject}                              FR8 01-01: Capture Contractor Orders_AS
    #Project description
    Log to Console      Project description
    Input Text                                      ${SEOrdersProjectDescription}                   FR8 01-01: Capture Contractor Orders_AS
    #Start date
    Log to Console      Start date
    ${CurrentDate}          Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${SEOrdersStartDate}                            ${CurrentDate}
    #End Date
    Log to Console      End Date
    ${EndDate}          Get Current Date        result_format=%d/%m/%Y              increment=+3 day
    Set Global Variable                             ${EndDate}
    Input Text                                      ${SEOrdersEndDate}                              ${EndDate}
    #Contractor type
    Log to Console      Contractor type
    Click Element                                   ${SEOrdersContractorTypeDD}
    Wait Until Element Is Visible                   ${SEOrdersContractorTypeMaintenance}            60 seconds
    Click Element                                   ${SEOrdersContractorTypeMaintenance}
    Click Element                                   ${SEOrdersContractorTypeDDArrow}
    #Save Button
    Log to Console      Save Button
    Click Element                                   ${SEOrdersSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                 60 seconds
    Page Should Contain Element                     ${SEOrdersRecordNo}
    Page Should Contain Element                     ${SEOrdersRiskAssessmentTab}
    Page Should Contain Element                     ${SEOrdersEmployeesTab}
    Page Should Contain Element                     ${SEOrdersFleetManagementTab}
    Page Should Contain Element                     ${SEOrdersToolsEquipTab}
    Page Should Contain Element                     ${SEOrdersChemicalRegisterTab}
    Wait Until Element Is Not Visible               ${RecordSaved2}                                 30 seconds
    Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  5
    Click Element                                   ${SEQuestionTabRightArrow}
    END
    Sleep       1
    Page Should Contain Element                     ${SEOrdersPermissiontoWorkTab}
    Page Should Contain Element                     ${SEOrdersEvaluationsTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Orders Saved and Tabs Visible.png

#*********************************************** FR9 01-01: Capture Contractor Risk Assessment_MS *******************************************
Capture Contractor Risk Assessment_MS
    Log to Console      Tab Left Arrow
    FOR  ${i}     IN RANGE  1  5
    Click Element                                   ${SEQuestionTabLeftArrow}
    END
    Sleep       1
    #Risk Assessment Tab
    Log to Console      Risk Assessment Tab
    Click Element                                   ${SEOrdersRiskAssessmentTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Order Risk Assessment Tab.png
    Sleep       1
    #Add Button
    Log to Console      Risk Assessment Add Button
    Wait Until Element Is Visible                   ${SEOrdersRiskAssNoResults}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssAddBtn}
    Click Element                                   ${SEOrdersRiskAssAddBtn}
    Sleep       3
    Wait Until Element Is Not Visible               ${SEOrdersRecordLoading}                            30 seconds
    Wait Until Element Is Visible                   ${SEOrdersRiskAssRecordHeader}                      60 seconds
    Page Should Contain Element                     ${SEOrdersRiskAssCapturer}
    Page Should Contain Element                     ${SEOrdersRiskAssRiskRankingTab}
    Page Should Contain Element                     ${SEOrdersRiskAssRelatedDocsTab}
    #Process Flow
    Log to Console      Process Flow
    Wait Until Element Is Visible                   ${SEOrdersRiskAssPF}                                60 seconds
    Click Element                                   ${SEOrdersRiskAssPF}
    Page Should Contain Element                     ${SEOrdersRiskAssPFAdd}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Order Risk Assessment Opened - Add Phase.png
    #Risk ranking date
    Log to Console      Risk ranking date
    ${CurrentDate}          Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${SEOrdersRiskAssRiskrankingdate}                   ${CurrentDate}
    #Description of scope
    Log to Console      Description of scope
    Input Text                                      ${SEOrdersRiskAssDescriptionScope}                  FR9_01_CaptureContractorRiskAssessment_MainScenario
    #Related documents
    Log to Console      Related documents
    Click Element                                   ${SEOrdersRiskAssRelatedDocsTab}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssUploadLink}                    20 seconds
    Click Element                                   ${SEOrdersRiskAssUploadLink}
    #Alert should be present
    Switch Window
    sleep    1 second
    Wait Until Element Is Visible                   ${AuditSupportDocUrl}                           20 seconds
    Input Text                                      ${AuditSupportDocUrl}                           www.isomertix.com
    Input Text                                      ${AuditSupportDocURLTitle}                      Isometrix
    Click Element                                   ${AuditSupportDocURLAdd}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Related documents Link Added.png
    sleep    1 second
    Select Frame                                    ${iFrame}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Order Risk Assessment Related documents Upload Added.png
    #Risk ranking tab
    Log to Console      Risk ranking tab
    Click Element                                   ${SEOrdersRiskAssRiskRankingTab}
    Sleep       1
    #1. Blasting activities including explosives
    Log to Console      1. Blasting activities
    Click Element                                   ${SEOrdersRiskAss1BlastingDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNo}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNo}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss1BlastingDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #2. Community impact
    Log to Console      2. Community impact
    Click Element                                   ${SEOrdersRiskAss2CommunityDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNA}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNA}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss2CommunityDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #3. Working in confined spaces
    Log to Console      3. Working in confined spaces
    Click Element                                   ${SEOrdersRiskAss3WorkingDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDMaybe}                        20 seconds
    Click Element                                   ${SEOrdersRiskAssDDMaybe}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss3WorkingDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #4. Discharging of contaminated water
    Log to Console      4. Discharging of contaminated water
    Click Element                                   ${SEOrdersRiskAss4DischargingDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNo}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNo}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss4DischargingDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #5. Isolation and lock out
    Log to Console      5. Isolation and lock out
    Click Element                                   ${SEOrdersRiskAss5IsolationDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNA}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNA}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss5IsolationDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #6. Environmental impact
    Log to Console      6. Environmental impact
    Click Element                                   ${SEOrdersRiskAss6EnvironmentalDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDMaybe}                        20 seconds
    Click Element                                   ${SEOrdersRiskAssDDMaybe}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss6EnvironmentalDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #7. Excavation work (Deeper than 1m)
    Log to Console      7. Excavation work
    Click Element                                   ${SEOrdersRiskAss7ExcavationDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNo}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNo}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss7ExcavationDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    Scroll Element Into View                        ${SEOrdersRiskAss16GasDD}
    Sleep       1
    #8. Explosions (electricity, gas, granulation, electrode, equipment)
    Log to Console      8. Explosions
    Click Element                                   ${SEOrdersRiskAss8ExplosionsDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNA}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNA}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss8ExplosionsDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #9. Exposure to airborne pollutants
    Log to Console      9. Exposure to airborne pollutants
    Click Element                                   ${SEOrdersRiskAss9ExposureDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDMaybe}                        20 seconds
    Click Element                                   ${SEOrdersRiskAssDDMaybe}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss9ExposureDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #10. Exposure to electricity
    Log to Console      10. Exposure to electricity
    Click Element                                   ${SEOrdersRiskAss10ExposureDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDMaybe}                        20 seconds
    Click Element                                   ${SEOrdersRiskAssDDMaybe}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss10ExposureDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #11. Exposure to moving parts of equipment including conveyors
    Log to Console      11. Exposure to moving parts
    Click Element                                   ${SEOrdersRiskAss11ExposureDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNo}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNo}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss11ExposureDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #12. Failure of or working on structure (steel, concrete etc)
    Log to Console      12. Failure of or working on structure
    Click Element                                   ${SEOrdersRiskAss12FailureDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNo}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNo}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss12FailureDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #13. Fall of ground
    Log to Console      13. Fall of ground
    Click Element                                   ${SEOrdersRiskAss13FallDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNA}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNA}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss13FallDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #14. Fires
    Log to Console      14. Fires
    Click Element                                   ${SEOrdersRiskAss14FiresDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDMaybe}                        20 seconds
    Click Element                                   ${SEOrdersRiskAssDDMaybe}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss14FiresDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    Scroll Element Into View                        ${SEOrdersRiskAss24NoiseDD}
    Sleep       1
    #15. Exposure to flooding
    Log to Console      15. Exposure to flooding
    Click Element                                   ${SEOrdersRiskAss15ExposureDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNo}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNo}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss15ExposureDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #16. Gas cutting and welding
    Log to Console      16. Gas cutting and welding
    Click Element                                   ${SEOrdersRiskAss16GasDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNA}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNA}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss16GasDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #17. Hazardous chemicals
    Log to Console      17. Hazardous chemicals
    Click Element                                   ${SEOrdersRiskAss17HazardousDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDMaybe}                        20 seconds
    Click Element                                   ${SEOrdersRiskAssDDMaybe}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss17HazardousDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #18. Hoisting, lifting & cranage (cheery picker; forklift Incl)
    Log to Console      18. Hoisting, lifting & cranage
    Click Element                                   ${SEOrdersRiskAss18HoistingDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNo}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNo}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss18HoistingDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #19. Exposure to electricity including switching
    Log to Console      19. Exposure to electricity
    Click Element                                   ${SEOrdersRiskAss19ExposureDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNA}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNA}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss19ExposureDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #20. Illumination (during night time)
    Log to Console      20. Illumination
    Click Element                                   ${SEOrdersRiskAss20IlluminationDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDMaybe}                        20 seconds
    Click Element                                   ${SEOrdersRiskAssDDMaybe}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss20IlluminationDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #21. Dams including tailings, storage, sewerage, stormwater and/or Inundation of water
    Log to Console      21. Dams including tailings
    Click Element                                   ${SEOrdersRiskAss21DamsDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNo}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNo}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss21DamsDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #22. Material handling (manually)
    Log to Console      22. Material handling
    Click Element                                   ${SEOrdersRiskAss22MaterialDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNA}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNA}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss22MaterialDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    Sleep       1
    #23. Mobile machinery & pedestrian interaction
    Log to Console      23. Mobile machinery
    Click Element                                   ${SEOrdersRiskAss23MobileDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDMaybe}                        20 seconds
    Click Element                                   ${SEOrdersRiskAssDDMaybe}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss23MobileDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #24. Noise exposure
    Log to Console      24. Noise exposure
    Click Element                                   ${SEOrdersRiskAss24NoiseDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNo}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNo}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss24NoiseDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    Scroll Element Into View                        ${SEOrdersRiskAss32HighwallDD}
    #25. Stored energy
    Log to Console      25. Stored energy
    Click Element                                   ${SEOrdersRiskAss25StoredDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNA}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNA}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss25StoredDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #26. Transport operations (loading, hauling and dumping)
    Log to Console      26. Transport operations
    Click Element                                   ${SEOrdersRiskAss26TransportDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDMaybe}                        20 seconds
    Click Element                                   ${SEOrdersRiskAssDDMaybe}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss26TransportDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #27. Working at heights
    Log to Console      27. Working at heights
    Click Element                                   ${SEOrdersRiskAss27WorkingDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNo}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNo}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss27WorkingDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #28. Working in conveyor drives
    Log to Console      28. Working in conveyor drives
    Click Element                                   ${SEOrdersRiskAss28WorkingDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNA}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNA}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss28WorkingDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #29. Carrying/moving compact loads
    Log to Console      29. Carrying/moving compact loads
    Click Element                                   ${SEOrdersRiskAss29CarryingDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDMaybe}                        20 seconds
    Click Element                                   ${SEOrdersRiskAssDDMaybe}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss29CarryingDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #30. Electrical and hand tools (grinders, drills, etc)
    Log to Console      30. Electrical and hand tools
    Click Element                                   ${SEOrdersRiskAss30ElectricalDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNo}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNo}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss30ElectricalDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    Sleep       1
    #31. General construction (civil)
    Log to Console      31. General construction
    Click Element                                   ${SEOrdersRiskAss31GeneralDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNA}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNA}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss31GeneralDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    Scroll Element Into View                        ${SEOrdersRiskAss40WinchesDD}
    #32. Highwall  & slope stability including caving
    Log to Console      32. Highwall & slope
    Click Element                                   ${SEOrdersRiskAss32HighwallDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDMaybe}                        20 seconds
    Click Element                                   ${SEOrdersRiskAssDDMaybe}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss32HighwallDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    Scroll Element Into View                        ${SEOrdersRiskAss40WinchesDD}
    #33. Emergency call out
    Log to Console      33. Emergency call out
    Click Element                                   ${SEOrdersRiskAss33EmergencyDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNo}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNo}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss33EmergencyDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #34. Utilising sub-business partners
    Log to Console      34. Utilising sub-business partners
    Click Element                                   ${SEOrdersRiskAss34UtilisingDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNA}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNA}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss34UtilisingDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #35. Toxic fumes and gasses (CO gas)
    Log to Console      35. Toxic fumes and gasses
    Click Element                                   ${SEOrdersRiskAss35ToxicDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDMaybe}                        20 seconds
    Click Element                                   ${SEOrdersRiskAssDDMaybe}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss35ToxicDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #36. Electric arc welding, cutting and coughing
    Log to Console      36. Electric arc welding
    Click Element                                   ${SEOrdersRiskAss36ElectricDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNo}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNo}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss36ElectricDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #37. Working on scaffolding/ scaffold erecting or dismantling
    Log to Console      37. Working on scaffolding
    Click Element                                   ${SEOrdersRiskAss37WorkingDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNo}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNo}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss37WorkingDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #38. Oxygen fuel welding, heating and thermal cutting
    Log to Console      38. Oxygen fuel welding
    Click Element                                   ${SEOrdersRiskAss38OxygenDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNA}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNA}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss38OxygenDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #39. Exposure to heat stress
    Log to Console      39. Exposure to heat stress
    Click Element                                   ${SEOrdersRiskAss39ExposureDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDMaybe}                        20 seconds
    Click Element                                   ${SEOrdersRiskAssDDMaybe}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss39ExposureDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    Scroll Element Into View                        ${SEOrdersRiskAss49PerformingDD}
    Sleep       1
    #40. Winches
    Log to Console      40. Winches
    Click Element                                   ${SEOrdersRiskAss40WinchesDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNo}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNo}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss40WinchesDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #41. Trackbound/railbound activities
    Log to Console      41. Trackbound/railbound activities
    Click Element                                   ${SEOrdersRiskAss41TrackboundDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNA}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNA}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss41TrackboundDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #42. Exposure to hot materials
    Log to Console      42. Exposure to hot materials
    Click Element                                   ${SEOrdersRiskAss42ExposureDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDMaybe}                        20 seconds
    Click Element                                   ${SEOrdersRiskAssDDMaybe}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss42ExposureDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #43. Exposure to molten metals
    Log to Console      43. Exposure to molten metals
    Click Element                                   ${SEOrdersRiskAss43ExposureDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNo}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNo}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss43ExposureDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #44. Usage of power tools
    Log to Console      44. Usage of power tools
    Click Element                                   ${SEOrdersRiskAss44UsageDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNA}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNA}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss44UsageDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #45. Exposure to radioactive sources
    Log to Console      45. Exposure to radioactive sources
    Click Element                                   ${SEOrdersRiskAss45ExposureDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDMaybe}                        20 seconds
    Click Element                                   ${SEOrdersRiskAssDDMaybe}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss45ExposureDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #46. Working at uneven/slippery surfaces
    Log to Console      46. Working at uneven/slippery surfaces
    Click Element                                   ${SEOrdersRiskAss46WorkingDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNo}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNo}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss46WorkingDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #47. Inadequate or lack of ventilation
    Log to Console      47. Inadequate or lack of ventilation
    Click Element                                   ${SEOrdersRiskAss47InadequateDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNA}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNA}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss47InadequateDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    Scroll Element Into View                        ${SEOrdersRiskAssTotalScoreLabel}
    Sleep       1
    #48. Transportation of people
    Log to Console      48. Transportation of people
    Click Element                                   ${SEOrdersRiskAss48TransportationDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDMaybe}                        20 seconds
    Click Element                                   ${SEOrdersRiskAssDDMaybe}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss48TransportationDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #49. Performing IT cabling
    Log to Console      49. Performing IT cabling
    Click Element                                   ${SEOrdersRiskAss49PerformingDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDNo}                           20 seconds
    Click Element                                   ${SEOrdersRiskAssDDNo}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAss49PerformingDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDDYes}                          20 seconds
    Click Element                                   ${SEOrdersRiskAssDDYes}
    #Total
    Log to Console      Total
    Page Should Contain Element                     ${SEOrdersRiskAssTotalInput49}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Order Risk Assessment Total = 49.png
    #Likelihood of risk exposure criteria
    Log to Console      Likelihood of risk exposure criteria
    Click Element                                   ${SEOrdersRiskAssLikelihoodDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssExposure}                       20 seconds
    Click Element                                   ${SEOrdersRiskAssExposure}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAssLikelihoodDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssLikely}                         20 seconds
    Click Element                                   ${SEOrdersRiskAssLikely}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAssLikelihoodDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssCertain}                        20 seconds
    Click Element                                   ${SEOrdersRiskAssCertain}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAssLikelihoodDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssUnlikely}                       20 seconds
    Click Element                                   ${SEOrdersRiskAssUnlikely}
    #Number of employees
    Log to Console      Number of employees
    Click Element                                   ${SEOrdersRiskAssNoemployeesDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssNoemployeesLess10}              20 seconds
    Click Element                                   ${SEOrdersRiskAssNoemployeesLess10}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAssNoemployeesDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssNoemployees10_50}               20 seconds
    Click Element                                   ${SEOrdersRiskAssNoemployees10_50}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAssNoemployeesDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssNoemployeesMore50}              20 seconds
    Click Element                                   ${SEOrdersRiskAssNoemployeesMore50}
    #Duration of work
    Log to Console      Duration of work
    Click Element                                   ${SEOrdersRiskAssDurationworkDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDurationLess7}                  20 seconds
    Click Element                                   ${SEOrdersRiskAssDurationLess7}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAssDurationworkDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDuration7to1Month}              20 seconds
    Click Element                                   ${SEOrdersRiskAssDuration7to1Month}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAssDurationworkDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDurationMore1Month}             20 seconds
    Click Element                                   ${SEOrdersRiskAssDurationMore1Month}
    Sleep       0.5
    Click Element                                   ${SEOrdersRiskAssDurationworkDD}
    Wait Until Element Is Visible                   ${SEOrdersRiskAssDurationContracted}             20 seconds
    Click Element                                   ${SEOrdersRiskAssDurationContracted}
    #Total Score
    Log to Console      Total Score
    Page Should Contain Element                     ${SEOrdersRiskAssTotalScoreHigh}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Order Risk Assessment Total Score = 1176_High.png
    #Risk Assessment Save Button
    Log to Console      Risk Assessment Save Button
    Click Element                                   ${SEOrdersRiskAssSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Order Risk Assessment Record Saved.png
    Scroll Element Into View                        ${SEOrdersRiskAssCapturer}
    Sleep       2
    Page Should Contain Element                     ${SEOrdersRiskAssPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Order Risk Assessment Opened - Edit Phase.png

#*********************************************** FR10 01-01: View Related Stakeholder_MS *******************************************
View Related Stakeholder_MS
    Log to Console      Tab Left Arrow
    FOR  ${i}     IN RANGE  1  5
    Click Element                                   ${SEQuestionTabLeftArrow}
    END
    Sleep       1
    #Employees Tab
    Log to Console      Employees Tab
    Click Element                                   ${SEOrdersEmployeesTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Order Employees Tab.png
    Sleep       1
    #Open Related Stakeholder Record
    Log to Console      Open Related Stakeholder Record
    Page Should Contain Element                     ${SEOrdersEmployeesAddContractorBtn}
    Wait Until Element Is Visible                   ${SEOrdersEmployeesVGRecord}                              60 seconds
    Click Element                                   ${SEOrdersEmployeesVGRecord}
    Sleep       2
    Wait Until Element Is Visible                   ${SEOrdersEmployeesVGRecordOpen}                          60 seconds
    #Related Stakeholder Process Flow
    Log to Console      Related Stakeholder Process Flow
    Sleep       2
    Click Element                                   ${SEOrdersEmployeesVGRecordOpenPF}
    Page Should Contain Element                     ${SEOrdersEmployeesVGRecordOpenPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Order Employees Related Stakeholder Edit Phase.png
    #Close Related Stakeholder Record
    Log to Console      Close Related Stakeholder Record
    Click Element                                   ${SEOrdersEmployeesVGRecordClose}
    Sleep       3
    Wait Until Element Is Visible                   ${SEOrdersEmployeesVGRecord}                              60 seconds

#*********************************************** FR10 01-01: View Related Stakeholder_AS *******************************************
View Related Stakeholder_AS
    Log to Console      Tab Left Arrow
    FOR  ${i}     IN RANGE  1  5
    Click Element                                   ${SEQuestionTabLeftArrow}
    END
    Sleep       1
    #Employees Tab
    Log to Console      Employees Tab
    Click Element                                   ${SEOrdersEmployeesTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Order Employees Tab.png
    Sleep       3
    #Add Contractor Button
    Log to Console      Add Contractor Button
    Page Should Contain Element                     ${SEOrdersEmployeesAddContractorBtn}
    Click Element                                   ${SEOrdersEmployeesAddContractorBtn}
    Sleep       2
    Log to Console      Switch Window - NEW
    Select Window       NEW
    Sleep       15
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual New Tab Opened.png
    #Select Frame
    Log to Console      Select Frame
    Select Frame                                    ${iFrame}
    Sleep       8
    #Process Flow
    Log to Console      Process Flow Button
    Wait Until Element Is Visible                   ${SIProcessFlowBtn}                   60 seconds
    Click Element                                   ${SIProcessFlowBtn}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Process Flow.png
    #Add Phase
    Log to Console      Stakeholder Individual in Add Phase
    Wait Until Page Contains Element                ${SIPFAddPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/StakeIndividual Add Phase.png
    #First Name
    Log to Console      First Name
    Input Text                                      ${SIFirstName}              StakeEnt_FR10AS First (1)
    #Last Name
    Log to Console      Last Name
    Input Text                                      ${SILastName}               Last Name (1) - FR10AS
    #Known As
    Log to Console      Known As
    Input Text                                      ${SIKnownAs}                Test FR10AS
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/StakeIndividual Full Name Autopopulated.png
    #Title
    Log to Console      Title
    Click Element                                   ${SITitleDD}
    sleep       5
    Wait Until Element Is Visible                   ${SITitleMr}                           120 seconds
    Click Element                                   ${SITitleMr}
    #Status
    Log to Console      Status
    Wait Until Page Contains Element                ${SIStatusActive}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/StakeIndividual Title_Status - Active.png
    #Relationship Owner
    Log to Console      Relationship Owner
    Click Element                                   ${SIRelationshipOwnerDD}
    sleep       5
    Wait Until Element Is Visible                   ${SIRelationshipOwnerManager}          90 seconds
    Click Element                                   ${SIRelationshipOwnerManager}
    #Category - Employee
    Log to Console      Category - Employee
    Wait Until Element Is Visible                   ${SICategoryEmployee}                  60 seconds
    Click Element                                   ${SICategoryEmployee}
    #Category - Contractor
    Log to Console      Category - Contractor
    Wait Until Element Is Visible                   ${SICategoryContractor}                60 seconds
    Click Element                                   ${SICategoryContractor}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/StakeIndividual RelationOwner_Categories.png
    #Business Unit
    Log to Console      Business Unit
    Scroll Element Into View                        ${SISaveandContinueBtn}
    Click Element                                   ${SIBusUnitExpand1}
    Wait Until Element Is Visible                   ${SIBusUnitExpand2}                 10 seconds
    Click Element                                   ${SIBusUnitExpand2}
    Wait Until Element Is Visible                   ${SIBusUnitVictorySite}             10 seconds
    Click Element                                   ${SIBusUnitVictorySite}
    #Impact Types
    Log to Console      Impact Types
    Wait Until Element Is Visible                   ${SIImpactTypeBusRisk}                  60 seconds
    Click Element                                   ${SIImpactTypeSelectAll}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/StakeIndividual Impact Types.png
    #Save and Continue
    Log to Console      Save and Continue
    Click Element                                   ${SISaveandContinueBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                          60 seconds
    Scroll Element Into View                        ${SIFirstName}
    Page Should Contain Element                     ${SISavedRecordNo}
    Wait Until Page Contains Element                ${SIPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Saved.png
    #Entities Tab
    Log to Console      Entities Tab
    Click Element                                   ${SIEntitiesTab}
    Page Should Contain Element                     ${SIEntitiesCreateNewEntityBtn}
    Wait Until Element Is Visible                   ${SIEntityAddBtn}                       20 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entities Tab.png
    #Add Button
    Log to Console      Add Button
    Click Element                                   ${SIEntityAddBtn}
    Sleep       6
    #Entities Name
    Log to Console      Entities Name
    Wait Until Element Is Visible                   ${SIEntityStakeNameDD}                  20 seconds
    Click Element                                   ${SIEntityStakeNameDD}
    Sleep       2
    Wait Until Element Is Visible                   ${SIEntityNameColtnessIron}             20 seconds
    Click Element                                   ${SIEntityNameColtnessIron}
    #Stakeholder Position
    Log to Console      Stakeholder Position
    Click Element                                   ${SIEntityStakePositionDD}
    Wait Until Element Is Visible                   ${SIEntityStakePositionCOO}             20 seconds
    Click Element                                   ${SIEntityStakePositionCOO}
    #Record Save Tick Button
    Log to Console      Record Save Tick Button
    Click Element                                   ${SITopicAssessmentRecordSaveTick}
    Wait Until Element Is Visible                   ${RecordSaved}                              60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Related Entities Record Saved.png
    #Close Window
    Log to Console      Close Window - MAIN
    Close Window
    Sleep       2
    Select Window       MAIN
#    Sleep       3
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Employees Tab Visible.png
    #Select Frame
    Log to Console      Select Frame
    Select Frame                                    ${iFrame}
    #Related Stakeholder Viewing Grid
    Log to Console      Related Stakeholder Viewing Grid
    Click Element                                   ${SEOrdersEmployeesVGRefresh}
    Sleep       2
    Wait Until Element Is Not Visible               ${SEOrdersEmployeesVGRefreshLoading}                      30 seconds

#*********************************************** FR11 01-01: Capture Contractor Fleet Management_MS *******************************************
Capture Contractor Fleet Management_MS
    Log to Console      Tab Left Arrow
    FOR  ${i}     IN RANGE  1  5
    Click Element                                   ${SEQuestionTabLeftArrow}
    END
    Sleep       1
    #Fleet Management Tab
    Log to Console      Employees Tab
    Click Element                                   ${SEOrdersFleetManagementTab}
    Wait Until Element Is Visible                   ${SEOrdersFleetManNoResults}                              60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Order Fleet Management Tab.png
    #Add Button
    Log to Console      Add Button
    Click Element                                   ${SEOrdersFleetManAdd}
    Sleep       2
    #Process Flow
    Log to Console      Process Flow
    Wait Until Element Is Not Visible               ${SEOrdersRecordLoading}                                  30 seconds
    Wait Until Element Is Visible                   ${SEOrdersFleetManPF}                                     60 seconds
    Click Element                                   ${SEOrdersFleetManPF}
    Page Should Contain Element                     ${SEOrdersFleetManPFAdd}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Order Fleet Management Add Phase.png
    #Vehicle type / make
    Log to Console      Vehicle type / make
    Input Text                                      ${SEOrdersFleetManVehicletypemake}                               FR11_01_CaptureContractorFleetManagement_MS
    #Reg No
    Log to Console      Reg No.
    Input Text                                      ${SEOrdersFleetManRegNo}                                         ABC123GP
    #License expiry date
    Log to Console      License expiry date
    ${ExpiryDate}          Get Current Date         result_format=%d/%m/%Y              increment=+30 day
    Set Global Variable                             ${ExpiryDate}
    Input Text                                      ${SEOrdersFleetManLicenseExpiryDate}                              ${ExpiryDate}
    #Save Button
    Log to Console      Save Button
    Click Element                                   ${SEOrdersFleetManSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                                   60 seconds
    Wait Until Page Contains Element                ${SEOrdersFleetManEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Order Fleet Management Record Saved.png
    #Close Record
    Log to Console      Close Button
    Click Element                                   ${SEOrdersFleetManCloseBtn}
    Wait Until Element Is Visible                   ${SEOrdersFleetManRecordSubMod}                                    60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Order Fleet Management Record Added.png

#*********************************************** FR12 01-01: Capture Contractor Tools and Equipment_MS *******************************************
Capture Contractor Tools and Equipment_MS
    Log to Console      Tab Left Arrow
    FOR  ${i}     IN RANGE  1  5
    Click Element                                   ${SEQuestionTabLeftArrow}
    END
    Sleep       1
    #Tools and Equipment Tab
    Log to Console      Tools and Equipment Tab
    Click Element                                   ${SEOrdersToolsEquipTab}
    Wait Until Element Is Visible                   ${SEOrdersToolsEquipNoResults}                              60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Order Tools and Equipment Tab.png
    #Add Button
    Log to Console      Add Button
    Click Element                                   ${SEOrdersToolsEquipAddBtn}
    Sleep       2
    #Process Flow
    Log to Console      Process Flow
    Wait Until Element Is Not Visible               ${SEOrdersRecordLoading}                                    30 seconds
    Wait Until Element Is Visible                   ${SEOrdersToolsEquipPF}                                     60 seconds
    Click Element                                   ${SEOrdersToolsEquipPF}
    Page Should Contain Element                     ${SEOrdersToolsEquipPFAdd}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Order Tools and Equipment Add Phase.png
    #Related Documents
    Log to Console      Related Documents
    Click Element                                   ${SEOrdersToolsEquipRelatedDocumentsTab}
    Wait Until Element Is Visible                   ${SEOrdersToolsEquipRelatedDocumentsLink}                  20 seconds
    Click Element                                   ${SEOrdersToolsEquipRelatedDocumentsLink}
    #Alert should be present
    Switch Window
    sleep    1 second
    Wait Until Element Is Visible                   ${AuditSupportDocUrl}                           20 seconds
    Input Text                                      ${AuditSupportDocUrl}                           www.isomertix.com
    Input Text                                      ${AuditSupportDocURLTitle}                      Isometrix
    Click Element                                   ${AuditSupportDocURLAdd}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Related Documents Link Added.png
    sleep    1 second
    Select Frame                                    ${iFrame}
    #Equipment Detail Tab
    Log to Console      Equipment Detail Tab
    Click Element                                   ${SEOrdersToolsEquipDetailTab}
    #Description of equipment
    Log to Console      Description of equipment
    Input Text                                      ${SEOrdersToolsEquipDescription}                FR12_01_CaptureContractorToolsEquip_MS
    #Serial number
    Log to Console      Serial number
    Input Text                                      ${SEOrdersToolsEquipSerialNo}                   0123456789
    #Calibration certificate
    Log to Console      Calibration certificate
    Input Text                                      ${SEOrdersToolsEquipCalibrationCert}            Cal_Cert_012
    #Load test certificate
    Log to Console      Load test certificate
    Input Text                                      ${SEOrdersToolsEquipLoadTest}                   Load_Cert_345
    #Equipment tagged (Ref No.)
    Log to Console      Equipment tagged (Ref No.)
    Input Text                                      ${SEOrdersToolsEquipEquipTagged}                Equip_Ref_ 678
    #Name of tagging authority
    Log to Console      Name of tagging authority
    Input Text                                      ${SEOrdersToolsEquipNameTagAuth}                Equipment_Tag-Auth_9012
    #Pre-use inspection checklist
    Log to Console      Pre-use inspection checklist
    Input Text                                      ${SEOrdersToolsEquipPreInspectionCheck}         Pre_Tag_Auth_Test
    #Logbook (Ref No.)
    Log to Console      Logbook (Ref No.)
    Input Text                                      ${SEOrdersToolsEquipLogbook}                    Log_Test_#123
    #Save Button
    Log to Console      Save Button
    Click Element                                   ${SEOrdersToolsEquipSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                             60 seconds
    Wait Until Page Contains Element                ${SEOrdersToolsEquipPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Order Tools and Equipment Record Saved.png
    #Close Record
    Log to Console      Close Button
    Click Element                                   ${SEOrdersToolsEquipCloseBtn}
    Wait Until Element Is Visible                   ${SEOrdersToolsEquipRecordSubMod}                           60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Order Tools and Equipment Record Added.png

#*********************************************** FR13 01-01: Capture Chemical Register_MS *******************************************
Capture Chemical Register_MS
    Log to Console      Tab Left Arrow
    FOR  ${i}     IN RANGE  1  4
    Click Element                                   ${SEQuestionTabLeftArrow}
    END
    Sleep       1
    #Chemical Register Tab
    Log to Console      Tools and Equipment Tab
    Click Element                                   ${SEOrdersChemicalRegisterTab}
    Wait Until Element Is Visible                   ${SEOrdersChemcialItems}                                    60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Order Chemical Register Tab.png
    #Chemicals they bring onto site
    Log to Console      Chemicals they bring onto site
    Click Element                                   ${SEOrdersChemcialChemicalsSiteSelectAll}
    #Chemicals Contractor will be exposed to
    Log to Console      Chemicals Contractor will be exposed to
    Sleep       1
    Wait Until Element Is Visible                   ${SEOrdersChemcialChemicalsContractorExposed}               60 seconds
    Click Element                                   ${SEOrdersChemcialChemicalsContractorExposed}
    #Process Flow
    Log to Console      Process Flow
    Wait Until Element Is Not Visible               ${SEOrdersRecordLoading}                                    30 seconds
    Wait Until Element Is Visible                   ${SEOrdersChemcialHazardChemRegisterLink}                   60 seconds
    Wait Until Element Is Visible                   ${SEOrdersChemcialHazardChemRegisterPF}                     60 seconds
    Click Element                                   ${SEOrdersChemcialHazardChemRegisterPF}
    Sleep       1
    Page Should Contain Element                     ${SEOrdersChemcialHazardChemRegisterPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Order Chemical Register Edit Phase.png

#*********************************************** FR14 01-01: Capture Contractor Permission to Work Sign Off_MS *******************************************
Capture Permission to Work Sign Off_MS
    Log to Console      Tab Left Arrow
    FOR  ${i}     IN RANGE  1  3
    Click Element                                   ${SEQuestionTabLeftArrow}
    END
    Sleep       1
    #Permission to Work Sign Off Tab
    Log to Console      Permission to Work Sign Off Tab
    Click Element                                   ${SEOrdersPermissiontoWorkTab}
    Wait Until Element Is Visible                   ${SEOrdersPermissionWorkNoResults}                          60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Order Permission to Work Sign Off Tab.png
    #Add Button
    Log to Console      Add Button
    Click Element                                   ${SEOrdersPermissionWorkAddBtn}
    Sleep       2
    #Process Flow
    Log to Console      Process Flow
    Wait Until Element Is Not Visible               ${SEOrdersRecordLoading}                                    30 seconds
    Wait Until Element Is Visible                   ${SEOrdersPermissionWorkPF}                                 60 seconds
    Click Element                                   ${SEOrdersPermissionWorkPF}
    Page Should Contain Element                     ${SEOrdersPermissionWorkPFAdd}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Order Permission to Work Sign Off Add Phase.png
    #Role
    Log to Console      Role
    Click Element                                   ${SEOrdersPermissionWorkRoleDD}
    Wait Until Element Is Visible                   ${SEOrdersPermissionWorkRole1}                              60 seconds
    Click Element                                   ${SEOrdersPermissionWorkRole1}
    #Responsible person to sign off
    Log to Console      Responsible person to sign off
    Click Element                                   ${SEOrdersPermissionWorkResponsiblePersonDD}
    Wait Until Element Is Visible                   ${SEOrdersPermissionWorkResponsiblePerson2Man}               60 seconds
    Click Element                                   ${SEOrdersPermissionWorkResponsiblePerson2Man}
    #Sign off
    Log to Console      Sign off
    Click Element                                   ${SEOrdersPermissionWorkSignoffDD}
    Wait Until Element Is Visible                   ${SEOrdersPermissionWorkSignoffNo}                           60 seconds
    Click Element                                   ${SEOrdersPermissionWorkSignoffNo}
#    Page Should Not Contain                         Sign off date
    Sleep       2
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Order Permission to Work Sign off date removed.png
    Click Element                                   ${SEOrdersPermissionWorkSignoffDD}
    Wait Until Element Is Visible                   ${SEOrdersPermissionWorkSignoffYes}                          60 seconds
    Click Element                                   ${SEOrdersPermissionWorkSignoffYes}
    #Sign off date
    Log to Console      Sign off date
    ${SignOffDate}          Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${SEOrdersPermissionWorkSignOffDate}                         ${SignOffDate}
    #Comments
    Log to Console      Comments
    Input Text                                      ${SEOrdersPermissionWorkSignOffComments}                     FR14_01_CaptureContractorPermissionWorkSignOff_MS
    #Save Button
    Log to Console      Save Button
    Click Element                                   ${SEOrdersPermissionWorkSignOffSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                              60 seconds
    Wait Until Page Contains Element                ${SEOrdersPermissionWorkPFEdit}
    Wait Until Page Contains Element                ${SEOrdersPermissionWorkSignOffRecordNo}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Order Permission to Work Sign Off Edit Phase.png
    #Close Record
    Log to Console      Close Button
    Click Element                                   ${SEOrdersPermissionWorkSignOffCloseBtn}
    Wait Until Element Is Visible                   ${SEOrdersPermissionWorkSignOffRecordSubMod}                 60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Order Tools and Equipment Record Added.png

#*********************************************** FR15 01-01: Capture Contractor Checklist_MS *******************************************
Capture Checklist_MS
    Sleep       1
    #Evaluations Tab
    Log to Console      Evaluations Tab
    Click Element                                   ${SEOrdersEvaluationsTab}
    Wait Until Element Is Visible                   ${SEOrdersChecklistNoResults}                          60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Order Evaluations Tab.png
    #Add Button
    Log to Console      Add Button
    Click Element                                   ${SEOrdersChecklistAddBtn}
    Sleep       2
    #Process Flow
    Log to Console      Process Flow
    Wait Until Element Is Not Visible               ${SEOrdersRecordLoading}                                    30 seconds
    Wait Until Element Is Visible                   ${SEOrdersChecklistPF}                                      60 seconds
    Click Element                                   ${SEOrdersChecklistPF}
    Page Should Contain Element                     ${SEOrdersChecklistPFAdd}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Order Contractor Checklist Add Phase.png
    #Start date
    log to Console      Start date
    ${StartDate}            Get Current Date          result_format=%d/%m/%Y
    Set Global Variable                             ${StartDate}
    Input Text                                      ${SEOrdersChecklistStartDate}                         ${StartDate}
    #End date
    log to Console      End date
    ${EndDate}              Get Current Date          result_format=%d/%m/%Y            increment=+7 day
    Set Global Variable                             ${EndDate}
    Input Text                                      ${SEOrdersChecklistEndDate}                           ${EndDate}
    #Checklist
    Log to Console      Checklist
    Click Element                                   ${SEOrdersChecklistDD}
    Wait Until Element Is Visible                   ${SEOrdersChecklistEvaluation}                              60 seconds
    Click Element                                   ${SEOrdersChecklistEvaluation}
    #Person conducting the checklist
    Log to Console      Person conducting the checklist
    Click Element                                   ${SEOrdersChecklistPersonConductChecklist}
    Wait Until Element Is Visible                   ${SEOrdersChecklist2Man}                                    60 seconds
    Click Element                                   ${SEOrdersChecklist2Man}
    #Submit Button
    Log to Console      Submit Button
    Click Element                                   ${SEOrdersChecklistSubmitBtn}
    Sleep      2
    Wait Until Element Is Visible                   ${SEOrdersChecklistSubModRecord}                            60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Order Checklist Record Added.png
    #Add Button
    Log to Console      Add Button
    Click Element                                   ${SEOrdersChecklistAddBtn}
    Sleep       2
    #Process Flow
    Log to Console      Process Flow
    Wait Until Element Is Not Visible               ${SEOrdersRecordLoading}                                    30 seconds
    Wait Until Element Is Visible                   ${SEOrdersChecklistPF}                                      60 seconds
    Click Element                                   ${SEOrdersChecklistPF}
    Page Should Contain Element                     ${SEOrdersChecklistPFAdd}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Order Contractor Checklist Add Phase.png
    #Start date
    log to Console      Start date
    ${StartDate}            Get Current Date          result_format=%d/%m/%Y            increment=+7 day
    Set Global Variable                             ${StartDate}
    Input Text                                      ${SEOrdersChecklistStartDate}                         ${StartDate}
    #End date
    log to Console      End date
    ${EndDate}              Get Current Date          result_format=%d/%m/%Y            increment=+14 day
    Set Global Variable                             ${EndDate}
    Input Text                                      ${SEOrdersChecklistEndDate}                           ${EndDate}
    #Checklist
    Log to Console      Checklist
    Click Element                                   ${SEOrdersChecklistDD}
    Wait Until Element Is Visible                   ${SEOrdersChecklistEvaluation}                              60 seconds
    Click Element                                   ${SEOrdersChecklistEvaluation}
    #Person conducting the checklist
    Log to Console      Person conducting the checklist
    Click Element                                   ${SEOrdersChecklistPersonConductChecklist}
    Wait Until Element Is Visible                   ${SEOrdersChecklist2Man}                                    60 seconds
    Click Element                                   ${SEOrdersChecklist2Man}
    #Save and Continue Button
    Log to Console      Save and Continue Button
    Click Element                                   ${SEOrdersChecklistSaveContinueBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                              60 seconds
    Wait Until Page Contains Element                ${SEOrdersChecklistPFEdit}
    Wait Until Page Contains Element                ${SEOrdersChecklistRecordNo}
    Page Should Contain Element                     ${SEOrdersChecklistStartBtn}
    Page Should Contain Element                     ${SEOrdersChecklistFindingsTab}
    Page Should Contain Element                     ${SEOrdersChecklistSupportDocsTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Order Checklist Edit Phase.png

























