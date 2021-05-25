*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Audits/vars.robot
Resource    ../../Resources/StakeholderIndividual/SI_vars.robot
Resource    ../../Resources/StakeholderIndividual/SI_keywords.robot
Resource    ../../Resources/Audits/vars.robot
Library     DateTime

*** Keywords ***
#*********************************************** FR7 01: Add/View Engagements_MS  *******************************************
View Engagements_MS
    #Full Name Search
    #Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SIFullNameSearch}                 30 seconds
    Input Text                                      ${SIFullNameSearch}                 David Abel
    #Search Button
    #Log to Console      Search Button
    Click Element                                   ${SISearchButton}
    Wait Until Element Is Visible                   ${SIRecords}                        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Records Visible.png
    #Open David Abel Record
    #Log to Console      Open David Abel Record
    Wait Until Element Is Visible                   ${SIRecordDavidAbel}                30 seconds
    Click Element                                   ${SIRecordDavidAbel}
    Wait Until Element Is Visible                   ${SISavedRecordNo}                  30 seconds
    Wait Until Element Is Visible                   ${SIProcessFlowBtn}                 30 seconds
    Click Element                                   ${SIProcessFlowBtn}
    Page Should Contain Element                     ${SIPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual David Abel Record Opened.png
    #Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  5
    Click Element                                   ${SITabRightArrow}
    END
    #Engagements  Tab
    #Log to Console      Engagements Tab
    Click Element                                   ${SIEngagementsTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Engagements Tab.png
    #Previous Engagement Tab
    #Log to Console      Previous Engagement Tab
    Wait Until Element Is Visible                   ${SIPreviousEngagementTab}          30 seconds
    Click Element                                   ${SIPreviousEngagementTab}
    #Open Engagement Record
    Scroll Element Into View                        ${SITopicInLineEditText}
    Sleep       1
    Click Element                                   ${SIPreviousEngagementRefresh}
    #Log to Console      Refresh Button
    Sleep       10
    #Log to Console      Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                        30 seconds
    #Log to Console      Open Engagement Record
    Wait Until Element Is Enabled                   ${SIPreviousEngagementItems}            60 seconds
    Wait Until Element Is Visible                   ${SIPreviousEngagementRecord}           60 seconds
    Click Element                                   ${SIPreviousEngagementRecord}
    #Previous Engagement Process Flow
    #Log to Console      Previous Engagement Process Flow
    Sleep       5
    #Log to Console      Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                           20 seconds
    Wait Until Element Is Visible                   ${SIPreviousEngagementLinkBtn}             60 seconds
    Wait Until Element Is Visible                   ${SIPreviousEngagementRecordNo}            60 seconds
    Click Element                                   ${SIPreviousEngagementProcessFlow}
    Page Should Contain Element                     ${SIPreviousEngagementPFPlanned}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Previous Engagement Process Flow - Planned.png

#*********************************************** FR7 01: Add/View Engagements_AS  *******************************************
Add_View Engagements_AS
    #Full Name Search
    #Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SIFullNameSearch}                 30 seconds
    Input Text                                      ${SIFullNameSearch}                 David Abel
    #Search Button
    #Log to Console      Search Button
    Click Element                                   ${SISearchButton}
    Wait Until Element Is Visible                   ${SIRecords}                        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Records Visible.png
    #Open David Abel Record
    #Log to Console      Open David Abel Record
    Wait Until Element Is Visible                   ${SIRecordDavidAbel}                30 seconds
    Click Element                                   ${SIRecordDavidAbel}
    Wait Until Element Is Visible                   ${SISavedRecordNo}                  30 seconds
    Wait Until Element Is Visible                   ${SIProcessFlowBtn}                 30 seconds
    Click Element                                   ${SIProcessFlowBtn}
    Page Should Contain Element                     ${SIPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual David Abel Record Opened.png
    #Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  5
    Click Element                                   ${SITabRightArrow}
    END
    #Engagements  Tab
    #Log to Console      Engagements Tab
    Click Element                                   ${SIEngagementsTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Engagements Tab.png
    #Previous Engagement Tab
    #Log to Console      Previous Engagement Tab
    Wait Until Element Is Visible                   ${SIPreviousEngagementTab}          30 seconds
    Click Element                                   ${SIPreviousEngagementTab}
    #Add An Engagement
    #Log to Console      Add An Engagement
    Click Element                                   ${SIAddAnEngagementBtn}
    Sleep       10
    #Get Window Handles
    #Log to Console      Get Window Handles
    @{list1}        Get Window Handles
    FOR   ${win}  IN  @{list1}
    #Log to Console      ${win}
    Select Window       ${win}
    ${URL}=     Get Location
    #Log to Console      ${URL}
    END
    Sleep       5
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Engagement New Tab Opened.png
    #Log to Console      Switch Window
    #Select Frame
    #Log to Console      Select Frame
    Select Frame                                    ${iFrame}
    Sleep       2
    #Engagement Process Flow
    #Log to Console      Engagement Process Flow Button
    Wait Until Element Is Visible                   ${SIEngagementPF}                   60 seconds
    Click Element                                   ${SIEngagementPF}
    #Add Phase
    #Log to Console      Engagement in Add Phase
    Wait Until Page Contains Element                ${SIEngagementPFAdd}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Engagement Add Phase.png
    #Engagement title
    #Log to Console      Engagement title
    Input Text                                      ${SIEngagementTitle}                FR7_01_Add_View Engagements_AlternateScenario
    #Engagement date
    #Log to Console      Engagement date
    ${CurrentDate}      Get Current Date            result_format=%d/%m/%Y
    Set Global Variable                 ${CurrentDate}
    Click Element                                   ${SIEngagementDate}
    Input Text                                      ${SIEngagementDate}                 ${CurrentDate}
    #Business unit
    #Log to Console      Business unit
    Click Element                                   ${SIEngagementBUDD}
    Wait Until Element Is Visible                   ${SIEngagementBUGlobalCompanyExpand}      10 seconds
    Click Element                                   ${SIEngagementBUGlobalCompanyExpand}
    Wait Until Element Is Visible                   ${SIEngagementBUSouthAfricaExpand}        10 seconds
    Click Element                                   ${SIEngagementBUSouthAfricaExpand}
    Wait Until Element Is Visible                   ${SIEngagementBUVictorySite}              10 seconds
    Click Element                                   ${SIEngagementBUVictorySite}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Business Unit Selected.png
    #Project link
    #Log to Console      Project link
    Click Element                                   ${SIEngagementProjectLink}
    Click Element                                   ${SIEngagementProjectDD}
    Wait Until Element Is Visible                   ${SIEngagementProjectSelect}              30 seconds
    Click Element                                   ${SIEngagementProjectSelect}
    #Engagement purpose
    #Log to Console      Engagement purpose
    Click Element                                   ${SIEngagementEngagementPurposeDD}
    Wait Until Element Is Visible                   ${SIEngagementPurposeCompliance}              30 seconds
    Click Element                                   ${SIEngagementPurposeCompliance}
    #Engagement method
    #Log to Console      Engagement method
    Click Element                                   ${SIEngagementMethodDD}
    Wait Until Element Is Visible                   ${SIEngagementMethodInPersonExpand}              30 seconds
    Click Element                                   ${SIEngagementMethodInPersonExpand}
    Wait Until Element Is Visible                   ${SIEngagementMethodProjectUpdate}               30 seconds
    Click Element                                   ${SIEngagementMethodProjectUpdate}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/SI Engagement Purpose_Method.png
    #Confidential
    #Responsible person
    #Log to Console      Responsible person
    Click Element                                   ${SIEngagementResponsiblePersonDD}
    Wait Until Element Is Visible                   ${SIEngagementResponsiblePerson2Manager}          30 seconds
    Click Element                                   ${SIEngagementResponsiblePerson2Manager}
    #Impact type
    #Log to Console      Impact type
    Click Element                                   ${SIEngagementImpactTypeSelectAll}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/SI Engagement Impact Types.png
    Scroll Element Into View                        ${SIEngagementSaveContinueBtn}
    Sleep       1
    #Audience type
    #Log to Console      Audience type
    Click Element                                   ${SIEngagementAudienceTypeDD}
    Wait Until Element Is Visible                   ${SIEngagementAudienceTypeSelect}                 30 seconds
    Click Element                                   ${SIEngagementAudienceTypeSelect}
    #Contact inquiry/topic
    #Log to Console      Contact inquiry/topic
    Click Element                                   ${SIEngagementContactDD}
    Wait Until Element Is Visible                   ${SIEngagementContactSelect}                      30 seconds
    Click Element                                   ${SIEngagementContactSelect}
    #Nature of contact inquiry/topic
    #Log to Console      Nature of contact inquiry/topic
    Input Text                                      ${SIEngagementNatureContactInquiry}                FR7_01_Add_View Engagements_AlternateScenario
    #Location
    #Log to Console      Location
    Click Element                                   ${SIEngagementLocationDD}
    Wait Until Element Is Visible                   ${SIEngagementLocationSelect}                      30 seconds
    Click Element                                   ${SIEngagementLocationSelect}
    #Latitude
    #Log to Console      Latitude
    Input Text                                      ${SIEngagementLatitude}                             -26.08875354
    #Longitude
    #Log to Console      Longitude
    Input Text                                      ${SIEngagementLongitude}                             28.0867685
    #Engagement description
    #Log to Console      Engagement description
    Input Text                                      ${SIEngagementDescription}                          FR7_01_Add_View Engagements_AlternateScenario
    #Engagement outcome
    #Log to Console      Engagement outcome
    Input Text                                      ${SIEngagementOutcome}                              FR7_01_Add_View Engagements_AlternateScenario
    #Save and Continue
    #Log to Console      Save and Continue
    Click Element                                   ${SIEngagementSaveContinueBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                                      60 seconds
    Page Should Contain Element                     ${SIPreviousEngagementRecordNo}
    Wait Until Page Contains Element                ${SIEngagementPFPlanned}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Engagement Record Saved.png
    #Attendees Tab
    #Log to Console      Attendees Tab
    Click Element                                   ${SIEngagementAttendeesTab}
    Wait Until Element Is Visible                   ${SIEngagementIndividualsTab}                       20 seconds
    #Individuals Tab
    #Log to Console      Individuals Tab
    Click Element                                   ${SIEngagementIndividualsTab}
    Wait Until Element Is Visible                   ${SIEngagementIndividualsNoResults}                 20 seconds
    Scroll Element Into View                        ${SIEngagementIndividualInLineEditText}
    Sleep       1
    #Individual Add Button
    #Log to Console      Individual Add Button
    Click Element                                   ${SIEngagementIndividualsAddBtn}
    Sleep       1
    Wait Until Element Is Visible                   ${SIEngagementIndividualsAtendeeNameDD}             20 seconds
    #Attendee Name
    #Log to Console      Attendee Name
    Click Element                                   ${SIEngagementIndividualsAtendeeNameDD}
    Wait Until Element Is Visible                   ${SIEngagementIndividualsAtendeeNameDavidAbel}      30 seconds
    Click Element                                   ${SIEngagementIndividualsAtendeeNameDavidAbel}
    #Attendee Save Button
    #Log to Console      Attendee Save Button
    Click Element                                   ${SIEngagementIndividualsSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                                      60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Engagement Attendee Record Saved.png
    Sleep       2
    #Get Window Handles
    #Log to Console      Get Window Handles
    @{list2}        Get Window Handles
    FOR   ${win2}  IN  @{list2}
    #Log to Console      ${win2}
    #Log to Console      Switch Window
    Switch Window       IsoMetrix
    ${URL}=     Get Location
    #Log to Console      ${URL}
    END
    Sleep       3
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Tab Visible.png
    #Engagament Record in Previous Engagements VG
    #Log to Console      Engagament Record in Previous Engagements VG
    #Select Frame
    #Log to Console      Select Frame
    Select Frame                                    ${iFrame}
    Sleep       2
    Scroll Element Into View                        ${SITopicInLineEditText}
    Sleep       1
    Click Element                                   ${SIPreviousEngagementRefresh}
    #Log to Console      Refresh Button
    Sleep       5
    #Log to Console      Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                        30 seconds
    #New Engagement Record in Viewing Grid
    #Log to Console      New Engagement Record in Viewing Grid
    Wait Until Element Is Visible                   ${SIPreviousEngagementRecordNew}        20 seconds
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual New Engagement Record in Viewing Grid.png

#*********************************************** FR8 01: Add/View Engagement Plan_MS  *******************************************
View Engagement Plan_MS
    #Full Name Search
    #Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SIFullNameSearch}                 30 seconds
    Input Text                                      ${SIFullNameSearch}                 David Abel
    #Search Button
    #Log to Console      Search Button
    Click Element                                   ${SISearchButton}
    Wait Until Element Is Visible                   ${SIRecords}                        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Records Visible.png
    #Open David Abel Record
    #Log to Console      Open David Abel Record
    Wait Until Element Is Visible                   ${SIRecordDavidAbel}                30 seconds
    Click Element                                   ${SIRecordDavidAbel}
    Wait Until Element Is Visible                   ${SISavedRecordNo}                  30 seconds
    Wait Until Element Is Visible                   ${SIProcessFlowBtn}                 30 seconds
    Click Element                                   ${SIProcessFlowBtn}
    Page Should Contain Element                     ${SIPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual David Abel Record Opened.png
    #Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  5
    Click Element                                   ${SITabRightArrow}
    END
    #Engagements Tab
    #Log to Console      Engagements Tab
    Click Element                                   ${SIEngagementsTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Engagements Tab.png
    #Engagement Plan Tab
    #Log to Console      Previous Engagement Plan Tab
    Wait Until Element Is Visible                   ${SIEngagementPlanTab}              30 seconds
    Click Element                                   ${SIEngagementPlanTab}
    #Open Engagement Plan Record
    Scroll Element Into View                        ${SIEngagementPlanInLineEditText}
    Sleep       1
#    Click Element                                   ${SIEngagementPlanRefresh}
    #Log to Console      Refresh Button
    Sleep       10
    #Log to Console      Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                        30 seconds
    #Log to Console      Open Engagement Plan Record
    Wait Until Element Is Enabled                   ${SIEngagementPlanItems}                60 seconds
    Wait Until Element Is Visible                   ${SIEngagementPlanRecord}               60 seconds
    Click Element                                   ${SIEngagementPlanRecord}
    #Engagement Plan Process Flow
    #Log to Console      Engagement Plan Process Flow
    Sleep       5
    #Log to Console      Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                           20 seconds
    Wait Until Element Is Visible                   ${SIEngagementPlanLinkBtn}                 60 seconds
    Wait Until Element Is Visible                   ${SIEngagementPlanRecordNo}                60 seconds
    Click Element                                   ${SIEngagementPlanProcessFlow}
    Page Should Contain Element                     ${SIEngagementPlanPFPlanning}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Engagement Plan Process Flow - Planning.png

#*********************************************** FR8 01: Add/View Engagement Plan_AS  *******************************************
View Engagement Plan_AS
    #Full Name Search
    #Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SIFullNameSearch}                 30 seconds
    Input Text                                      ${SIFullNameSearch}                 David Abel
    #Search Button
    #Log to Console      Search Button
    Click Element                                   ${SISearchButton}
    Wait Until Element Is Visible                   ${SIRecords}                        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Records Visible.png
    #Open David Abel Record
    #Log to Console      Open David Abel Record
    Wait Until Element Is Visible                   ${SIRecordDavidAbel}                30 seconds
    Click Element                                   ${SIRecordDavidAbel}
    Wait Until Element Is Visible                   ${SISavedRecordNo}                  30 seconds
    Wait Until Element Is Visible                   ${SIProcessFlowBtn}                 30 seconds
    Click Element                                   ${SIProcessFlowBtn}
    Page Should Contain Element                     ${SIPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual David Abel Record Opened.png
    #Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  5
    Click Element                                   ${SITabRightArrow}
    END
    #Engagements Tab
    #Log to Console      Engagements Tab
    Click Element                                   ${SIEngagementsTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Engagements Tab.png
    #Engagement Plan Tab
    #Log to Console      Previous Engagement Plan Tab
    Wait Until Element Is Visible                   ${SIEngagementPlanTab}              30 seconds
    Click Element                                   ${SIEngagementPlanTab}
    #Add an Engagement Plan
    #Log to Console      Add an Engagement Plan
    Click Element                                   ${SIEngagementPlanAddBtn}
    Sleep       10
    #Get Window Handles
    #Log to Console      Get Window Handles
    @{list1}        Get Window Handles
    FOR   ${win}  IN  @{list1}
    #Log to Console      ${win}
    Select Window       ${win}
    ${URL}=     Get Location
    #Log to Console      ${URL}
    END
    Sleep       5
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Engagement Plan New Tab Opened.png
    #Log to Console      Switch Window
    #Select Frame
    #Log to Console      Select Frame
    Select Frame                                    ${iFrame}
    Sleep       5
    #Engagement Plan Process Flow
    #Log to Console      Engagement Plan Process Flow Button
    Wait Until Element Is Visible                   ${SIEngagementPlanPFBtn}                   60 seconds
    Click Element                                   ${SIEngagementPlanPFBtn}
    #Add Phase
    #Log to Console      Engagement Plan in Add Phase
    Wait Until Page Contains Element                ${SIEngagementPlanPFAdd}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Engagement Plan Add Phase.png
    #Business unit
    #Log to Console      Business unit
    Click Element                                   ${SIEngagementPlanBUDD}
    Wait Until Element Is Visible                   ${SIEngagementPlanBusUnitExpand1}
    Click Element                                   ${SIEngagementPlanBusUnitExpand1}
    Wait Until Element Is Visible                   ${SIEngagementPlanBusUnitExpand2}                 10 seconds
    Click Element                                   ${SIEngagementPlanBusUnitExpand2}
    Wait Until Element Is Visible                   ${SIEngagementPlanBusUnitVictorySite}             10 seconds
    Click Element                                   ${SIEngagementPlanBusUnitVictorySite}
    #Engagement plan title
    #Log to Console      Engagement plan title
    Input Text                                      ${SIEngagementPlanTitle}                          FR8_01_View Engagements Plan_AlternateScenario
    #Project link
    #Log to Console      Project link
    Click Element                                   ${SIEngagementPlanProjectLink}
    Click Element                                   ${SIEngagementPlanProjectDD}
    Wait Until Element Is Visible                   ${SIEngagementPlanProjectSelect}                  30 seconds
    Click Element                                   ${SIEngagementPlanProjectSelect}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Engament Plan_Business Unit Selected_Title_Project.png
    #Engagement Plan Start Date
    #Log to Console      Engagement Plan Start Date
    ${CurrentDate}      Get Current Date            result_format=%d/%m/%Y
    Set Global Variable                 ${CurrentDate}
    Click Element                                   ${SIEngagementPlanStartDate}
    Input Text                                      ${SIEngagementPlanStartDate}                 ${CurrentDate}
    #Engagement Plan End Date
    #Log to Console      Engagement Plan End Date
    ${EndDate}          Get Current Date            result_format=%d/%m/%Y          increment=+3 day
    Set Global Variable                 ${CurrentDate}
    Click Element                                   ${SIEngagementPlanEndDate}
    Input Text                                      ${SIEngagementPlanEndDate}                 ${EndDate}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Engament Plan_Start and End Dates.png
    #Frequency
    #Log to Console      Frequency
    Click Element                                   ${SIEngagementPlanFrequencyDD}
    Wait Until Element Is Visible                   ${SIEngagementPlanFrequencyWeekly}                  60 seconds
    Click Element                                   ${SIEngagementPlanFrequencyWeekly}
    #Purpose of engagement
    #Log to Console      Purpose of engagement
    Click Element                                   ${SIEngagementPlanPurposeDD}
    Wait Until Element Is Visible                   ${SIEngagementPlanPurposeCompliance}                  60 seconds
    Click Element                                   ${SIEngagementPlanPurposeCompliance}
    #Method of engagement
    #Log to Console      Method of engagement
    Click Element                                   ${SIEngagementPlanMethodDD}
    Wait Until Element Is Visible                   ${SIEngagementPlanMethodInPersonExpand}                  60 seconds
    Click Element                                   ${SIEngagementPlanMethodInPersonExpand}
    Wait Until Element Is Visible                   ${SIEngagementPlanMethodProjectUpdate}                  60 seconds
    Click Element                                   ${SIEngagementPlanMethodProjectUpdate}
    #Responsible person
    #Log to Console      Responsible person
    Click Element                                   ${SIEngagementPlanResponsiblePersonDD}
    Wait Until Element Is Visible                   ${SIEngagementPlanResponsiblePerson2Manager}                  60 seconds
    Click Element                                   ${SIEngagementPlanResponsiblePerson2Manager}
    #Comments
    #Log to Console      Comments
    Input Text                                      ${SIEngagementPlanComments}                              FR8_01_View Engagements Plan_AlternateScenario
    #Save and Continue
    #Log to Console      Save and Continue
    Click Element                                   ${SIEngagementPlanSaveContinueBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                                      60 seconds
    Page Should Contain Element                     ${SIEngagementPlanRecordNo}
    Wait Until Page Contains Element                ${SIEngagementPlanPFPlanning}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Engagement Plan Record Saved.png
    #Participants Tab
    #Log to Console      Participants Tab
    Click Element                                   ${SIEngagementPlanParticipantsTab}
    #Stakeholders Checklist
    #Log to Console      Stakeholders Checklist
    Click Element                                   ${SIEngagementPlanStakeholderDavidAbel}
    #Save Button
    #Log to Console      Save Button
    Click Element                                   ${SIEngagementPlanSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                                      60 seconds
    Page Should Contain Element                     ${SIEngagementPlanRecordNo}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Engagement Plan Participant Record Saved.png
    Sleep       2
    #Get Window Handles
    #Log to Console      Get Window Handles
    @{list2}        Get Window Handles
    FOR   ${win2}  IN  @{list2}
    #Log to Console      ${win2}
    #Log to Console      Switch Window
    Switch Window       IsoMetrix
    ${URL}=     Get Location
    #Log to Console      ${URL}
    END
    Sleep       3
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Tab Visible.png
    #Engagament Plan Record in Engagement Plan VG
    #Log to Console      Engagament Plan Record in Engagement Plan VG
    #Select Frame
    #Log to Console      Select Frame
    Select Frame                                    ${iFrame}
    Sleep       2
    Scroll Element Into View                        ${SIEngagementPlanInLineEditText}
    Sleep       1
    #Log to Console      Refresh Button
    Click Element                                   ${SIEngagementPlanRefresh}
    Sleep       3
    #Log to Console      Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                        30 seconds
    #New Engagement Plan Record in Viewing Grid
    #Log to Console      New Engagement Plan Record in Viewing Grid
    Wait Until Element Is Visible                   ${SIEngagementPlanRecordNew}            20 seconds
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual New Engagement Plan Record in Viewing Grid.png

#*********************************************** FR9 01: View Grievances_MS *****************************************************
View Grievances_MS
    #Full Name Search
    #Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SIFullNameSearch}                 30 seconds
    Input Text                                      ${SIFullNameSearch}                 David Abel
    #Search Button
    #Log to Console      Search Button
    Click Element                                   ${SISearchButton}
    Wait Until Element Is Visible                   ${SIRecords}                        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Records Visible.png
    #Open David Abel Record
    #Log to Console      Open David Abel Record
    Wait Until Element Is Visible                   ${SIRecordDavidAbel}                30 seconds
    Click Element                                   ${SIRecordDavidAbel}
    Wait Until Element Is Visible                   ${SISavedRecordNo}                  30 seconds
    Wait Until Element Is Visible                   ${SIProcessFlowBtn}                 30 seconds
    Click Element                                   ${SIProcessFlowBtn}
    Page Should Contain Element                     ${SIPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual David Abel Record Opened.png
    #Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  6
    Click Element                                   ${SITabRightArrow}
    END
    #Grievances Tab
    #Log to Console      Grievances Tab
    Click Element                                   ${SIGrievancesTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Grievances Tab.png
    #Social Status Open Grievance
    #Log to Console      Stakeholder has an open grievance logged
    Page Should Contain Element                     ${SIGrievancesOpenImage}
    #Open Grievances Record
    Scroll Element Into View                        ${SIGrievancesInLineEditText}
    Sleep       8
#    Click Element                                   ${SIGrievancesVGRefresh}
    #Log to Console      Refresh Button
    Sleep       8
    #Log to Console      Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                        30 seconds
    #Log to Console      Open Grievances Record
    Wait Until Element Is Enabled                   ${SIGrievancesItems}                    60 seconds
    Wait Until Element Is Visible                   ${SIGrievancesRecord}                   60 seconds
    Click Element                                   ${SIGrievancesRecord}
    #Grievances Process Flow
    #Log to Console      Grievances Process Flow
    Sleep       5
    #Log to Console      Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                           20 seconds
    Wait Until Element Is Visible                   ${SIGrievancesLinkBtn}                     60 seconds
    Wait Until Element Is Visible                   ${SIGrievancesRecordNo}                    60 seconds
    Click Element                                   ${SIGrievancesProcessFlow}
    Page Should Contain Element                     ${SIGrievancesPFPlanning}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Grievances Process Flow - Planning.png

#*********************************************** FR10 01: View Initiatives_MS *****************************************************
View Initiatives_MS
    #Full Name Search
    #Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SIFullNameSearch}                 30 seconds
    Input Text                                      ${SIFullNameSearch}                 David Abel
    #Search Button
    #Log to Console      Search Button
    Click Element                                   ${SISearchButton}
    Wait Until Element Is Visible                   ${SIRecords}                        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Records Visible.png
    #Open David Abel Record
    #Log to Console      Open David Abel Record
    Wait Until Element Is Visible                   ${SIRecordDavidAbel}                30 seconds
    Click Element                                   ${SIRecordDavidAbel}
    Wait Until Element Is Visible                   ${SISavedRecordNo}                  30 seconds
    Wait Until Element Is Visible                   ${SIProcessFlowBtn}                 30 seconds
    Click Element                                   ${SIProcessFlowBtn}
    Page Should Contain Element                     ${SIPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual David Abel Record Opened.png
    #Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  7
    Click Element                                   ${SITabRightArrow}
    END
    #Initiatives Tab
    #Log to Console      Initiatives Tab
    Click Element                                   ${SIInitiativesTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Initiatives Tab.png
    #Open Initiatives Record
    Scroll Element Into View                        ${SIInitiativesInLineEditText}
    Sleep       8
#    Click Element                                   ${SIInitiativesVGRefresh}
#    #Log to Console      Refresh Button
#    Sleep       8
    #Log to Console      VG Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                        60 seconds
    #Log to Console      Open Initiatives Record
    Wait Until Element Is Enabled                   ${SIInitiativesItems}                   60 seconds
    Wait Until Element Is Visible                   ${SIInitiativesRecord}                  60 seconds
    Click Element                                   ${SIInitiativesRecord}
    #Initiatives Process Flow
    #Log to Console      Initiatives Process Flow
    Sleep       5
    #Log to Console      Record Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                           30 seconds
    Wait Until Element Is Visible                   ${SIInitiativesLinkBtn}                    60 seconds
    Wait Until Element Is Visible                   ${SIInitiativesRecordNo}                   60 seconds
    Click Element                                   ${SIInitiativesProcessFlow}
    Page Should Contain Element                     ${SIInitiativesPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Initiatives Process Flow - Edit Phase.png

#*********************************************** FR10 01: Add/View Initiatives_AS *****************************************************
Add Initiatives_AS
    #Full Name Search
    #Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SIFullNameSearch}                 30 seconds
    Input Text                                      ${SIFullNameSearch}                 David Abel
    #Search Button
    #Log to Console      Search Button
    Click Element                                   ${SISearchButton}
    Wait Until Element Is Visible                   ${SIRecords}                        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Records Visible.png
    #Open David Abel Record
    #Log to Console      Open David Abel Record
    Wait Until Element Is Visible                   ${SIRecordDavidAbel}                30 seconds
    Click Element                                   ${SIRecordDavidAbel}
    Wait Until Element Is Visible                   ${SISavedRecordNo}                  30 seconds
    Wait Until Element Is Visible                   ${SIProcessFlowBtn}                 30 seconds
    Click Element                                   ${SIProcessFlowBtn}
    Page Should Contain Element                     ${SIPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual David Abel Record Opened.png
    #Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  7
    Click Element                                   ${SITabRightArrow}
    END
    #Initiatives Tab
    #Log to Console      Initiatives Tab
    Click Element                                   ${SIInitiativesTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Initiatives Tab.png
    #Add an Initiative button
    #Log to Console      Add an Initiative button
    Click Element                                   ${SIInitiativesAddBtn}
    Sleep       10
    #Get Window Handles
    #Log to Console      Get Window Handles
    @{list1}        Get Window Handles
    FOR   ${win}  IN  @{list1}
    #Log to Console      ${win}
    Select Window       ${win}
    ${URL}=     Get Location
    #Log to Console      ${URL}
    END
    Sleep       5
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Initiative New Tab Opened.png
    #Log to Console      Switch Window
    #Select Frame
    #Log to Console      Select Frame
    Select Frame                                    ${iFrame}
    Sleep       5
    #Initiative Process Flow
    #Log to Console      Initiative Process Flow Button
    Wait Until Element Is Visible                   ${SIInitiativesProcessFlow}                   60 seconds
    Click Element                                   ${SIInitiativesProcessFlow}
    #Add Phase
    #Log to Console      Initiative in Add Phase
    Wait Until Page Contains Element                ${SIInitiativesPFAdd}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Initiative Add Phase.png
    #Business unit
    #Log to Console      Business unit
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
    #Log to Console      Project title
    Input Text                                      ${SIInitiativesProjectTitle}                       FR10_01_Add Initiative_AlternateScenario
    #Type of Initiative
    #Log to Console      Type of Initiative
    Click Element                                   ${SIInitiativesTypeInitiativeDD}
    Wait Until Element Is Visible                   ${SIInitiativesTypeInitiativeExpand1}              10 seconds
    Click Element                                   ${SIInitiativesTypeInitiativeExpand1}
    Wait Until Element Is Visible                   ${SIInitiativesTypeInitiativeSelect}               10 seconds
    Click Element                                   ${SIInitiativesTypeInitiativeSelect}
    #Commencement Date
    #Log to Console      Commencement Date
    ${CurrentDate}      Get Current Date            result_format=%d/%m/%Y
    Set Global Variable                 ${CurrentDate}
    Click Element                                   ${SIInitiativesCommencementDate}
    Input Text                                      ${SIInitiativesCommencementDate}                 ${CurrentDate}
    #Delivery Date
    #Log to Console      Delivery Date
    ${DeliveryDate}          Get Current Date            result_format=%d/%m/%Y          increment=+3 day
    Set Global Variable                 ${DeliveryDate}
    Click Element                                   ${SIInitiativesDeliveryDate}
    Input Text                                      ${SIInitiativesDeliveryDate}                 ${DeliveryDate}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Initiative_Commencement and Delivery Dates.png
    #Approved budget
    #Log to Console      Approved budget
    Input Text                                      ${SIInitiativesApprovedBudget}          1500
    #Location
    #Log to Console      Location
    Click Element                                   ${SIInitiativesLocationDD}
    Wait Until Element Is Visible                   ${SIInitiativesLocationSA}                              10 seconds
    Click Element                                   ${SIInitiativesLocationSA}
    #Responsible person
    #Log to Console      Responsible person
    Click Element                                   ${SIInitiativesResponsiblePersonDD}
    Wait Until Element Is Visible                   ${SIInitiativesResponsiblePerson2Manager}               60 seconds
    Click Element                                   ${SIInitiativesResponsiblePerson2Manager}
    #Sector
    #Log to Console      Sector
    Click Element                                   ${SIInitiativesSectorDD}
    Wait Until Element Is Visible                   ${SIInitiativesSectorEducation}                         60 seconds
    Click Element                                   ${SIInitiativesSectorEducation}
    #Description
    #Log to Console      Description
    Input Text                                      ${SIInitiativesDescription}                              FR10_01_Add Initiative_AlternateScenario
    #Save Button
    #Log to Console      Save Button
    Click Element                                   ${SIInitiativesSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                                          60 seconds
    Page Should Contain Element                     ${SIInitiativesRecordNo}
    Wait Until Page Contains Element                ${SIInitiativesPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Initiative Record Saved.png
    #Beneficiaries Tab
    #Log to Console      Participants Tab
    Click Element                                   ${SIInitiativesBeneficiariesTab}
    #Stakeholder Individual Beneficiaries Panel
    #Log to Console      Stakeholder Individual Beneficiaries Panel
    Click Element                                   ${SIInitiativesSIBeneficiariesPanel}
    Sleep       2
    #Stakeholder Individual Beneficiaries Add
    #Log to Console      Stakeholder Individual Beneficiaries Add
    Click Element                                   ${SIInitiativesSIBeneficiariesAdd}
    Sleep       4
    Click Element                                   ${SIInitiativesSIBeneficiariesDD}
    Wait Until Element Is Visible                   ${SIInitiativesSIBeneficiariesDavidAbel}               60 seconds
    Click Element                                   ${SIInitiativesSIBeneficiariesDavidAbel}
    #Stakeholder Individual Beneficiaries Save Button
    #Log to Console      Stakeholder Individual Beneficiaries Save Button
    Click Element                                   ${SIInitiativesSIBeneficiariesSave}
    Wait Until Element Is Visible                   ${RecordSaved}                                      60 seconds
    Page Should Contain Element                     ${SIInitiativesRecordNo}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Initiative Beneficiaries Record Saved.png
    Sleep       1
    #Get Window Handles
    #Log to Console      Get Window Handles
    @{list2}        Get Window Handles
    FOR   ${win2}  IN  @{list2}
    #Log to Console      ${win2}
    #Log to Console      Switch Window
    Switch Window       IsoMetrix
    ${URL}=     Get Location
    #Log to Console      ${URL}
    END
    Sleep       3
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Tab Visible.png
    #Initiative Record in Previous Initiatives VG
    #Log to Console      Initiative Record in Previous Initiatives VG
    #Select Frame
    #Log to Console      Select Frame
    Select Frame                                    ${iFrame}
    Sleep       2
    Scroll Element Into View                        ${SIInitiativesInLineEditText}
    Sleep       1
    #Log to Console      Refresh Button
    Click Element                                   ${SIInitiativesVGRefresh}
    Sleep       3
    #Log to Console      Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                        30 seconds
    #New Engagement Plan Record in Viewing Grid
    #Log to Console      New Initiative Record in Viewing Grid
    Wait Until Element Is Visible                   ${SIInitiativesRecordNew}               20 seconds
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual New Initiative Record in Viewing Grid.png

#*********************************************** FR11 01: View Commitments_MS *****************************************************
View Commitments_MS
    #Full Name Search
    #Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SIFullNameSearch}                 30 seconds
    Input Text                                      ${SIFullNameSearch}                 David Abel
    #Search Button
    #Log to Console      Search Button
    Click Element                                   ${SISearchButton}
    Wait Until Element Is Visible                   ${SIRecords}                        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Records Visible.png
    #Open David Abel Record
    #Log to Console      Open David Abel Record
    Wait Until Element Is Visible                   ${SIRecordDavidAbel}                30 seconds
    Click Element                                   ${SIRecordDavidAbel}
    Wait Until Element Is Visible                   ${SISavedRecordNo}                  30 seconds
    Wait Until Element Is Visible                   ${SIProcessFlowBtn}                 30 seconds
    Click Element                                   ${SIProcessFlowBtn}
    Page Should Contain Element                     ${SIPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual David Abel Record Opened.png
    #Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  7
    Click Element                                   ${SITabRightArrow}
    END
    #Commitments Tab
    #Log to Console      Commitments Tab
    Click Element                                   ${SICommitmentsTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Commitments Tab.png
    #Open Commitments Record
    Scroll Element Into View                        ${SICommitmentsInLineEditText}
    Sleep       8
    #Log to Console      VG Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                        30 seconds
    #Log to Console      Open Commitments Record
    Wait Until Element Is Enabled                   ${SICommitmentsItems}                   60 seconds
    Wait Until Element Is Visible                   ${SICommitmentsRecord}                  60 seconds
    Click Element                                   ${SICommitmentsRecord}
    #Commitments Process Flow
    Sleep       5
    #Log to Console      Record Loading Mask
    #Log to Console      Commitments Process Flow
    Wait Until Element Is Not Visible               ${SILoadingMask}                           30 seconds
    Wait Until Element Is Visible                   ${SICommitmentsLinkBtn}                    60 seconds
    Wait Until Element Is Visible                   ${SICommitmentsRecordNo}                   60 seconds
    Click Element                                   ${SICommitmentsProcessFlow}
    Page Should Contain Element                     ${SICommitmentsPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Commitments Process Flow - Edit Phase.png

#*********************************************** FR11 01: Add View Commitments_AS *****************************************************
Add Commitments_AS
    #Full Name Search
    #Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SIFullNameSearch}                 30 seconds
    Input Text                                      ${SIFullNameSearch}                 David Abel
    #Search Button
    #Log to Console      Search Button
    Click Element                                   ${SISearchButton}
    Wait Until Element Is Visible                   ${SIRecords}                        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Records Visible.png
    #Open David Abel Record
    #Log to Console      Open David Abel Record
    Wait Until Element Is Visible                   ${SIRecordDavidAbel}                30 seconds
    Click Element                                   ${SIRecordDavidAbel}
    Wait Until Element Is Visible                   ${SISavedRecordNo}                  30 seconds
    Wait Until Element Is Visible                   ${SIProcessFlowBtn}                 30 seconds
    Click Element                                   ${SIProcessFlowBtn}
    Page Should Contain Element                     ${SIPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual David Abel Record Opened.png
    #Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  7
    Click Element                                   ${SITabRightArrow}
    END
    #Commitments Tab
    #Log to Console      Commitments Tab
    Click Element                                   ${SICommitmentsTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Commitments Tab.png
    #Add a Commitment button
    #Log to Console       Add a Commitment button
    Click Element                                   ${SICommitmentsAddBtn}
    Sleep       10
    #Get Window Handles
    #Log to Console      Get Window Handles
    @{list1}        Get Window Handles
    FOR   ${win}  IN  @{list1}
    #Log to Console      ${win}
    Select Window       ${win}
    ${URL}=     Get Location
    #Log to Console      ${URL}
    END
    Sleep       5
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Commitment New Tab Opened.png
    #Log to Console      Switch Window
    #Select Frame
    #Log to Console      Select Frame
    Select Frame                                    ${iFrame}
    Sleep       15
    #Commitment Process Flow
    #Log to Console      Commitment Process Flow Button
    Wait Until Element Is Visible                   ${SICommitmentsProcessFlow}                   60 seconds
    Click Element                                   ${SICommitmentsProcessFlow}
    #Add Phase
    #Log to Console      Commitment in Add Phase
    Wait Until Page Contains Element                ${SICommitmentsPFAdd}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Commitment Add Phase.png
    #Business unit
    #Log to Console      Business unit
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
    #Log to Console      Project title
    Input Text                                      ${SIInitiativesProjectTitle}                       FR11_01_Add Commitment_AlternateScenario
    #Commencement Date
    #Log to Console      Commencement Date
    ${CurrentDate}      Get Current Date            result_format=%d/%m/%Y
    Set Global Variable                 ${CurrentDate}
    Click Element                                   ${SIInitiativesCommencementDate}
    Input Text                                      ${SIInitiativesCommencementDate}                 ${CurrentDate}
    #Delivery Date
    #Log to Console      Delivery Date
    ${DeliveryDate}          Get Current Date            result_format=%d/%m/%Y          increment=+3 day
    Set Global Variable                 ${DeliveryDate}
    Click Element                                   ${SIInitiativesDeliveryDate}
    Input Text                                      ${SIInitiativesDeliveryDate}                     ${DeliveryDate}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Commitment_Commencement and Delivery Dates.png
    #Approved budget
    #Log to Console      Approved budget
    Input Text                                      ${SIInitiativesApprovedBudget}          2500
    #Location
    #Log to Console      Location
    Click Element                                   ${SIInitiativesLocationDD}
    Wait Until Element Is Visible                   ${SIInitiativesLocationSA}                              10 seconds
    Click Element                                   ${SIInitiativesLocationSA}
    #Responsible person
    #Log to Console      Responsible person
    Click Element                                   ${SIInitiativesResponsiblePersonDD}
    Wait Until Element Is Visible                   ${SIInitiativesResponsiblePerson2Manager}               60 seconds
    Click Element                                   ${SIInitiativesResponsiblePerson2Manager}
    #Sector
    #Log to Console      Sector
    Click Element                                   ${SIInitiativesSectorDD}
    Wait Until Element Is Visible                   ${SIInitiativesSectorEducation}                         60 seconds
    Click Element                                   ${SIInitiativesSectorEducation}
    #Description
    #Log to Console      Description
    Input Text                                      ${SIInitiativesDescription}                              FR11_01_Add Commitment_AlternateScenario
    #Link to Meeting
    #Log to Console      Link to Meeting
    Click Element                                   ${SICommitmentsLinkMeetingDD}
    Wait Until Element Is Visible                   ${SICommitmentsLinkMeetingSelect}                        60 seconds
    Click Element                                   ${SICommitmentsLinkMeetingSelect}
    #Save Button
    #Log to Console      Save Button
    Click Element                                   ${SICommitmentsSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                                          60 seconds
    Page Should Contain Element                     ${SICommitmentsRecordNo}
    Wait Until Page Contains Element                ${SICommitmentsPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Commitment Record Saved.png
    #Beneficiaries Tab
    #Log to Console      Beneficiaries Tab
    Click Element                                   ${SIInitiativesBeneficiariesTab}
    #Stakeholder Individual Beneficiaries Panel
    #Log to Console      Stakeholder Individual Beneficiaries Panel
    Click Element                                   ${SIInitiativesSIBeneficiariesPanel}
    Sleep       2
    #Stakeholder Individual Beneficiaries Add
    #Log to Console      Stakeholder Individual Beneficiaries Add
    Click Element                                   ${SIInitiativesSIBeneficiariesAdd}
    Sleep       4
    Click Element                                   ${SIInitiativesSIBeneficiariesDD}
    Wait Until Element Is Visible                   ${SIInitiativesSIBeneficiariesDavidAbel}               60 seconds
    Click Element                                   ${SIInitiativesSIBeneficiariesDavidAbel}
    #Stakeholder Individual Beneficiaries Save Button
    #Log to Console      Stakeholder Individual Beneficiaries Save Button
    Click Element                                   ${SIInitiativesSIBeneficiariesSave}
    Wait Until Element Is Visible                   ${RecordSaved}                                      60 seconds
    Page Should Contain Element                     ${SICommitmentsRecordNo}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Commitment Beneficiaries Record Saved.png
    Sleep       1
    #Get Window Handles
    #Log to Console      Get Window Handles
    @{list2}        Get Window Handles
    FOR   ${win2}  IN  @{list2}
    #Log to Console      ${win2}
    #Log to Console      Switch Window
    Switch Window       IsoMetrix
    ${URL}=     Get Location
    #Log to Console      ${URL}
    END
    Sleep       3
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Tab Visible.png
    #Commitment Record in Previous Initiatives VG
    #Log to Console      Commitment Record in Previous Initiatives VG
    #Select Frame
    #Log to Console      Select Frame
    Select Frame                                    ${iFrame}
    Sleep       2
    Scroll Element Into View                        ${SICommitmentsInLineEditText}
    Sleep       1
    #Log to Console      Refresh Button
    Click Element                                   ${SICommitmentsVGRefresh}
    Sleep       3
    #Log to Console      Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                        30 seconds
    #New Commitment Record in Viewing Grid
    #Log to Console      New Commitment Record in Viewing Grid
    Wait Until Element Is Visible                   ${SICommitmentsRecordNew}               20 seconds
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual New Commitment Record in Viewing Grid.png

#*********************************************** FR12 01: View Associated Resettlement_MS *****************************************************
View Associated Resettlement_MS
    #Full Name Search
    #Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SIFullNameSearch}                 30 seconds
    Input Text                                      ${SIFullNameSearch}                 David Abel
    #Search Button
    #Log to Console      Search Button
    Click Element                                   ${SISearchButton}
    Wait Until Element Is Visible                   ${SIRecords}                        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Records Visible.png
    #Open David Abel Record
    #Log to Console      Open David Abel Record
    Wait Until Element Is Visible                   ${SIRecordDavidAbel}                30 seconds
    Click Element                                   ${SIRecordDavidAbel}
    Wait Until Element Is Visible                   ${SISavedRecordNo}                  30 seconds
    Wait Until Element Is Visible                   ${SIProcessFlowBtn}                 30 seconds
    Click Element                                   ${SIProcessFlowBtn}
    Page Should Contain Element                     ${SIPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual David Abel Record Opened.png
    #Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  8
    Click Element                                   ${SITabRightArrow}
    END
    #Associated Resettlement Projects Tab
    #Log to Console      Associated Resettlement Projects Tab
    Click Element                                   ${SIResettlementTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Associated Resettlement Projects Tab.png
    #Open Associated Resettlement Projects Record
#    Scroll Element Into View                        ${SIResettlementInLineEditText}
    Sleep       8
    #Log to Console      VG Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                        60 seconds
    #Log to Console      Open Resettlement Record
    Wait Until Element Is Enabled                   ${SIResettlementItems}                  60 seconds
    Wait Until Element Is Visible                   ${SIResettlementRecord}                 60 seconds
    Click Element                                   ${SIResettlementRecord}
    #Resettlement Process Flow
    Sleep       5
    #Log to Console      Record Loading Mask
    #Log to Console      Resettlement Process Flow
    Wait Until Element Is Not Visible               ${SILoadingMask}                           30 seconds
    Wait Until Element Is Visible                   ${SIResettlementLinkBtn}                   60 seconds
    Wait Until Element Is Visible                   ${SIResettlementRecordNo}                  60 seconds
    Click Element                                   ${SIResettlementProcessFlow}
    Page Should Contain Element                     ${SIResettlementPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Resettlement Process Flow - Edit Phase.png

#*********************************************** FR13 01: View Associated Land Contracts_MS *****************************************************
View Associated Land Contracts_MS
    #Full Name Search
    #Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SIFullNameSearch}                 30 seconds
    Input Text                                      ${SIFullNameSearch}                 David Abel
    #Search Button
    #Log to Console      Search Button
    Click Element                                   ${SISearchButton}
    Wait Until Element Is Visible                   ${SIRecords}                        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Records Visible.png
    #Open David Abel Record
    #Log to Console      Open David Abel Record
    Wait Until Element Is Visible                   ${SIRecordDavidAbel}                30 seconds
    Click Element                                   ${SIRecordDavidAbel}
    Wait Until Element Is Visible                   ${SISavedRecordNo}                  30 seconds
    Wait Until Element Is Visible                   ${SIProcessFlowBtn}                 30 seconds
    Click Element                                   ${SIProcessFlowBtn}
    Page Should Contain Element                     ${SIPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual David Abel Record Opened.png
    #Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  8
    Click Element                                   ${SITabRightArrow}
    END
    #Land Access Tab
    #Log to Console      Land Access Tab
    Click Element                                   ${SILandAccessTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Land Access Tab.png
    #Open Associated Land Contracts Record
    Scroll Element Into View                        ${SILandAccessInLineEditText}
    Sleep       8
    #Log to Console      VG Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                        60 seconds
    #Log to Console      Open Associated Land Contracts Record
    Wait Until Element Is Enabled                   ${SILandAccessItems}                    60 seconds
    Wait Until Element Is Visible                   ${SILandAccessRecord}                   60 seconds
    Click Element                                   ${SILandAccessRecord}
    #Land Access Process Flow
    Sleep       5
    #Log to Console      Record Loading Mask
    #Log to Console      Land Access Process Flow
    Wait Until Element Is Not Visible               ${SILoadingMask}                           30 seconds
    Wait Until Element Is Visible                   ${SILandAccessLinkBtn}                     60 seconds
    Wait Until Element Is Visible                   ${SILandAccessRecordNo}                    60 seconds
    Click Element                                   ${SILandAccessProcessFlow}
    Page Should Contain Element                     ${SILandAccessPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Land Access Process Flow - Edit Phase.png

#*********************************************** FR14 01: View Training Management_MS **************************************************************
View Training Management_MS
    #Full Name Search
    #Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SIFullNameSearch}                 30 seconds
    Input Text                                      ${SIFullNameSearch}                 David Abel
    #Search Button
    #Log to Console      Search Button
    Click Element                                   ${SISearchButton}
    Wait Until Element Is Visible                   ${SIRecords}                        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Records Visible.png
    #Open David Abel Record
    #Log to Console      Open David Abel Record
    Wait Until Element Is Visible                   ${SIRecordDavidAbel}                30 seconds
    Click Element                                   ${SIRecordDavidAbel}
    Wait Until Element Is Visible                   ${SISavedRecordNo}                  30 seconds
    Wait Until Element Is Visible                   ${SIProcessFlowBtn}                 30 seconds
    Click Element                                   ${SIProcessFlowBtn}
    Page Should Contain Element                     ${SIPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual David Abel Record Opened.png
    #Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  9
    Click Element                                   ${SITabRightArrow}
    END
    #Training Management Tab
    #Log to Console      Training Management Tab
    Click Element                                   ${SITrainingManagementTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Training Management Tab.png
    #Open Training Management Record
    Scroll Element Into View                        ${SITrainingManItems}
    Sleep       8
    #Log to Console      VG Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                        60 seconds
    #Log to Console      Open Training Management Record
    Wait Until Element Is Enabled                   ${SITrainingManItems}                   60 seconds
    Wait Until Element Is Visible                   ${SITrainingManRecord}                  60 seconds
    Click Element                                   ${SITrainingManRecord}
    #Training Management Process Flow
    Sleep       8
    #Log to Console      Record Loading Mask
    #Log to Console      Training Management Process Flow
    Wait Until Element Is Not Visible               ${SILoadingMask}                           30 seconds
    Wait Until Element Is Visible                   ${SITrainingManLinkBtn}                    60 seconds
    Wait Until Element Is Visible                   ${SITrainingManRecordNo}                   60 seconds
    Sleep       10
    Click Element                                   ${SITrainingManProcessFlow}
    Page Should Contain Element                     ${SITrainingManPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Training Management Process Flow - Edit Phase.png

#*********************************************** FR15 01: View Hygiene Monitoring_MS **************************************************************
View Hygiene Monitoring_MS
    #Full Name Search
    #Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SIFullNameSearch}                 30 seconds
    Input Text                                      ${SIFullNameSearch}                 David Abel
    #Search Button
    #Log to Console      Search Button
    Click Element                                   ${SISearchButton}
    Wait Until Element Is Visible                   ${SIRecords}                        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Records Visible.png
    #Open David Abel Record
    #Log to Console      Open David Abel Record
    Wait Until Element Is Visible                   ${SIRecordDavidAbel}                30 seconds
    Click Element                                   ${SIRecordDavidAbel}
    Wait Until Element Is Visible                   ${SISavedRecordNo}                  30 seconds
    Wait Until Element Is Visible                   ${SIProcessFlowBtn}                 30 seconds
    Click Element                                   ${SIProcessFlowBtn}
    Page Should Contain Element                     ${SIPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual David Abel Record Opened.png
    #Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  9
    Click Element                                   ${SITabRightArrow}
    END
    #Occupational Hygiene Tab
    #Log to Console      Occupational Hygiene Tab
    Click Element                                   ${SIOccupationalHygieneTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Occupational Hygiene Tab.png
    #Open Training Management Record
    Scroll Element Into View                        ${SIHygieneMonItems}
    Sleep       8
    #Log to Console      VG Loading Mask
    Wait Until Element Is Not Visible               ${SILoadingMask}                        60 seconds
    #Log to Console      Open Training Management Record
    Wait Until Element Is Enabled                   ${SIHygieneMonItems}                    60 seconds
    Wait Until Element Is Visible                   ${SIHygieneMonRecord}                   60 seconds
    Click Element                                   ${SIHygieneMonRecord}
    #Hygiene Monitoring Process Flow
    Sleep       8
    #Log to Console      Record Loading Mask
    #Log to Console      Hygiene Monitoring Process Flow
    Wait Until Element Is Not Visible               ${SILoadingMask}                           30 seconds
    Wait Until Element Is Visible                   ${SIHygieneMonLinkBtn}                     60 seconds
    Wait Until Element Is Visible                   ${SIHygieneMonRecordNo}                    60 seconds
    Sleep       2
    Click Element                                   ${SIHygieneMonProcessFlow}
    Page Should Contain Element                     ${SIHygieneMonPFInProgressPreSample}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Hygiene Monitoring Process Flow - InProgressPreSample.png

#*********************************************** FR16 01: Capture Work History_MS **************************************************************
Capture Work History_MS
    #Full Name Search
    #Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SIFullNameSearch}                 30 seconds
    Input Text                                      ${SIFullNameSearch}                 David Abel
    #Search Button
    #Log to Console      Search Button
    Click Element                                   ${SISearchButton}
    Wait Until Element Is Visible                   ${SIRecords}                        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Records Visible.png
    #Open David Abel Record
    #Log to Console      Open David Abel Record
    Wait Until Element Is Visible                   ${SIRecordDavidAbel}                30 seconds
    Click Element                                   ${SIRecordDavidAbel}
    Wait Until Element Is Visible                   ${SISavedRecordNo}                  30 seconds
    Wait Until Element Is Visible                   ${SIProcessFlowBtn}                 30 seconds
    Click Element                                   ${SIProcessFlowBtn}
    Page Should Contain Element                     ${SIPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual David Abel Record Opened.png
    #Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  11
    Click Element                                   ${SITabRightArrow}
    END
    #Work History Tab
    #Log to Console      Work History Tab
    Click Element                                   ${SIWorkHistoryTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Work History Tab.png
    Sleep       2
    #Work History Record Visible
    #Log to Console      Work History Record Visible
    Wait Until Element Is Visible                   ${SIWorkHistoryExistRecord}         60 seconds
    Scroll Element into View                        ${SIWorkHistoryItems}
    Page Should Contain Element                     ${SIWorkHistoryExistRecord}
    #Open Work History Record
    #Log to Console      Open Work History Record
    Click Element                                   ${SIWorkHistoryExistRecord}
    Sleep       2
    Wait Until Element Is Visible                   ${SIWorkHistoryRecordNo}            30 seconds
    #Work Histroy Process Flow
    Wait Until Element Is Visible                   ${SIWorkHistoryPF}                  30 seconds
    Click Element                                   ${SIWorkHistoryPF}
    Wait Until Element Is Visible                   ${SIWorkHistoryPFEdit}              30 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Work History Process Flow - Edit Phase.png
    #Close Work History Record
    #Log to Console      Close Work History Record
    Click Element                                   ${SIWorkHistoryCloseBtn}
    Sleep       2
    Wait Until Element Is Visible                   ${SIWorkHistoryExistRecord}         30 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Work History Record Closed.png

#*********************************************** FR16 01: Capture Work History_AS **************************************************************
Capture Work History_AS
    #Full Name Search
    #Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SIFullNameSearch}                 30 seconds
    Input Text                                      ${SIFullNameSearch}                 David Abel
    #Search Button
    #Log to Console      Search Button
    Click Element                                   ${SISearchButton}
    Wait Until Element Is Visible                   ${SIRecords}                        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Records Visible.png
    #Open David Abel Record
    #Log to Console      Open David Abel Record
    Wait Until Element Is Visible                   ${SIRecordDavidAbel}                30 seconds
    Click Element                                   ${SIRecordDavidAbel}
    Wait Until Element Is Visible                   ${SISavedRecordNo}                  30 seconds
    Wait Until Element Is Visible                   ${SIProcessFlowBtn}                 30 seconds
    Click Element                                   ${SIProcessFlowBtn}
    Page Should Contain Element                     ${SIPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual David Abel Record Opened.png
    #Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  11
    Click Element                                   ${SITabRightArrow}
    END
    #Work History Tab
    #Log to Console      Work History Tab
    Click Element                                   ${SIWorkHistoryTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Work History Tab.png
    Sleep       2
    #Work History Record Visible
    #Log to Console      Work History Record Visible
    Scroll Element into View                        ${SIWorkHistoryItems}
    Wait Until Element Is Visible                   ${SIWorkHistoryExistRecord}         90 seconds
    Page Should Contain Element                     ${SIWorkHistoryExistRecord}
    #Work History Add Button
    #Log to Console      Work History Add Button
    Click Element                                   ${SIWorkHistoryAddBtn}
    Sleep       15
    Wait Until Element Is Not Visible               ${SIWorkHistoryOpenRecordLoading}       30 seconds
    Wait Until Element Is Visible                   ${SIWorkHistoryRecordHeader}            30 seconds
    #Work Histroy Process Flow
    Wait Until Element Is Visible                   ${SIWorkHistoryPF}                      30 seconds
    Click Element                                   ${SIWorkHistoryPF}
    Wait Until Element Is Visible                   ${SIWorkHistoryPFAdd}                   30 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Work History Process Flow - Add Phase.png
    #Job profile
    #Log to Console      Job profile
    Click Element                                   ${SIWorkHistoryJobProfileDD}
    Wait Until Element Is Visible                   ${SIWorkHistoryJobProfileMainGate}      30 seconds
    Click Element                                   ${SIWorkHistoryJobProfileMainGate}
    #SEG
    #Log to Console      SEG
    Click Element                                   ${SIWorkHistorySEGDD}
    Wait Until Element Is Visible                   ${SIWorkHistorySEGSelect}               30 seconds
    Click Element                                   ${SIWorkHistorySEGSelect}
    Click Element                                   ${SIWorkHistorySEGDD}
    #Start date
    #Log to Console      Start date
    ${CurrentDate}      Get Current Date            result_format=%d/%m/%Y
    Set Global Variable                 ${CurrentDate}
    Click Element                                   ${SIWorkHistoryStartDate}
    Input Text                                      ${SIWorkHistoryStartDate}                 ${CurrentDate}
    #Save Button
    #Log to Console      Save Button
    Click Element                                   ${SIWorkHistorySaveBtn}
    Wait Until Element Is Visible                   ${SIWorkHistorySavedRecordPop}            60 seconds
    Page Should Contain Element                     ${SIWorkHistoryRecordNo}
    Wait Until Page Contains Element                ${SIWorkHistoryPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Work History Process Flow - Edit Phase.png
    #Close Work History Record
    #Log to Console      Close Work History Record
    Click Element                                   ${SIWorkHistoryCloseBtn}
    Sleep       2
    Wait Until Element Is Visible                   ${SIWorkHistoryNewAddRecord}                 30 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Work History Record Closed.png

#*********************************************** FR17 01: Capture Actions_MS **************************************************************
Capture Actions_MS
    Sleep       4
    #Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  2
    Click Element                                   ${SITabRightArrow}
    END
    #Actions Tab
    #Log to Console      Actions Tab
    Click Element                                   ${SIActionsTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Actions Tab.png
    Sleep       2
    #Actions Add Button
    #Log to Console      Actions Add Button
    Click Element                                   ${SIActionsAddBtn}
    Sleep       5
    Wait Until Element Is Not Visible               ${SIWorkHistoryOpenRecordLoading}       30 seconds
    Wait Until Element Is Visible                   ${SIActionsRecordHeader}                30 seconds
    #Actions Process flow
    #Log to Console      Actions Process flow
    Wait Until Element Is Visible                   ${SIActionsPF}                          60 seconds
    Click Element                                   ${SIActionsPF}
    Element Text Should Be                          ${SIActionsPFAdd}                       Add action
    #Action description
    #Log to Console      Action description
    ${CurrentDate}      Get Current Date            result_format=%d/%m/%Y
    Set Global Variable                 ${CurrentDate}
    Input Text                                      ${SIActionsDescription}                 FR17_01_Capture Actions_MainScenario ${CurrentDate}
    #Department responsible
    #Log to Console      Department responsible
    Click Element                                   ${SIActionsDepartmentDD}
    Wait Until Element Is Visible                   ${SIActionsGlobalExpand}                 20 seconds
    Click Element                                   ${SIActionsGlobalExpand}
    Wait Until Element Is Visible                   ${SIActionsSAExpand}                     20 seconds
    Click Element                                   ${SIActionsSAExpand}
    Wait Until Element Is Visible                   ${SIActionsVictorySite}                  20 seconds
    Click Element                                   ${SIActionsVictorySite}
    #Responsible person
    #Log to Console      Responsible person
    Click Element                                   ${SIActionsResposnsibleDD}
    Wait Until Element Is Visible                   ${SIActionsResposnsible2Manager}         20 seconds
    Click Element                                   ${SIActionsResposnsible2Manager}
    #Action due date
    #Log to Console      Action due date
    ${CurrentDate}      Get Current Date            result_format=%d/%m/%Y
    Set Global Variable                 ${CurrentDate}
    Click Element                                   ${SIActionsDueDate}
    Input Text                                      ${SIActionsDueDate}                     ${CurrentDate}
    #Save button
    #Log to Console      Save button
    Click Element                                   ${SIActionsSaveBtn}
    Wait Until Element Is Visible                   ${SIWorkHistorySavedRecordPop}          60 seconds
    #Save validation
    ${recordnumber}=    get text                    ${SIActionsRecordNo}
    log    ${recordnumber}
    #Validate Process Flow = To be initiated phase
    Element Text Should Be                          ${SIActionsPFToBeInitiated}             To be initiated
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Actions Process Flow - To Be Initiated.png
    #Close Action Record
    #Log to Console      Close Action Record
    Click Element                                   ${SIActionsCloseBtn}
    Sleep       2
    Wait Until Element Is Visible                   ${SIActionsRecordSMC}                   60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Action Record Closed.png

#*********************************************** FR18 01: View Stakeholder Individual Report_MS **************************************************************
View Stakeholder Individual Report_MS
    #Full Name Search
    #Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SIFullNameSearch}                 30 seconds
    Input Text                                      ${SIFullNameSearch}                 David Abel
    #Search Button
    #Log to Console      Search Button
    Click Element                                   ${SISearchButton}
    Wait Until Element Is Visible                   ${SIRecords}                        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Records Visible.png
    #Open David Abel Record
    #Log to Console      Open David Abel Record
    Wait Until Element Is Visible                   ${SIRecordDavidAbel}                30 seconds
    Click Element                                   ${SIRecordDavidAbel}
    Wait Until Element Is Visible                   ${SISavedRecordNo}                  30 seconds
    Wait Until Element Is Visible                   ${SIProcessFlowBtn}                 30 seconds
    Click Element                                   ${SIProcessFlowBtn}
    Page Should Contain Element                     ${SIPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual David Abel Record Opened.png
    #Stakeholder Individual Record Report Button
    #Log to Console      Stakeholder Individual Record Report Button
    Click Element                                   ${SIRecordReportsBtn}
    Wait Until Element Is Visible                   ${SIRecordReportSITitle}             20 seconds
    #Open Stakeholder Individual Record Report
    #Log to Console      Open Stakeholder Individual Record Report
    Click Element                                   ${SIRecordReportOpen}
    Switch Window
    Wait Until Element Is Visible                   ${SIReportsPopUpConfirm}             20 seconds
    Click Element                                   ${SIReportsPopUpConfirm}
    Sleep       35
    #Switch Window
    #Log to Console      Switch Window - NEW
    Select Window       NEW
#    Select Frame                                    xpath://iframe[@id='ifrMain']
#    Wait Until Element Is Visible                   ${SIReportPDFViewerScreen}           60 seconds
#    Switch Window           reportviewer.aspx
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual View Reports Visible.png
    #Close Window
    #Log to Console      Close Window - MAIN
    Close Window
    Sleep       2
    Select Window       MAIN
#    Select Frame                                    xpath://iframe[@id='ifrMain']
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Record.png

#*********************************************** FR18 02: View Stakeholder Individual Reports_AS **************************************************************
View Stakeholder Individual Reports_AS
    #Search Button
    #Log to Console      Search Button
    Click Element                                   ${SISearchButton}
    Wait Until Element Is Visible                   ${SIRecords}                        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Records Visible.png
    #Stakeholder Individual Reports Button
    #Log to Console      Stakeholder Individual Reports Button
    Click Element                                   ${SIReportsBtn}
    Wait Until Element Is Visible                   ${SIRecordReportSITitle}            40 seconds
    #View Reports
    #Log to Console      View Reports
    Click Element                                   ${SIViewReportsBtn}
    #Switch Window
    #Log to Console      Switch Window
    Switch Window
    Wait Until Element Is Visible                   ${SIReportsPopUpConfirm}            20 seconds
    Click Element                                   ${SIReportsPopUpConfirm}
    Sleep       5
    #Select Window
    #Log to Console      Select Window - NEW
    Select Window       NEW
    Sleep       2
#    Select Frame                                    ${iFrame}
    #Report Right Arrow
    #Log to Console      Report Right Arrow
    Wait Until Element Is Visible                   ${SIViewReportRightArrow}           60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual View Reports Visible.png
    Click Element                                   ${SIViewReportRightArrow}
    Sleep       1
    Wait Until Element Is Not Visible               ${SIViewReportsLoading}
    #Report Export Button
    #Log to Console      Report Export Button
    Click Element                                   ${SIViewReportExportArrow}
    Sleep       1
    Click Element                                   ${SIViewReportsWord}
    Sleep       10
    #Close Window
    #Log to Console      Close Window - MAIN
    Close Window
    Sleep       2
    Select Window       MAIN

Full Stakeholder Individual Reports_AS
    #Full Reports
    #Log to Console      Full Reports
    Select Frame                                    ${iFrame}
    Click Element                                   ${SIFullReportsBtn}
    #Switch Window
    #Log to Console      Switch Window
    Switch Window
    Wait Until Element Is Visible                   ${SIReportsPopUpConfirm}            20 seconds
    Click Element                                   ${SIReportsPopUpConfirm}
    Sleep       5
    #Select Window
    #Log to Console      Select Window - NEW
    Select Window       NEW
    Sleep       2
    #Report Right Arrow
    #Log to Console      Report Right Arrow
    Wait Until Element Is Visible                   ${SIViewReportRightArrow}           60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Full Reports Visible.png
    Click Element                                   ${SIViewReportRightArrow}
    Sleep       1
    Wait Until Element Is Not Visible               ${SIViewReportsLoading}
    #Report Export Button
    #Log to Console      Report Export Button
    Click Element                                   ${SIViewReportExportArrow}
    Sleep       1
    Click Element                                   ${SIViewReportsWord}
    Sleep       10
    #Close Window
    #Log to Console      Close Window - MAIN
    Close Window
    Sleep       2
    Select Window       MAIN
