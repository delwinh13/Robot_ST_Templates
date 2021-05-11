*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Audits/vars.robot
Resource    ../../Resources/StakeholderEntity/SE_Vars.robot
Resource    ../../Resources/StakeholderIndividual/SI_vars.robot
Resource    ../../Resources/StakeholderEntity/SE_Keywords.robot
Library     DateTime

*** Keywords ***
#*********************************************** FR16 01-01: View Related Assessment_MS *******************************************
View Related Assessment_MS
    #Full Name Search
    Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SEOrdersFullNameSearch}                   30 seconds
    Input Text                                      ${SEOrdersFullNameSearch}                 Coltness Iron Company Ltd
    #Search Button
    Log to Console      Search Button
    Click Element                                   ${SEOrdersSearchButton}
    Wait Until Element Is Visible                   ${SEOrdersSearchResultsSingleRecord}        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Records Visible.png
    #Open Coltness Iron Company Ltd Record
    Log to Console      Open Coltness Iron Company Ltd Record
    Wait Until Element Is Visible                   ${SERecordColtness}                         30 seconds
    Click Element                                   ${SERecordColtness}
    Sleep       2
    Wait Until Element Is Visible                   ${SEColtnessRecordNo}                       30 seconds
    Wait Until Element Is Visible                   ${SEProcessFlowBtn}                         30 seconds
    Click Element                                   ${SEProcessFlowBtn}
    Page Should Contain Element                     ${SEPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Coltness Iron Company Ltd Record Opened.png
    Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  5
    Click Element                                   ${SETabRightArrow}
    END
    sleep       1
    Page Should Contain Element                     ${SERelatedAssessmentTab}
    #Related Assessment Tab
    Log to Console      Related Assessment Tab
    Click Element                                   ${SERelatedAssessmentTab}
    Sleep       2
    Wait Until Element Is Visible                   ${SERelatedRiskAssessmentVGRecord}          30 seconds
    #Related Inspections Record
    Log to Console      Related Inspections Record
    Scroll Element Into View                        ${SERelatedRiskAssessmentInspectionsInLineEdit}
    Sleep       1
    Click Element                                   ${SERelatedRiskAssessmentVGRecord}
    Sleep       10
    Wait Until Element Is Not Visible               ${SERelatedRiskAssessmentLoading}           30 seconds
    Wait Until Element Is Visible                   ${SERelatedRiskAssessmentInspectionsPF}     30 seconds
    #Inspections Process Flow
    Log to Console      Inspections Process Flow
    Click Element                                   ${SERelatedRiskAssessmentInspectionsPF}
    Wait Until Page Contains Element                ${SERelatedRiskAssessmentInspectionsPFPFInProgress}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Inspections Process Flow In Progress.png

#*********************************************** FR17 01-01: View Engagements_MS *******************************************
View Engagements_MS
    #Full Name Search
    Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SEOrdersFullNameSearch}                   30 seconds
    Input Text                                      ${SEOrdersFullNameSearch}                   Coltness Iron Company Ltd
    #Search Button
    Log to Console      Search Button
    Click Element                                   ${SEOrdersSearchButton}
    Wait Until Element Is Visible                   ${SEOrdersSearchResultsSingleRecord}        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Records Visible.png
    #Open Coltness Iron Company Ltd Record
    Log to Console      Open Coltness Iron Company Ltd Record
    Wait Until Element Is Visible                   ${SERecordColtness}                         30 seconds
    Click Element                                   ${SERecordColtness}
    Sleep       2
    Wait Until Element Is Visible                   ${SEColtnessRecordNo}                       30 seconds
    Wait Until Element Is Visible                   ${SEProcessFlowBtn}                         30 seconds
    Click Element                                   ${SEProcessFlowBtn}
    Page Should Contain Element                     ${SEPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Coltness Iron Company Ltd Record Opened.png
    Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  6
    Click Element                                   ${SETabRightArrow}
    END
    sleep       1
    Page Should Contain Element                     ${SEEngagementsTab}
    #Engagements Tab
    Log to Console      Engagements Tab
    Click Element                                   ${SEEngagementsTab}
    Sleep       2
    Scroll Element Into View                        ${SEViewEngagementsInLineEdit}
    Wait Until Element Is Visible                   ${SEViewEngagementsVGRecord}                60 seconds
    #Previous Engagements Record
    Log to Console      Previous Engagements Record
    Sleep       1
    Click Element                                   ${SEViewEngagementsVGRecord}
    Sleep       12
    Wait Until Element Is Visible                   ${SEViewEngagementsHeader}                  30 seconds
    Wait Until Element Is Visible                   ${SEViewEngagementsPF}                      30 seconds
    Click Element                                   ${SEViewEngagementsPF}
    Wait Until Page Contains Element                ${SEViewEngagementsPFPlanned}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Engagements Process Flow Planned.png

#*********************************************** FR17 01-01: Add/View Engagements_AS *******************************************
Add_View Engagements_AS
    #Full Name Search
    Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SEOrdersFullNameSearch}                   30 seconds
    Input Text                                      ${SEOrdersFullNameSearch}                   Coltness Iron Company Ltd
    #Search Button
    Log to Console      Search Button
    Click Element                                   ${SEOrdersSearchButton}
    Wait Until Element Is Visible                   ${SEOrdersSearchResultsSingleRecord}        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Records Visible.png
    #Open Coltness Iron Company Ltd Record
    Log to Console      Open Coltness Iron Company Ltd Record
    Wait Until Element Is Visible                   ${SERecordColtness}                         30 seconds
    Click Element                                   ${SERecordColtness}
    Sleep       2
    Wait Until Element Is Visible                   ${SEColtnessRecordNo}                       30 seconds
    Wait Until Element Is Visible                   ${SEProcessFlowBtn}                         30 seconds
    Click Element                                   ${SEProcessFlowBtn}
    Page Should Contain Element                     ${SEPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Coltness Iron Company Ltd Record Opened.png
    Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  6
    Click Element                                   ${SETabRightArrow}
    END
    sleep       1
    Page Should Contain Element                     ${SEEngagementsTab}
    #Engagements Tab
    Log to Console      Engagements Tab
    Click Element                                   ${SEEngagementsTab}
    #Add An Engagement
    Log to Console      Add An Engagement
    Click Element                                   ${SEAddAnEngagementBtn}
    Sleep       2
    Log to Console      Switch Window - NEW
    Select Window       NEW
    Sleep       15
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Engagement New Tab Opened.png
    Log to Console      Switch Window
    #Select Frame
    Log to Console      Select Frame
    Select Frame                                    ${iFrame}
    Sleep       10
    #Engagement Process Flow
    Log to Console      Engagement Process Flow Button
    Wait Until Element Is Visible                   ${SIEngagementPF}                   60 seconds
    Click Element                                   ${SIEngagementPF}
    #Add Phase
    Log to Console      Engagement in Add Phase
    Wait Until Page Contains Element                ${SIEngagementPFAdd}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Engagement Add Phase.png
    #Engagement title
    Log to Console      Engagement title
    Input Text                                      ${SIEngagementTitle}                FR17_01_AddView_Engagements_AlternateScenario
    #Engagement date
    Log to Console      Engagement date
    ${CurrentDate}      Get Current Date            result_format=%d/%m/%Y
    Set Global Variable                 ${CurrentDate}
    Click Element                                   ${SIEngagementDate}
    Input Text                                      ${SIEngagementDate}                 ${CurrentDate}
    #Business unit
    Log to Console      Business unit
    Click Element                                   ${SIEngagementBUDD}
    Wait Until Element Is Visible                   ${SIEngagementBUGlobalCompanyExpand}      10 seconds
    Click Element                                   ${SIEngagementBUGlobalCompanyExpand}
    Wait Until Element Is Visible                   ${SIEngagementBUSouthAfricaExpand}        10 seconds
    Click Element                                   ${SIEngagementBUSouthAfricaExpand}
    Wait Until Element Is Visible                   ${SIEngagementBUVictorySite}              10 seconds
    Click Element                                   ${SIEngagementBUVictorySite}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Business Unit Selected.png
    #Project link
    Log to Console      Project link
    Click Element                                   ${SIEngagementProjectLink}
    Click Element                                   ${SIEngagementProjectDD}
    Wait Until Element Is Visible                   ${SIEngagementProjectSelect}              30 seconds
    Click Element                                   ${SIEngagementProjectSelect}
    #Engagement purpose
    Log to Console      Engagement purpose
    Click Element                                   ${SIEngagementEngagementPurposeDD}
    Wait Until Element Is Visible                   ${SIEngagementPurposeCompliance}              30 seconds
    Click Element                                   ${SIEngagementPurposeCompliance}
    #Engagement method
    Log to Console      Engagement method
    Click Element                                   ${SIEngagementMethodDD}
    Wait Until Element Is Visible                   ${SIEngagementMethodInPersonExpand}              30 seconds
    Click Element                                   ${SIEngagementMethodInPersonExpand}
    Wait Until Element Is Visible                   ${SIEngagementMethodProjectUpdate}               30 seconds
    Click Element                                   ${SIEngagementMethodProjectUpdate}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/SE Engagement Purpose_Method.png
    #Confidential
    #Responsible person
    Log to Console      Responsible person
    Click Element                                   ${SIEngagementResponsiblePersonDD}
    Wait Until Element Is Visible                   ${SIEngagementResponsiblePerson2Manager}          30 seconds
    Click Element                                   ${SIEngagementResponsiblePerson2Manager}
    #Impact type
    Log to Console      Impact type
    Click Element                                   ${SIEngagementImpactTypeSelectAll}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/SE Engagement Impact Types.png
    Scroll Element Into View                        ${SIEngagementSaveContinueBtn}
    Sleep       1
    #Audience type
    Log to Console      Audience type
    Click Element                                   ${SIEngagementAudienceTypeDD}
    Wait Until Element Is Visible                   ${SIEngagementAudienceTypeSelect}                 30 seconds
    Click Element                                   ${SIEngagementAudienceTypeSelect}
    #Contact inquiry/topic
    Log to Console      Contact inquiry/topic
    Click Element                                   ${SIEngagementContactDD}
    Wait Until Element Is Visible                   ${SIEngagementContactSelect}                      30 seconds
    Click Element                                   ${SIEngagementContactSelect}
    #Nature of contact inquiry/topic
    Log to Console      Nature of contact inquiry/topic
    Input Text                                      ${SIEngagementNatureContactInquiry}                FR17_01_AddView_Engagements_AlternateScenario
    #Location
    Log to Console      Location
    Click Element                                   ${SIEngagementLocationDD}
    Wait Until Element Is Visible                   ${SIEngagementLocationSelect}                      30 seconds
    Click Element                                   ${SIEngagementLocationSelect}
    #Latitude
    Log to Console      Latitude
    Input Text                                      ${SIEngagementLatitude}                             -26.08875354
    #Longitude
    Log to Console      Longitude
    Input Text                                      ${SIEngagementLongitude}                             28.0867685
    #Engagement description
    Log to Console      Engagement description
    Input Text                                      ${SIEngagementDescription}                          FR17_01_AddView_Engagements_AlternateScenario
    #Engagement outcome
    Log to Console      Engagement outcome
    Input Text                                      ${SIEngagementOutcome}                              FR17_01_AddView_Engagements_AlternateScenario
    #Save and Continue
    Log to Console      Save and Continue
    Click Element                                   ${SIEngagementSaveContinueBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                                      60 seconds
    Page Should Contain Element                     ${SIPreviousEngagementRecordNo}
    Wait Until Page Contains Element                ${SIEngagementPFPlanned}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Engagement Record Saved.png
    #Attendees Tab
    Log to Console      Attendees Tab
    Click Element                                   ${SIEngagementAttendeesTab}
    Wait Until Element Is Visible                   ${SIEngagementAttendeesTab}                          20 seconds
    #Individuals Tab
    Log to Console      Individuals Tab
    Click Element                                   ${SIEngagementIndividualsTab}
    Wait Until Element Is Visible                   ${SIEngagementIndividualsNoResults}                 20 seconds
    Scroll Element Into View                        ${SIEngagementIndividualInLineEditText}
    Sleep       1
    #Individual Add Button
    Log to Console      Individual Add Button
    Click Element                                   ${SIEngagementIndividualsAddBtn}
    Sleep       1
    Wait Until Element Is Visible                   ${SIEngagementIndividualsAtendeeNameDD}             20 seconds
    #Attendee Name
    Log to Console      Attendee Name
    Click Element                                   ${SIEngagementIndividualsAtendeeNameDD}
    Wait Until Element Is Visible                   ${SIEngagementIndividualsAtendeeNameDavidAbel}      30 seconds
    Click Element                                   ${SIEngagementIndividualsAtendeeNameDavidAbel}
    #Attendee Save Button
    Log to Console      Attendee Save Button
    Click Element                                   ${SIEngagementIndividualsSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                                      60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Engagement Attendee Record Saved.png
    Sleep       2
    #Close Window
    Log to Console      Close Window - MAIN
    Close Window
    Sleep       2
    Select Window       MAIN
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Tab Visible.png
    #Engagament Record in Previous Engagements VG
    Log to Console      Engagament Record in Previous Engagements VG
    #Select Frame
    Log to Console      Select Frame
    Select Frame                                    ${iFrame}
    Sleep       2
    Scroll Element Into View                        ${SITopicInLineEditText}
    Sleep       1
    Click Element                                   ${SEPreviousEngagementRefresh}
    Log to Console      Refresh Button
    Sleep       5
    Log to Console      Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                        30 seconds
    #New Engagement Record in Viewing Grid
    Log to Console      New Engagement Record in Viewing Grid
    Wait Until Element Is Visible                   ${SEPreviousEngagementRecordNew}        20 seconds
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity New Engagement Record in Viewing Grid.png

#*********************************************** FR18 01-01: View Engagement_Plan_MS *******************************************
View Engagement Plan_MS
    #Full Name Search
    Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SEOrdersFullNameSearch}                   30 seconds
    Input Text                                      ${SEOrdersFullNameSearch}                   Coltness Iron Company Ltd
    #Search Button
    Log to Console      Search Button
    Click Element                                   ${SEOrdersSearchButton}
    Wait Until Element Is Visible                   ${SEOrdersSearchResultsSingleRecord}        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Records Visible.png
    #Open Coltness Iron Company Ltd Record
    Log to Console      Open Coltness Iron Company Ltd Record
    Wait Until Element Is Visible                   ${SERecordColtness}                         30 seconds
    Click Element                                   ${SERecordColtness}
    Sleep       2
    Wait Until Element Is Visible                   ${SEColtnessRecordNo}                       30 seconds
    Wait Until Element Is Visible                   ${SEProcessFlowBtn}                         30 seconds
    Click Element                                   ${SEProcessFlowBtn}
    Page Should Contain Element                     ${SEPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Coltness Iron Company Ltd Record Opened.png
    Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  6
    Click Element                                   ${SETabRightArrow}
    END
    sleep       1
    Page Should Contain Element                     ${SEEngagementsTab}
    #Engagements Tab
    Log to Console      Engagements Tab
    Click Element                                   ${SEEngagementsTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Engagements Tab.png
    #Engagement Plan Tab
    Log to Console      Previous Engagement Plan Tab
    Wait Until Element Is Visible                   ${SEEngagementPlanTab}              30 seconds
    Click Element                                   ${SEEngagementPlanTab}
    #Open Engagement Plan Record
    Scroll Element Into View                        ${SEEngagementPlanInLineEditText}
    Sleep       10
    Log to Console      Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                        30 seconds
    Log to Console      Open Engagement Plan Record
    Wait Until Element Is Enabled                   ${SEEngagementPlanItems}                60 seconds
    Wait Until Element Is Visible                   ${SEEngagementPlanRecord}               60 seconds
    Click Element                                   ${SEEngagementPlanRecord}
    #Engagement Plan Process Flow
    Log to Console      Engagement Plan Process Flow
    Sleep       5
    Log to Console      Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                           20 seconds
    Wait Until Element Is Visible                   ${SIEngagementPlanLinkBtn}                 60 seconds
    Wait Until Element Is Visible                   ${SIEngagementPlanRecordNo}                60 seconds
    Click Element                                   ${SIEngagementPlanProcessFlow}
    Page Should Contain Element                     ${SIEngagementPlanPFPlanning}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Engagement Plan Process Flow - Planning.png

#*********************************************** FR18 01-01: Add/View Engagement Plan_AS *******************************************
Add_View Engagement Plan_AS
    #Full Name Search
    Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SEOrdersFullNameSearch}                   30 seconds
    Input Text                                      ${SEOrdersFullNameSearch}                   Coltness Iron Company Ltd
    #Search Button
    Log to Console      Search Button
    Click Element                                   ${SEOrdersSearchButton}
    Wait Until Element Is Visible                   ${SEOrdersSearchResultsSingleRecord}        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Records Visible.png
    #Open Coltness Iron Company Ltd Record
    Log to Console      Open Coltness Iron Company Ltd Record
    Wait Until Element Is Visible                   ${SERecordColtness}                         30 seconds
    Click Element                                   ${SERecordColtness}
    Sleep       2
    Wait Until Element Is Visible                   ${SEColtnessRecordNo}                       30 seconds
    Wait Until Element Is Visible                   ${SEProcessFlowBtn}                         30 seconds
    Click Element                                   ${SEProcessFlowBtn}
    Page Should Contain Element                     ${SEPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Coltness Iron Company Ltd Record Opened.png
    Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  6
    Click Element                                   ${SETabRightArrow}
    END
    sleep       1
    Page Should Contain Element                     ${SEEngagementsTab}
    #Engagements Tab
    Log to Console      Engagements Tab
    Click Element                                   ${SEEngagementsTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Engagements Tab.png
    #Engagement Plan Tab
    Log to Console      Previous Engagement Plan Tab
    Wait Until Element Is Visible                   ${SEEngagementPlanTab}              30 seconds
    Click Element                                   ${SEEngagementPlanTab}
    #Add an Engagement Plan
    Log to Console      Add an Engagement Plan
    Click Element                                   ${SEEngagementPlanAddBtn}
    Sleep       10
    Log to Console      Switch Window - NEW
    Select Window       NEW
    Sleep       15
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Engagement Plan New Tab Opened.png
    Log to Console      Switch Window
    #Select Frame
    Log to Console      Select Frame
    Select Frame                                    ${iFrame}
    Sleep       5
    #Engagement Process Flow
    Log to Console      Engagement Plan Process Flow Button
    Wait Until Element Is Visible                   ${SIEngagementPlanPFBtn}                   60 seconds
    Click Element                                   ${SIEngagementPlanPFBtn}
    #Add Phase
    Log to Console      Engagement Plan in Add Phase
    Wait Until Page Contains Element                ${SIEngagementPlanPFAdd}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Engagement Plan Add Phase.png
    #Business unit
    Log to Console      Business unit
    Click Element                                   ${SIEngagementPlanBUDD}
    Wait Until Element Is Visible                   ${SIEngagementPlanBusUnitExpand1}
    Click Element                                   ${SIEngagementPlanBusUnitExpand1}
    Wait Until Element Is Visible                   ${SIEngagementPlanBusUnitExpand2}                 10 seconds
    Click Element                                   ${SIEngagementPlanBusUnitExpand2}
    Wait Until Element Is Visible                   ${SIEngagementPlanBusUnitVictorySite}             10 seconds
    Click Element                                   ${SIEngagementPlanBusUnitVictorySite}
    #Engagement plan title
    Log to Console      Engagement plan title
    Input Text                                      ${SIEngagementPlanTitle}                          FR18_01_AddView_Engagement_Plan_AlternateScenario
    #Project link
    Log to Console      Project link
    Click Element                                   ${SIEngagementPlanProjectLink}
    Click Element                                   ${SIEngagementPlanProjectDD}
    Wait Until Element Is Visible                   ${SIEngagementPlanProjectSelect}                  30 seconds
    Click Element                                   ${SIEngagementPlanProjectSelect}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Engament Plan_Business Unit Selected_Title_Project.png
    #Engagement Plan Start Date
    Log to Console      Engagement Plan Start Date
    ${CurrentDate}      Get Current Date            result_format=%d/%m/%Y
    Set Global Variable                 ${CurrentDate}
    Click Element                                   ${SIEngagementPlanStartDate}
    Input Text                                      ${SIEngagementPlanStartDate}                 ${CurrentDate}
    #Engagement Plan End Date
    Log to Console      Engagement Plan End Date
    ${EndDate}          Get Current Date            result_format=%d/%m/%Y          increment=+3 day
    Set Global Variable                 ${CurrentDate}
    Click Element                                   ${SIEngagementPlanEndDate}
    Input Text                                      ${SIEngagementPlanEndDate}                 ${EndDate}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Engament Plan_Start and End Dates.png
    #Frequency
    Log to Console      Frequency
    Click Element                                   ${SIEngagementPlanFrequencyDD}
    Wait Until Element Is Visible                   ${SIEngagementPlanFrequencyWeekly}                  60 seconds
    Click Element                                   ${SIEngagementPlanFrequencyWeekly}
    #Purpose of engagement
    Log to Console      Purpose of engagement
    Click Element                                   ${SIEngagementPlanPurposeDD}
    Wait Until Element Is Visible                   ${SIEngagementPlanPurposeCompliance}                  60 seconds
    Click Element                                   ${SIEngagementPlanPurposeCompliance}
    #Method of engagement
    Log to Console      Method of engagement
    Click Element                                   ${SIEngagementPlanMethodDD}
    Wait Until Element Is Visible                   ${SIEngagementPlanMethodInPersonExpand}                  60 seconds
    Click Element                                   ${SIEngagementPlanMethodInPersonExpand}
    Wait Until Element Is Visible                   ${SIEngagementPlanMethodProjectUpdate}                  60 seconds
    Click Element                                   ${SIEngagementPlanMethodProjectUpdate}
    #Responsible person
    Log to Console      Responsible person
    Click Element                                   ${SIEngagementPlanResponsiblePersonDD}
    Wait Until Element Is Visible                   ${SIEngagementPlanResponsiblePerson2Manager}                  60 seconds
    Click Element                                   ${SIEngagementPlanResponsiblePerson2Manager}
    #Comments
    Log to Console      Comments
    Input Text                                      ${SIEngagementPlanComments}                              FR18_01_AddView_Engagement_Plan_AlternateScenario
    #Save and Continue
    Log to Console      Save and Continue
    Click Element                                   ${SIEngagementPlanSaveContinueBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                                      60 seconds
    Page Should Contain Element                     ${SIEngagementPlanRecordNo}
    Wait Until Page Contains Element                ${SIEngagementPlanPFPlanning}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Engagement Plan Record Saved.png
    #Participants Tab
    Log to Console      Participants Tab
    Click Element                                   ${SIEngagementPlanParticipantsTab}
    #Stakeholders Checklist
    Log to Console      Stakeholders Checklist
    Click Element                                   ${SIEngagementPlanStakeholderDavidAbel}
    #Entities
    Wait Until Element Is Visible                   ${SEEngagementPlanEntitiesExpand}                                      60 seconds
    Click Element                                   ${SEEngagementPlanEntitiesExpand}
    Click Element                                   ${SEEngagementPlanEntitiesSelect}
    #Save Button
    Log to Console      Save Button
    Click Element                                   ${SIEngagementPlanSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                                      60 seconds
    Page Should Contain Element                     ${SIEngagementPlanRecordNo}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Engagement Plan Participant Record Saved.png
    Sleep       2
    #Close Window
    Log to Console      Close Window - MAIN
    Close Window
    Sleep       2
    Select Window       MAIN
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Plan Tab Visible.png
    #Engagament Plan Record in Engagement Plan VG
    Log to Console      Engagament Plan Record in Engagement Plan VG
    #Select Frame
    Log to Console      Select Frame
    Select Frame                                    ${iFrame}
    Sleep       2
    Scroll Element Into View                        ${SEEngagementPlanInLineEditText}
    Sleep       1
    Log to Console      Refresh Button
    Click Element                                   ${SEEngagementPlanRefresh}
    Sleep       3
    Log to Console      Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                        30 seconds
    #New Engagement Plan Record in Viewing Grid
    Log to Console      New Engagement Plan Record in Viewing Grid
    Wait Until Element Is Visible                   ${SEEngagementPlanRecordNew}            20 seconds
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity New Engagement Plan Record in Viewing Grid.png

#*********************************************** FR19 01-01: View Grievances_MS *******************************************
View Grievances_MS
    #Full Name Search
    Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SEOrdersFullNameSearch}                   30 seconds
    Input Text                                      ${SEOrdersFullNameSearch}                   Coltness Iron Company Ltd
    #Search Button
    Log to Console      Search Button
    Click Element                                   ${SEOrdersSearchButton}
    Wait Until Element Is Visible                   ${SEOrdersSearchResultsSingleRecord}        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Records Visible.png
    #Open Coltness Iron Company Ltd Record
    Log to Console      Open Coltness Iron Company Ltd Record
    Wait Until Element Is Visible                   ${SERecordColtness}                         30 seconds
    Click Element                                   ${SERecordColtness}
    Sleep       2
    Wait Until Element Is Visible                   ${SEColtnessRecordNo}                       30 seconds
    Wait Until Element Is Visible                   ${SEProcessFlowBtn}                         30 seconds
    Click Element                                   ${SEProcessFlowBtn}
    Page Should Contain Element                     ${SEPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Coltness Iron Company Ltd Record Opened.png
    Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  5
    Click Element                                   ${SETabRightArrow}
    END
    sleep       1
    Page Should Contain Element                     ${SEGrievancesTab}
    #Grievances Tab
    Log to Console      Grievances Tab
    Click Element                                   ${SEGrievancesTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Grievances Tab.png
    #Open Grievances Record
    Scroll Element Into View                        ${SEGrievancesInLineEditText}
    Sleep       10
    Log to Console      Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                        60 seconds
    Log to Console      Open Grievances Record
    Wait Until Element Is Enabled                   ${SEGrievancesItems}                    60 seconds
    Wait Until Element Is Visible                   ${SEGrievancesRecord}                   60 seconds
    Click Element                                   ${SEGrievancesRecord}
    #Grievances Process Flow
    Log to Console      Grievances Process Flow
    Sleep       5
    Log to Console      Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                        20 seconds
    Wait Until Element Is Visible                   ${SEGrievancesLinkBtn}                  60 seconds
    Wait Until Element Is Visible                   ${SEGrievancesRecordNo}                 60 seconds
    Click Element                                   ${SEGrievancesProcessFlow}
    Page Should Contain Element                     ${SEGrievancesPFRegistration}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Grievances Process Flow - STEP 1 Registration.png

#*********************************************** FR20 01-01: View Related Incidents_MS *******************************************
View Related Incidents_MS
    #Full Name Search
    Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SEOrdersFullNameSearch}                   30 seconds
    Input Text                                      ${SEOrdersFullNameSearch}                   Coltness Iron Company Ltd
    #Search Button
    Log to Console      Search Button
    Click Element                                   ${SEOrdersSearchButton}
    Wait Until Element Is Visible                   ${SEOrdersSearchResultsSingleRecord}        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Records Visible.png
    #Open Coltness Iron Company Ltd Record
    Log to Console      Open Coltness Iron Company Ltd Record
    Wait Until Element Is Visible                   ${SERecordColtness}                         30 seconds
    Click Element                                   ${SERecordColtness}
    Sleep       2
    Wait Until Element Is Visible                   ${SEColtnessRecordNo}                       30 seconds
    Wait Until Element Is Visible                   ${SEProcessFlowBtn}                         30 seconds
    Click Element                                   ${SEProcessFlowBtn}
    Page Should Contain Element                     ${SEPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Coltness Iron Company Ltd Record Opened.png
    Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  7
    Click Element                                   ${SETabRightArrow}
    END
    sleep       1
    Page Should Contain Element                     ${SERelatedIncidentsTab}
    #Related Incidents Tab
    Log to Console      Related Incidents Tab
    Click Element                                   ${SERelatedIncidentsTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Related Incidents Tab.png
    #Open Related Incidents Record
    Scroll Element Into View                        ${SEIncidentsInLineEditText}
    Sleep       10
    Log to Console      Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                        60 seconds
    Log to Console      Open Incidents Record
    Wait Until Element Is Enabled                   ${SEIncidentsItems}                     60 seconds
    Wait Until Element Is Visible                   ${SEIncidentsRecord}                    60 seconds
    Click Element                                   ${SEIncidentsRecord}
    #Incidents Process Flow
    Log to Console      Incidents Process Flow
    Sleep       5
    Log to Console      Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                        20 seconds
    Wait Until Element Is Visible                   ${SEIncidentsLinkBtn}                   60 seconds
    Wait Until Element Is Visible                   ${SEIncidentsRecordNo}                  60 seconds
    Click Element                                   ${SEIncidentsProcessFlow}
    Page Should Contain Element                     ${SEIncidentsPF2Verification}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Incidents Process Flow - 2.Verification and Additional detail.png

#*********************************************** FR21 01-01: View Initiatives_MS *******************************************
View Initiatives_MS
    #Full Name Search
    Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SEOrdersFullNameSearch}                   30 seconds
    Input Text                                      ${SEOrdersFullNameSearch}                   Coltness Iron Company Ltd
    #Search Button
    Log to Console      Search Button
    Click Element                                   ${SEOrdersSearchButton}
    Wait Until Element Is Visible                   ${SEOrdersSearchResultsSingleRecord}        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Records Visible.png
    #Open Coltness Iron Company Ltd Record
    Log to Console      Open Coltness Iron Company Ltd Record
    Wait Until Element Is Visible                   ${SERecordColtness}                         30 seconds
    Click Element                                   ${SERecordColtness}
    Sleep       2
    Wait Until Element Is Visible                   ${SEColtnessRecordNo}                       30 seconds
    Wait Until Element Is Visible                   ${SEProcessFlowBtn}                         30 seconds
    Click Element                                   ${SEProcessFlowBtn}
    Page Should Contain Element                     ${SEPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Coltness Iron Company Ltd Record Opened.png
    Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  7
    Click Element                                   ${SETabRightArrow}
    END
    sleep       1
    Page Should Contain Element                     ${SEInitiativesTab}
    #Initiatives Tab
    Log to Console      Initiatives Tab
    Click Element                                   ${SEInitiativesTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Initiatives Tab.png
    #Open Social Initiatives Record
    Scroll Element Into View                        ${SEInitiativesInLineEditText}
    Sleep       10
    Log to Console      Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                        60 seconds
    Log to Console      Open Social Initiatives Record
    Wait Until Element Is Enabled                   ${SEInitiativesItems}                   60 seconds
    Wait Until Element Is Visible                   ${SEInitiativesRecord}                  60 seconds
    Click Element                                   ${SEInitiativesRecord}
    #Social Initiatives Process Flow
    Log to Console      Social Initiatives Process Flow
    Sleep       5
    Log to Console      Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                        20 seconds
    Wait Until Element Is Visible                   ${SEInitiativesLinkBtn}                 60 seconds
    Wait Until Element Is Visible                   ${SEInitiativesRecordNo}                60 seconds
    Click Element                                   ${SEInitiativesProcessFlow}
    Page Should Contain Element                     ${SEInitiativesPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Social Initiatives Process Flow - Edit Phase.png

#*********************************************** FR21 01-01: View Initiatives_AS *******************************************
View Initiatives_AS
    #Full Name Search
    Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SEOrdersFullNameSearch}                   30 seconds
    Input Text                                      ${SEOrdersFullNameSearch}                   Coltness Iron Company Ltd
    #Search Button
    Log to Console      Search Button
    Click Element                                   ${SEOrdersSearchButton}
    Wait Until Element Is Visible                   ${SEOrdersSearchResultsSingleRecord}        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Records Visible.png
    #Open Coltness Iron Company Ltd Record
    Log to Console      Open Coltness Iron Company Ltd Record
    Wait Until Element Is Visible                   ${SERecordColtness}                         30 seconds
    Click Element                                   ${SERecordColtness}
    Sleep       2
    Wait Until Element Is Visible                   ${SEColtnessRecordNo}                       30 seconds
    Wait Until Element Is Visible                   ${SEProcessFlowBtn}                         30 seconds
    Click Element                                   ${SEProcessFlowBtn}
    Page Should Contain Element                     ${SEPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Coltness Iron Company Ltd Record Opened.png
    Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  9
    Click Element                                   ${SETabRightArrow}
    END
    sleep       1
    Page Should Contain Element                     ${SEInitiativesTab}
    #Initiatives Tab
    Log to Console      Initiatives Tab
    Click Element                                   ${SEInitiativesTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Initiatives Tab.png
    #Add an Initiative button
    Log to Console      Add an Initiative button
    Click Element                                   ${SEInitiativesAddBtn}
    Sleep       10
    Log to Console      Switch Window - NEW
    Select Window       NEW
    Sleep       15
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Initiatives New Tab Opened.png
    Log to Console      Switch Window
    #Select Frame
    Log to Console      Select Frame
    Select Frame                                    ${iFrame}
    Sleep       5
    #Initiative Process Flow
    Log to Console      Initiative Process Flow Button
    Wait Until Element Is Visible                   ${SIInitiativesProcessFlow}                   60 seconds
    Click Element                                   ${SIInitiativesProcessFlow}
    #Add Phase
    Log to Console      Initiative in Add Phase
    Wait Until Page Contains Element                ${SIInitiativesPFAdd}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Initiative Add Phase.png
    #Business unit
    Log to Console      Business unit
    Click Element                                   ${SIInitiativesBUDD}
    Wait Until Element Is Visible                   ${SIInitiativesBusUnitExpand1}                    10 seconds
    Click Element                                   ${SIInitiativesBusUnitExpand1}
    Wait Until Element Is Visible                   ${SIInitiativesBusUnitExpand2}                    10 seconds
    Click Element                                   ${SIInitiativesBusUnitExpand2}
    Wait Until Element Is Visible                   ${SIInitiativesBusUnitVictorySite}                10 seconds
    Click Element                                   ${SIInitiativesBusUnitVictorySite}
    Sleep       1
    Click Element                                   ${SIInitiativesBUDDArrow}
    #Project title
    Log to Console      Project title
    Input Text                                      ${SIInitiativesProjectTitle}                       FR21_01_AddView_Initiatives_AlternateScenario
    #Type of Initiative
    Log to Console      Type of Initiative
    Click Element                                   ${SIInitiativesTypeInitiativeDD}
    Wait Until Element Is Visible                   ${SIInitiativesTypeInitiativeExpand1}              10 seconds
    Click Element                                   ${SIInitiativesTypeInitiativeExpand1}
    Wait Until Element Is Visible                   ${SIInitiativesTypeInitiativeSelect}               10 seconds
    Click Element                                   ${SIInitiativesTypeInitiativeSelect}
    #Commencement Date
    Log to Console      Commencement Date
    ${CurrentDate}      Get Current Date            result_format=%d/%m/%Y
    Set Global Variable                 ${CurrentDate}
    Click Element                                   ${SIInitiativesCommencementDate}
    Input Text                                      ${SIInitiativesCommencementDate}                 ${CurrentDate}
    #Delivery Date
    Log to Console      Delivery Date
    ${DeliveryDate}          Get Current Date            result_format=%d/%m/%Y          increment=+3 day
    Set Global Variable                 ${DeliveryDate}
    Click Element                                   ${SIInitiativesDeliveryDate}
    Input Text                                      ${SIInitiativesDeliveryDate}                 ${DeliveryDate}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Initiative_Commencement and Delivery Dates.png
    #Approved budget
    Log to Console      Approved budget
    Input Text                                      ${SIInitiativesApprovedBudget}          1500
    #Location
    Log to Console      Location
    Click Element                                   ${SIInitiativesLocationDD}
    Wait Until Element Is Visible                   ${SIInitiativesLocationSA}                              10 seconds
    Click Element                                   ${SIInitiativesLocationSA}
    #Responsible person
    Log to Console      Responsible person
    Click Element                                   ${SIInitiativesResponsiblePersonDD}
    Wait Until Element Is Visible                   ${SIInitiativesResponsiblePerson2Manager}               60 seconds
    Click Element                                   ${SIInitiativesResponsiblePerson2Manager}
    #Sector
    Log to Console      Sector
    Click Element                                   ${SIInitiativesSectorDD}
    Wait Until Element Is Visible                   ${SIInitiativesSectorEducation}                         60 seconds
    Click Element                                   ${SIInitiativesSectorEducation}
    #Description
    Log to Console      Description
    Input Text                                      ${SIInitiativesDescription}                              FR21_01_AddView_Initiatives_AlternateScenario
    #Save Button
    Log to Console      Save Button
    Click Element                                   ${SIInitiativesSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                                          60 seconds
    Page Should Contain Element                     ${SIInitiativesRecordNo}
    Wait Until Page Contains Element                ${SIInitiativesPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Initiative Record Saved.png
    #Beneficiaries Tab
    Log to Console      Participants Tab
    Click Element                                   ${SIInitiativesBeneficiariesTab}
    #Stakeholder Entity Beneficiaries Panel
    Log to Console      Stakeholder Entity Beneficiaries Panel
    Click Element                                   ${SEInitiativesSIBeneficiariesPanel}
    Sleep       2
    #Stakeholder Entity Beneficiaries Add
    Log to Console      Stakeholder Entity Beneficiaries Add
    Click Element                                   ${SEInitiativesSIBeneficiariesAdd}
    Sleep       4
    Click Element                                   ${SEInitiativesSIBeneficiariesDD}
    Wait Until Element Is Visible                   ${SEInitiativesSIBeneficiariesColtness}                 60 seconds
    Click Element                                   ${SEInitiativesSIBeneficiariesColtness}
    #Stakeholder Entity Beneficiaries Save Button
    Log to Console      Stakeholder Entity Beneficiaries Save Button
    Click Element                                   ${SEInitiativesSIBeneficiariesSave}
    Wait Until Element Is Visible                   ${RecordSaved}                                      60 seconds
    Page Should Contain Element                     ${SEInitiativesRecordNew}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Initiative Beneficiaries Record Saved.png
    Sleep       2
    #Close Window
    Log to Console      Close Window - MAIN
    Close Window
    Sleep       2
    Select Window       MAIN
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Tab Visible.png
    #Initiative Record in Social Initiative VG
    Log to Console      Initiative Record in Social Initiative VG
    #Select Frame
    Log to Console      Select Frame
    Select Frame                                    ${iFrame}
    Sleep       2
    Scroll Element Into View                        ${SEInitiativesInLineEditText}
    Sleep       1
    Log to Console      Refresh Button
    Click Element                                   ${SEInitiativesVGRefresh}
    Sleep       3
    Log to Console      Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                        30 seconds
    #New Social Initiative Record in Viewing Grid
    Log to Console      New Initiative Record in Viewing Grid
    Wait Until Element Is Visible                   ${SEInitiativesVGRecordNew}               20 seconds
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity New Social Initiative Record in Viewing Grid.png

#*********************************************** FR22 01-01: View Commitments_MS *******************************************
View Commitments_MS
    #Full Name Search
    Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SEOrdersFullNameSearch}                   30 seconds
    Input Text                                      ${SEOrdersFullNameSearch}                   Coltness Iron Company Ltd
    #Search Button
    Log to Console      Search Button
    Click Element                                   ${SEOrdersSearchButton}
    Wait Until Element Is Visible                   ${SEOrdersSearchResultsSingleRecord}        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Records Visible.png
    #Open Coltness Iron Company Ltd Record
    Log to Console      Open Coltness Iron Company Ltd Record
    Wait Until Element Is Visible                   ${SERecordColtness}                         30 seconds
    Click Element                                   ${SERecordColtness}
    Sleep       2
    Wait Until Element Is Visible                   ${SEColtnessRecordNo}                       30 seconds
    Wait Until Element Is Visible                   ${SEProcessFlowBtn}                         30 seconds
    Click Element                                   ${SEProcessFlowBtn}
    Page Should Contain Element                     ${SEPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Coltness Iron Company Ltd Record Opened.png
    Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  9
    Click Element                                   ${SETabRightArrow}
    END
    sleep       1
    Page Should Contain Element                     ${SECommitmentsTab}
    #Commitments Tab
    Log to Console      Commitments Tab
    Click Element                                   ${SECommitmentsTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Commitments Tab.png
    #Open Commitments Record
    Scroll Element Into View                        ${SECommitmentsInLineEditText}
    Sleep       10
    Log to Console      Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                        60 seconds
    Log to Console      Open Commitments Record
    Wait Until Element Is Enabled                   ${SECommitmentsItems}                   60 seconds
    Wait Until Element Is Visible                   ${SECommitmentsRecord}                  60 seconds
    Click Element                                   ${SECommitmentsRecord}
    #Commitments Process Flow
    Log to Console      Commitments Process Flow
    Sleep       5
    Log to Console      Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                        20 seconds
    Wait Until Element Is Visible                   ${SECommitmentsLinkBtn}                 60 seconds
    Wait Until Element Is Visible                   ${SECommitmentsRecordNo}                60 seconds
    Click Element                                   ${SECommitmentsProcessFlow}
    Page Should Contain Element                     ${SECommitmentsPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Commitments Process Flow - Edit Phase.png

#*********************************************** FR22 01-01: View Commitments_AS *******************************************
View Commitments_AS
    #Full Name Search
    Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SEOrdersFullNameSearch}                   30 seconds
    Input Text                                      ${SEOrdersFullNameSearch}                   Coltness Iron Company Ltd
    #Search Button
    Log to Console      Search Button
    Click Element                                   ${SEOrdersSearchButton}
    Wait Until Element Is Visible                   ${SEOrdersSearchResultsSingleRecord}        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Records Visible.png
    #Open Coltness Iron Company Ltd Record
    Log to Console      Open Coltness Iron Company Ltd Record
    Wait Until Element Is Visible                   ${SERecordColtness}                         30 seconds
    Click Element                                   ${SERecordColtness}
    Sleep       2
    Wait Until Element Is Visible                   ${SEColtnessRecordNo}                       30 seconds
    Wait Until Element Is Visible                   ${SEProcessFlowBtn}                         30 seconds
    Click Element                                   ${SEProcessFlowBtn}
    Page Should Contain Element                     ${SEPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Coltness Iron Company Ltd Record Opened.png
    Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  9
    Click Element                                   ${SETabRightArrow}
    END
    sleep       1
    Page Should Contain Element                     ${SECommitmentsTab}
    #Commitments Tab
    Log to Console      Commitments Tab
    Click Element                                   ${SECommitmentsTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Commitments Tab.png
    #Add a Commitment button
    Log to Console       Add a Commitment button
    Click Element                                   ${SECommitmentsAddBtn}
    Sleep       10
    Log to Console      Switch Window - NEW
    Select Window       NEW
    Sleep       15
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Commitments New Tab Opened.png
    Log to Console      Switch Window
    #Select Frame
    Log to Console      Select Frame
    Select Frame                                    ${iFrame}
    Sleep       5
    #Commitment Process Flow
    Log to Console      Commitment Process Flow Button
    Wait Until Element Is Visible                   ${SICommitmentsProcessFlow}                   60 seconds
    Click Element                                   ${SICommitmentsProcessFlow}
    #Add Phase
    Log to Console      Commitment in Add Phase
    Wait Until Page Contains Element                ${SICommitmentsPFAdd}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Commitment Add Phase.png
    #Business unit
    Log to Console      Business unit
    Click Element                                   ${SICommitmentsBUDD}
    Wait Until Element Is Visible                   ${SIInitiativesBusUnitExpand1}                    10 seconds
    Click Element                                   ${SIInitiativesBusUnitExpand1}
    Wait Until Element Is Visible                   ${SIInitiativesBusUnitExpand2}                    10 seconds
    Click Element                                   ${SIInitiativesBusUnitExpand2}
    Wait Until Element Is Visible                   ${SIInitiativesBusUnitVictorySite}                10 seconds
    Click Element                                   ${SIInitiativesBusUnitVictorySite}
    Sleep       1
    Click Element                                   ${SIInitiativesBUDDArrow}
    #Project title
    Log to Console      Project title
    Input Text                                      ${SIInitiativesProjectTitle}                       FR22_01_Add_Commitments_AlternateScenario
    #Commencement Date
    Log to Console      Commencement Date
    ${CurrentDate}      Get Current Date            result_format=%d/%m/%Y
    Set Global Variable                 ${CurrentDate}
    Click Element                                   ${SIInitiativesCommencementDate}
    Input Text                                      ${SIInitiativesCommencementDate}                 ${CurrentDate}
    #Delivery Date
    Log to Console      Delivery Date
    ${DeliveryDate}          Get Current Date            result_format=%d/%m/%Y          increment=+3 day
    Set Global Variable                 ${DeliveryDate}
    Click Element                                   ${SIInitiativesDeliveryDate}
    Input Text                                      ${SIInitiativesDeliveryDate}                     ${DeliveryDate}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Commitment_Commencement and Delivery Dates.png
    #Approved budget
    Log to Console      Approved budget
    Input Text                                      ${SIInitiativesApprovedBudget}          2500
    #Location
    Log to Console      Location
    Click Element                                   ${SIInitiativesLocationDD}
    Wait Until Element Is Visible                   ${SIInitiativesLocationSA}                              10 seconds
    Click Element                                   ${SIInitiativesLocationSA}
    #Responsible person
    Log to Console      Responsible person
    Click Element                                   ${SIInitiativesResponsiblePersonDD}
    Wait Until Element Is Visible                   ${SIInitiativesResponsiblePerson2Manager}               60 seconds
    Click Element                                   ${SIInitiativesResponsiblePerson2Manager}
    #Sector
    Log to Console      Sector
    Click Element                                   ${SIInitiativesSectorDD}
    Wait Until Element Is Visible                   ${SIInitiativesSectorEducation}                         60 seconds
    Click Element                                   ${SIInitiativesSectorEducation}
    #Description
    Log to Console      Description
    Input Text                                      ${SIInitiativesDescription}                              FR22_01_Add_Commitments_AlternateScenario
    #Link to Meeting
    Log to Console      Link to Meeting
    Click Element                                   ${SICommitmentsLinkMeetingDD}
    Wait Until Element Is Visible                   ${SICommitmentsLinkMeetingSelect}                        60 seconds
    Click Element                                   ${SICommitmentsLinkMeetingSelect}
    #Save Button
    Log to Console      Save Button
    Click Element                                   ${SICommitmentsSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                                           60 seconds
    Page Should Contain Element                     ${SICommitmentsRecordNo}
    Wait Until Page Contains Element                ${SICommitmentsPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Commitment Record Saved.png
    #Beneficiaries Tab
    Log to Console      Beneficiaries Tab
    Click Element                                   ${SIInitiativesBeneficiariesTab}
    #Stakeholder Entity Beneficiaries Panel
    Log to Console      Stakeholder Entity Beneficiaries Panel
    Click Element                                   ${SEInitiativesSIBeneficiariesPanel}
    Sleep       2
    #Stakeholder Entity Beneficiaries Add
    Log to Console      Stakeholder Entity Beneficiaries Add
    Click Element                                   ${SEInitiativesSIBeneficiariesAdd}
    Sleep       4
    Click Element                                   ${SEInitiativesSIBeneficiariesDD}
    Wait Until Element Is Visible                   ${SEInitiativesSIBeneficiariesColtness}                 60 seconds
    Click Element                                   ${SEInitiativesSIBeneficiariesColtness}
    #Stakeholder Entity Beneficiaries Save Button
    Log to Console      Stakeholder Entity Beneficiaries Save Button
    Click Element                                   ${SEInitiativesSIBeneficiariesSave}
    Wait Until Element Is Visible                   ${RecordSaved}                                      60 seconds
    Page Should Contain Element                     ${SEInitiativesRecordNew}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Initiative Beneficiaries Record Saved.png
    Sleep       2
    #Close Window
    Log to Console      Close Window - MAIN
    Close Window
    Sleep       2
    Select Window       MAIN
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Tab Visible.png
    #Commitment Record in Commitment VG
    Log to Console      Commitment Record in Commitment VG
    #Select Frame
    Log to Console      Select Frame
    Select Frame                                    ${iFrame}
    Sleep       2
    Scroll Element Into View                        ${SECommitmentsInLineEditText}
    Sleep       1
    Log to Console      Refresh Button
    Click Element                                   ${SECommitmentsVGRefresh}
    Sleep       3
    Log to Console      Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                        30 seconds
    #New Commitment Record in Viewing Grid
    Log to Console      New Commitment Record in Viewing Grid
    Wait Until Element Is Visible                   ${SECommitmentsRecordNew}               20 seconds
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity New Commitment Record in Viewing Grid.png

#*********************************************** FR23 01-01: View Vulnerability_MS *******************************************
View Vulnerability_MS
    #Full Name Search
    Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SEOrdersFullNameSearch}                   30 seconds
    Input Text                                      ${SEOrdersFullNameSearch}                   Coltness Iron Company Ltd
    #Search Button
    Log to Console      Search Button
    Click Element                                   ${SEOrdersSearchButton}
    Wait Until Element Is Visible                   ${SEOrdersSearchResultsSingleRecord}        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Records Visible.png
    #Open Coltness Iron Company Ltd Record
    Log to Console      Open Coltness Iron Company Ltd Record
    Wait Until Element Is Visible                   ${SERecordColtness}                         30 seconds
    Click Element                                   ${SERecordColtness}
    Sleep       2
    Wait Until Element Is Visible                   ${SEColtnessRecordNo}                       30 seconds
    Wait Until Element Is Visible                   ${SEProcessFlowBtn}                         30 seconds
    Click Element                                   ${SEProcessFlowBtn}
    Page Should Contain Element                     ${SEPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Coltness Iron Company Ltd Record Opened.png
    Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  10
    Click Element                                   ${SETabRightArrow}
    END
    sleep       1
    Page Should Contain Element                     ${SEVulnerabilityTab}
    #Vulnerability Tab
    Log to Console      Vulnerability Tab
    Click Element                                   ${SEVulnerabilityTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Vulnerability Tab.png
    #Vulnerability description
    Input Text                                      ${SEVulnerabilityDescription}           FR23_01_View_Vulnerability_MainScenario
    #Open Vulnerable Members Record
    Scroll Element Into View                        ${SEVulnerabilityInLineEditText}
    Sleep       10
    Log to Console      Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                        60 seconds
    Log to Console      Open Vulnerable Members Record
    Wait Until Element Is Enabled                   ${SEVulnerabilityItems}                 60 seconds
    Wait Until Element Is Visible                   ${SEVulnerabilityRecord}                60 seconds
    Click Element                                   ${SEVulnerabilityRecord}
    #Vulnerable Members Process Flow
    Log to Console      Vulnerable Members Process Flow
    Sleep       5
    Log to Console      Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                        20 seconds
    Wait Until Element Is Visible                   ${SEVulnerabilityLinkBtn}               60 seconds
    Wait Until Element Is Visible                   ${SEVulnerabilityRecordNo}              60 seconds
    Click Element                                   ${SEVulnerabilityProcessFlow}
    Page Should Contain Element                     ${SEVulnerabilityPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Vulnerable Members Process Flow - Edit Phase.png

#*********************************************** FR24 01-01: Capture Stakeholder Entity Actions_MS *******************************************
Capture SE Actions_MS
    #Full Name Search
    Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SEOrdersFullNameSearch}                   30 seconds
    Input Text                                      ${SEOrdersFullNameSearch}                   Coltness Iron Company Ltd
    #Search Button
    Log to Console      Search Button
    Click Element                                   ${SEOrdersSearchButton}
    Wait Until Element Is Visible                   ${SEOrdersSearchResultsSingleRecord}        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Records Visible.png
    #Open Coltness Iron Company Ltd Record
    Log to Console      Open Coltness Iron Company Ltd Record
    Wait Until Element Is Visible                   ${SERecordColtness}                         30 seconds
    Click Element                                   ${SERecordColtness}
    Sleep       2
    Wait Until Element Is Visible                   ${SEColtnessRecordNo}                       30 seconds
    Wait Until Element Is Visible                   ${SEProcessFlowBtn}                         30 seconds
    Click Element                                   ${SEProcessFlowBtn}
    Page Should Contain Element                     ${SEPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Coltness Iron Company Ltd Record Opened.png
    Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  11
    Click Element                                   ${SETabRightArrow}
    END
    sleep       1
    Page Should Contain Element                     ${SEActionsTab}
    #Actions Tab
    Log to Console      Actions Tab
    Click Element                                   ${SEActionsTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Actions Tab.png
    Scroll Element Into View                        ${SEActionsInLineEditText}
    Sleep       2
    #Actions Add Button
    Log to Console      Actions Add Button
    Click Element                                   ${SEActionsAddBtn}
    Sleep       8
    Wait Until Element Is Not Visible               ${SIWorkHistoryOpenRecordLoading}       60 seconds
    Wait Until Element Is Visible                   ${SEActionsRecordHeader}                30 seconds
    #Actions Process flow
    Log to Console      Actions Process flow
    Wait Until Element Is Visible                   ${SEActionsPF}                          60 seconds
    Click Element                                   ${SEActionsPF}
    Element Text Should Be                          ${SEActionsPFAdd}                       Add action
    #Action description
    Log to Console      Action description
    ${CurrentDate}      Get Current Date            result_format=%d/%m/%Y
    Set Global Variable                 ${CurrentDate}
    Input Text                                      ${SEActionsDescription}                 FR24_01_CaptureStakeholderEntityActions_MainScenario ${CurrentDate}
    #Department responsible
    Log to Console      Department responsible
    Click Element                                   ${SEActionsDepartmentDD}
    Wait Until Element Is Visible                   ${SEActionsGlobalExpand}                 20 seconds
    Click Element                                   ${SEActionsGlobalExpand}
    Wait Until Element Is Visible                   ${SEActionsSAExpand}                     20 seconds
    Click Element                                   ${SEActionsSAExpand}
    Wait Until Element Is Visible                   ${SEActionsVictorySite}                  20 seconds
    Click Element                                   ${SEActionsVictorySite}
    #Responsible person
    Log to Console      Responsible person
    Click Element                                   ${SEActionsResposnsibleDD}
    Wait Until Element Is Visible                   ${SEActionsResposnsible2Manager}         40 seconds
    Click Element                                   ${SEActionsResposnsible2Manager}
    #Action due date
    Log to Console      Action due date
    ${CurrentDate}      Get Current Date            result_format=%d/%m/%Y
    Set Global Variable                 ${CurrentDate}
    Click Element                                   ${SEActionsDueDate}
    Input Text                                      ${SEActionsDueDate}                     ${CurrentDate}
    #Save button
    Log to Console      Save button
    Click Element                                   ${SEActionsSaveBtn}
    Wait Until Element Is Visible                   ${SIWorkHistorySavedRecordPop}          60 seconds
    #Save validation
    ${recordnumber}=    get text                    ${SEActionsRecordNo}
    log    ${recordnumber}
    #Validate Process Flow = To be initiated phase
    Element Text Should Be                          ${SEActionsPFToBeInitiated}             To be initiated
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Actions Process Flow - To Be Initiated.png
    #Close Action Record
    Log to Console      Close Action Record
    Click Element                                   ${SEActionsCloseBtn}
    Sleep       4
    FOR  ${i}     IN RANGE  1  11
    Click Element                                   ${SETabRightArrow}
    END
    sleep       1
    Page Should Contain Element                     ${SEActionsTab}
    #Actions Tab
    Log to Console      Actions Tab
    Click Element                                   ${SEActionsTab}
    Wait Until Element Is Visible                   ${SEActionsRecordSMC}                   60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Action Record Closed.png

#*********************************************** FR26 01: View Stakeholder Entity Report_MS **************************************************************
View Stakeholder Entity Report_MS
    #Full Name Search
    Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SEOrdersFullNameSearch}                   30 seconds
    Input Text                                      ${SEOrdersFullNameSearch}                   Coltness Iron Company Ltd
    #Search Button
    Log to Console      Search Button
    Click Element                                   ${SEOrdersSearchButton}
    Wait Until Element Is Visible                   ${SEOrdersSearchResultsSingleRecord}        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Records Visible.png
    #Open Coltness Iron Company Ltd Record
    Log to Console      Open Coltness Iron Company Ltd Record
    Wait Until Element Is Visible                   ${SERecordColtness}                         30 seconds
    Click Element                                   ${SERecordColtness}
    Sleep       2
    Wait Until Element Is Visible                   ${SEColtnessRecordNo}                       30 seconds
    Wait Until Element Is Visible                   ${SEProcessFlowBtn}                         30 seconds
    Click Element                                   ${SEProcessFlowBtn}
    Page Should Contain Element                     ${SEPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Coltness Iron Company Ltd Record Opened.png
    #Stakeholder Entity Record Report Button
    Log to Console      Stakeholder Entity Record Report Button
    Click Element                                   ${SERecordReportsBtn}
    Wait Until Element Is Visible                   ${SERecordReportSITitle}             20 seconds
    #Open Stakeholder Entity Record Report
    Log to Console      Open Stakeholder Entity Record Report
    Click Element                                   ${SERecordReportOpen}
    Switch Window
    Wait Until Element Is Visible                   ${SIReportsPopUpConfirm}             20 seconds
    Click Element                                   ${SIReportsPopUpConfirm}
    Sleep       15
    #Switch Window
    Log to Console      Switch Window - NEW
    Select Window       NEW
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity View Reports Visible.png
    #Close Window
    Log to Console      Close Window - MAIN
    Close Window
    Sleep       2
    Select Window       MAIN
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Record.png

#*********************************************** FR26 02: View Stakeholder Entity Report_AS **************************************************************
View Stakeholder Entity Report_AS
    #Search Button
    Log to Console      Search Button
    Click Element                                   ${SESearchButton}
    Wait Until Element Is Visible                   ${SERecords}                        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Records Visible.png
    #Stakeholder Entity Reports Button
    Log to Console      Stakeholder Entity Reports Button
    Click Element                                   ${SIReportsBtn}
    Wait Until Element Is Visible                   ${SEReportSITitle}                  40 seconds
    #View Reports
    Log to Console      View Reports
    Click Element                                   ${SEViewReportsBtn}
    #Switch Window
    Log to Console      Switch Window
    Switch Window
    Wait Until Element Is Visible                   ${SIReportsPopUpConfirm}            20 seconds
    Click Element                                   ${SIReportsPopUpConfirm}
    Sleep       5
    #Select Window
    Log to Console      Select Window - NEW
    Select Window       NEW
    Sleep       2
    #Report Right Arrow
    Log to Console      Report Right Arrow
    Wait Until Element Is Visible                   ${SIViewReportRightArrow}           60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual View Reports Visible.png
    Click Element                                   ${SIViewReportRightArrow}
    Sleep       1
    Wait Until Element Is Not Visible               ${SIViewReportsLoading}
    #Report Export Button
    Log to Console      Report Export Button
    Click Element                                   ${SIViewReportExportArrow}
    Sleep       1
    Click Element                                   ${SIViewReportsWord}
    Sleep       30
    #Close Window
    Log to Console      Close Window - MAIN
    Close Window
    Sleep       2
    Select Window       MAIN

Full Stakeholder Entity Reports_AS
    #Full Reports
    Log to Console      Full Reports
    Select Frame                                    ${iFrame}
    Click Element                                   ${SIFullReportsBtn}
    #Switch Window
    Log to Console      Switch Window
    Switch Window
    Wait Until Element Is Visible                   ${SIReportsPopUpConfirm}            20 seconds
    Click Element                                   ${SIReportsPopUpConfirm}
    Sleep       5
    #Select Window
    Log to Console      Select Window - NEW
    Select Window       NEW
    Sleep       2
    #Report Right Arrow
    Log to Console      Report Right Arrow
    Wait Until Element Is Visible                   ${SIViewReportRightArrow}           60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Full Reports Visible.png
    Click Element                                   ${SIViewReportRightArrow}
    Sleep       1
    Wait Until Element Is Not Visible               ${SIViewReportsLoading}
    #Report Export Button
    Log to Console      Report Export Button
    Click Element                                   ${SIViewReportExportArrow}
    Sleep       1
    Click Element                                   ${SIViewReportsWord}
    Sleep       30
    #Close Window
    Log to Console      Close Window - MAIN
    Close Window
    Sleep       2
    Select Window       MAIN












