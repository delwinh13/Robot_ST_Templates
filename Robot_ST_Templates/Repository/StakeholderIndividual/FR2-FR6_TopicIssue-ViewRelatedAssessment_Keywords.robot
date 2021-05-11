*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Audits/vars.robot
Resource    ../../Resources/StakeholderIndividual/SI_vars.robot
Resource    ../../Resources/StakeholderIndividual/SI_keywords.robot
Resource    ../../Resources/Audits/vars.robot
Library     DateTime

*** Keywords ***
#*********************************************** FR2 01: Capture Topic / Issue Assessment_MS *******************************************
Capture Topic_Issue Assessment
    #Topic/Issue Assessment Panel
    Log to Console      Topic/Issue Assessment Panel
    Click Element                                   ${SITopicPanel}
    #Topic/Issue Assessment Add Button
    Log to Console      Topic/Issue Assessment Add Button
    Wait Until Element Is Visible                   ${SITopicIssueAddBtn}               20 seconds
    Click Element                                   ${SITopicIssueAddBtn}
    Sleep       2
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Topic/Issue Assessment Panel - Add Button.png
    #Topic / Issue dropdown
    Log to Console      Topic / Issue
    Wait Until Element Is Visible                   ${SITopicIssueDD}                   20 seconds
    Click Element                                   ${SITopicIssueDD}
    Wait Until Element Is Visible                   ${SITopicIssueExpand1}              20 seconds
    Click Element                                   ${SITopicIssueExpand1}
    Wait Until Element Is Visible                   ${SITopicIssueSelect}               20 seconds
    Click Element                                   ${SITopicIssueSelect}
    #Influence Dropdown
    Log to Console      Influence Dropdown
    Click Element                                   ${SITopicInfluenceDD}
    Wait Until Element Is Visible                   ${SITopicInfluenceModerate}         20 seconds
    Click Element                                   ${SITopicInfluenceModerate}
    #Interest Dropdown
    Log to Console      Interest Dropdown
    Click Element                                   ${SITopicInterestDD}
    Wait Until Element Is Visible                   ${SITopicInterestModerate}          20 seconds
    Click Element                                   ${SITopicInterestModerate}
    #Assessment
    Log to Console      Assessment - Auto Populated - Keep informed
    Page Should Contain Element                     ${SITopicAssessmentKeepInformed}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Topic Assessment - Keep informed.png
    #Record Save Tick Button
    Log to Console      Record Save Tick Button
    Click Element                                   ${SITopicAssessmentRecordSaveTick}
    Wait Until Element Is Visible                   ${RecordSaved}                              60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Topic Assessment Record Saved.png
    #Open Topic Assessment Record
    Log to Console      Open Topic Assessment Record
    Scroll Element Into View                        ${SITopicInLineEditText}
    Click Element                                   ${SITopicInLineEditBtn}
    Wait Until Element Is Visible                   ${SITopicAssessmentRecordOpen}              20 seconds
    Click Element                                   ${SITopicAssessmentRecordOpen}
    Wait Until Element Is Visible                   ${SITopicAssessmentRecordOpened}            60 seconds
    Wait Until Element Is Visible                   ${SITopicAssessmentRecordPF}                60 seconds
    Sleep       1
    Click Element                                   ${SITopicAssessmentRecordPF}
    Sleep       1
    Page Should Contain Element                     ${SITopicAssessmentRecordPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Topic Assessment Record Opened Edit Phase.png
    #Close Record
    Log to Console      Close Record
    Click Element                                   ${SITopicAssessmentRecordClosed}
    Wait Until Element Is Visible                   ${SITopicInLineEditText}
    Sleep       1

#*********************************************** FR3 01: Capture Related Stakeholders_MS *******************************************
Capture Related Stakeholders_MS
    Log to Console      Tab Left Arrow
    FOR  ${i}     IN RANGE  1  8
    Click Element                                   ${SITabLeftArrow}
    END
    #Relationships Tab
    Log to Console      Relationships Tab
    Click Element                                   ${SIRelationshipsTab}
    Page Should Contain Element                     ${SIRelationsCreateNewIndividualBtn}
    Wait Until Element Is Visible                   ${SIRelationshipAddBtn}                 20 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Relationships Tab.png
    #Add Button
    Log to Console      Add Button
    Click Element                                   ${SIRelationshipAddBtn}
    Sleep       3
    #Stakeholder Name
    Log to Console      Stakeholder Name
    Wait Until Element Is Visible                   ${SIRelationsStakeNameDD}               10 seconds
    Click Element                                   ${SIRelationsStakeNameDD}
    Wait Until Element Is Visible                   ${SIRelationsStakeNameDavidAbel}        20 seconds
    Click Element                                   ${SIRelationsStakeNameDavidAbel}
    #Type of Relationship
    Log to Console      Type of Relationship
    Click Element                                   ${SIRelationsTypeofRelationshipDD}
    Wait Until Element Is Visible                   ${SIRelationsTypeofRelationshipSpouse}      20 seconds
    Click Element                                   ${SIRelationsTypeofRelationshipSpouse}
    #Record Save Tick Button
    Log to Console      Record Save Tick Button
    Click Element                                   ${SITopicAssessmentRecordSaveTick}
    Wait Until Element Is Visible                   ${RecordSaved}                              60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Related Stakeholders Record Saved.png
    #Open Related Stakeholders Record
    Log to Console      Open Related Stakeholders Record
    Scroll Element Into View                        ${SITopicInLineEditText}
    Click Element                                   ${SITopicInLineEditBtn}
    Sleep       1
    Wait Until Element Is Visible                   ${SIRelationsRecordOpen}                    20 seconds
    Click Element                                   ${SIRelationsRecordOpen}
    Sleep       1
    Wait Until Element Is Visible                   ${SIRelationsRecordOpened}                  60 seconds
    Wait Until Element Is Visible                   ${SIRelationsRecordPF}                      60 seconds
    Sleep       3
    Click Element                                   ${SIRelationsRecordPF}
    Sleep       1
    Page Should Contain Element                     ${SIRelationsPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Related Stakeholders Record Opened Edit Phase.png
    #Close Record
    Log to Console      Close Record
    Click Element                                   ${SIRelationsRecordClosed}
    Wait Until Element Is Visible                   ${SITopicInLineEditText}
    Sleep       1

#*********************************************** FR3 01: Capture Related Stakeholders_OS *******************************************
Capture Related Stakeholders_OS
    #Close Stakeholder Individual Record
    Log to Console      Close Stakeholder Individual Record
    Click Element                                   ${SIRecordCloseX}
    Sleep       3
    Wait Until Element Is Visible                   ${SIRecords}
    Wait Until Element Is Visible                   ${SIViewFilterBtn}                  30 seconds
    #View Filter Button
    Log to Console      View Filter Button
    Click Element                                   ${SIViewFilterBtn}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual View Filter Button.png
    #Full Name Search
    Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SIFullNameSearch}                 30 seconds
    Input Text                                      ${SIFullNameSearch}                 David Abel
    #Search Button
    Log to Console      Search Button
    Click Element                                   ${SISearchButton}
    Wait Until Element Is Visible                   ${SIRecords}                        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Records Visible.png
    #Open David Abel Record
    Log to Console      Open David Abel Record
    Wait Until Element Is Visible                   ${SIRecordDavidAbel}                30 seconds
    Click Element                                   ${SIRecordDavidAbel}
    Wait Until Element Is Visible                   ${SISavedRecordNo}                  30 seconds
    Wait Until Element Is Visible                   ${SIProcessFlowBtn}                 30 seconds
    Click Element                                   ${SIProcessFlowBtn}
    Page Should Contain Element                     ${SIPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual David Abel Record Opened.png
    #Relationships Tab
    Log to Console      Relationships Tab
    Click Element                                   ${SIRelationshipsTab}
    Page Should Contain Element                     ${SIRelationsCreateNewIndividualBtn}
    Scroll Element Into View                        ${SITopicInLineEditText}
    Sleep   2
    Page Should Contain Element                     ${SIRelatedStakeTest}
    Scroll Element Into View                        ${SITopicInLineEditText}
    Sleep   1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual David Abel Related Stake Replicated.png
    #Update Type of Relationship
    Log to Console      Update Type of Relationship
    Page Should Contain Element                     ${SIRelatedStakeTestSpouse}
    Click Element                                   ${SIRelatedStakeTestSpouse}
    Wait Until Element Is Visible                   ${SIRelationsTypeofRelationshipChild}       20 seconds
    Click Element                                   ${SIRelationsTypeofRelationshipChild}
    #Save Button
    Log to Console      Save Button
    Click Element                                   ${SIRelatedSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                              60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual David Abel Relationship Update Record Saved.png
    #Close David Abel Record
    Log to Console      Close David Abel Record
    Click Element                                   ${SIRecordCloseX}
    Wait Until Element Is Visible                   ${SIViewFilterBtn}                          30 seconds
    #View Filter Button
    Log to Console      View Filter Button
    Sleep       2
    Click Element                                   ${SIViewFilterBtn}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual View Filter Button.png
    #Full Name Search
    Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SIFullNameSearch}                         30 seconds
    Clear Element Text                              ${SIFullNameSearch}
    Input Text                                      ${SIFullNameSearch}                         Stake_AS1 First (1) Last Name (1) - AS1 (Test1)
    #Search Button
    Log to Console      Search Button
    Click Element                                   ${SISearchButton}
    Wait Until Element Is Visible                   ${SIRecords}                                40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Records Visible.png
    #Open Stake_AS1 Stakeholder Individual Record
    Log to Console      Open Stake_AS1 Stakeholder Individual Record
    Wait Until Element Is Visible                   ${SIRecordStake_AS1}                        30 seconds
    Click Element                                   ${SIRecordStake_AS1}
    Wait Until Element Is Visible                   ${SISavedRecordNo}                          30 seconds
    Wait Until Element Is Visible                   ${SIProcessFlowBtn}                         30 seconds
    Click Element                                   ${SIProcessFlowBtn}
    Page Should Contain Element                     ${SIPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Stake_AS1 Record Opened.png
    #Relationships Tab
    Log to Console      Relationships Tab
    Click Element                                   ${SIRelationshipsTab}
    Page Should Contain Element                     ${SIRelationsCreateNewIndividualBtn}
    Scroll Element Into View                        ${SITopicInLineEditText}
    Sleep   2
    Wait Until Element Is Visible                   ${SIRelatedStakeDavid}                      30 seconds
    Page Should Contain Element                     ${SIRelatedStakeDavid}
    Scroll Element Into View                        ${SITopicInLineEditText}
    Sleep   1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Stake_AS1 Related Stake Parent.png

#*********************************************** FR3 01: Capture Related Stakeholders_AS *******************************************
Capture Related Stakeholders_AS
#    [Arguments]         ${winClose}
    Log to Console      Tab Left Arrow
    FOR  ${i}     IN RANGE  1  8
    Click Element                                   ${SITabLeftArrow}
    END
    #Relationships Tab
    Log to Console      Relationships Tab
    Click Element                                   ${SIRelationshipsTab}
    Page Should Contain Element                     ${SIRelationsCreateNewIndividualBtn}
    Click Element                                   ${SIRelationsCreateNewIndividualBtn}
    Log to Console      Switch Window
    Sleep       5
    #Get Window Handles
    Log to Console      Get Window Handles
    @{list1}        Get Window Handles
    FOR   ${win}  IN  @{list1}
    Log to Console      ${win}
    Select Window       ${win}
    ${URL}=     Get Location
    Log to Console      ${URL}
    END
    Sleep       5
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual New Tab Opened.png
    #Select Frame
    Log to Console      Select Frame
    Select Frame                                    ${iFrame}
    #Process Flow
    Log to Console      Process Flow Button
    Wait Until Element Is Visible                   ${SIProcessFlowBtn}                   60 seconds
    Click Element                                   ${SIProcessFlowBtn}
    #Add Phase
    Log to Console      Stakeholder Individual in Add Phase
    Wait Until Page Contains Element                ${SIPFAddPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/StakeIndividual Add Phase.png
    #First Name
    Log to Console      First Name
    Input Text                                      ${SIFirstName}              Stake_FR3AS First (1)
    #Last Name
    Log to Console      Last Name
    Input Text                                      ${SILastName}               Last Name (1) - FR3AS
    #Known As
    Log to Console      Known As
    Input Text                                      ${SIKnownAs}                Test FR3AS
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
    #Get Window Handles
    Log to Console      Get Window Handles
    @{list2}        Get Window Handles
    FOR   ${win2}  IN  @{list2}
    Log to Console      ${win2}
    Log to Console      Switch Window
    Switch Window       IsoMetrix
    ${URL}=     Get Location
    Log to Console      ${URL}
    END
    Sleep       3
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Tab Visible.png
    #Select Frame
    Log to Console      Select Frame
    Select Frame                                    ${iFrame}
    #Related Stakeholder Add Button
    Log to Console      Related Stakeholder Add Button
    Click Element                                   ${SIRelationshipAddBtn}
    Sleep       3
    #Stakeholder Name
    Log to Console      Stakeholder Name
    Wait Until Element Is Visible                   ${SIRelationsStakeNameDD}               10 seconds
    Click Element                                   ${SIRelationsStakeNameDD}
    Wait Until Element Is Visible                   ${SIRelationsStakeNameFR3AS}            20 seconds
    Click Element                                   ${SIRelationsStakeNameFR3AS}
    #Type of Relationship
    Log to Console      Type of Relationship
    Click Element                                   ${SIRelationsTypeofRelationshipDD}
    Wait Until Element Is Visible                   ${SIRelationsTypeofRelationshipSpouse}      20 seconds
    Click Element                                   ${SIRelationsTypeofRelationshipSpouse}
    #Record Save Tick Button
    Log to Console      Record Save Tick Button
    Click Element                                   ${SITopicAssessmentRecordSaveTick}
    Wait Until Element Is Visible                   ${RecordSaved}                              60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Related Stakeholders Record Saved.png

#*********************************************** FR4 01: Capture Related Entities_MS *******************************************
Capture Related Entities_MS
    Log to Console      Tab Left Arrow
    FOR  ${i}     IN RANGE  1  8
    Click Element                                   ${SITabLeftArrow}
    END
    #Entities Tab
    Log to Console      Entities Tab
    Click Element                                   ${SIEntitiesTab}
    Page Should Contain Element                     ${SIEntitiesCreateNewEntityBtn}
    Wait Until Element Is Visible                   ${SIEntityAddBtn}                       20 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entities Tab.png
    #Add Button
    Sleep       2
    Log to Console      Add Button
    Click Element                                   ${SIEntityAddBtn}
    Sleep       2
    #Entities Name
    Log to Console      Entities Name
    Wait Until Element Is Visible                   ${SIEntityStakeNameDD}                  10 seconds
    Click Element                                   ${SIEntityStakeNameDD}
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
    #Open Related Entities Record
    Log to Console      Open Related Entities Record
    Scroll Element Into View                        ${SITopicInLineEditText}
    Click Element                                   ${SITopicInLineEditBtn}
    Sleep       2
    Wait Until Element Is Visible                   ${SIEntityRecordOpen}                       20 seconds
    Click Element                                   ${SIEntityRecordOpen}
    Sleep       1
    Wait Until Element Is Visible                   ${SIEntityRecordOpened}                     60 seconds
    Wait Until Element Is Visible                   ${SIEntityRecordPF}                         60 seconds
    Sleep       3
    Click Element                                   ${SIEntityRecordPF}
    Sleep       1
    Page Should Contain Element                     ${SIEntityRecordPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Related Entities Record Opened Edit Phase.png
    #Close Record
    Log to Console      Close Record
    Click Element                                   ${SIEntityRecordClosed}
    Wait Until Element Is Visible                   ${SITopicInLineEditText}
    Sleep       2

#*********************************************** FR4 01: Capture Related Entities_OS *******************************************
Capture Related Entities_OS
    #Close Stakeholder Individual Record
    Log to Console      Close Stakeholder Individual Record
    Click Element                                   ${SIRecordCloseX}
    Sleep       3
    Wait Until Element Is Visible                   ${SIRecords}
    Wait Until Element Is Visible                   ${SIViewFilterBtn}                  30 seconds
    #Close Stakeholder Individual Module
    Log to Console      Close Stakeholder Individual Module
    Click Element                                   ${SIEntityCloseSIModule}
    Sleep       2
    #Open Stakeholder Entity Module
    Log to Console      Open Stakeholder Entity Module
    Wait Until Element Is Visible                   ${SIEntitySEModuleBtn}              60 seconds
    Click Element                                   ${SIEntitySEModuleBtn}
    Sleep       10
    Wait Until Element Is Visible                   ${SIViewFilterBtn}                  30 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Module Search Results.png
#    #View Filter Button
#    Log to Console      View Filter Button
#    Click Element                                   ${SIViewFilterBtn}
#    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity View Filter Button.png
    #Full Name Search
    Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SIEntityFullNameSearch}                 30 seconds
    Input Text                                      ${SIEntityFullNameSearch}                 Coltness Iron Company Ltd
    #Search Button
    Log to Console      Search Button
    Click Element                                   ${SISearchButton}
    Sleep       5
    Wait Until Element Is Visible                   ${SIEntitySearchRecords}                  40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Record Visible.png
    #Open Coltness Iron Company Ltd Record
    Log to Console      Open Coltness Iron Company Ltd Record
    Wait Until Element Is Visible                   ${SIEntitySearchRecords}                  30 seconds
    Click Element                                   ${SIEntitySearchRecords}
    Wait Until Element Is Visible                   ${SIEntitySavedRecordNo}                  30 seconds
    Click Element                                   ${SIEntityProcessFlowBtn}
    Page Should Contain Element                     ${SIOpenedEntityRecordPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Coltness Iron Company Ltd Record Opened.png
    #Members Tab
    Log to Console      Members Tab
    Click Element                                   ${SIEntityMembersTab}
    Page Should Contain Element                     ${SIMembersCreateNewIndividualBtn}
    Scroll Element Into View                        ${SITopicInLineEditText}
    Sleep   2
    Wait Until Element Is Visible                   ${SIEntityMembersStakeTest}                60 seconds
    Page Should Contain Element                     ${SIEntityMembersStakeTest}
#    Scroll Element Into View                        ${SITopicInLineEditText}
    Sleep   1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Coltness Iron Company Ltd Related Stake Replicated.png
    #Update Position
    Log to Console      Update Position
    Page Should Contain Element                     ${SIEntityMembersStakeTest}
    Click Element                                   ${SIEntityMembersStakeTest}
    Wait Until Element Is Visible                   ${SIEntityMembersPositionCEO}              60 seconds
    Click Element                                   ${SIEntityMembersPositionCEO}
    #Save Button
    Log to Console      Save Button
    Click Element                                   ${SIRelatedSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                              60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Coltness Iron Company Ltd Position Update Record Saved.png
    #Close Coltness Iron Company Ltd Record
    Log to Console      Close Coltness Iron Company Ltd Record
    Click Element                                   ${SIEntityRecordCloseX}
    Sleep       3
    Wait Until Element Is Visible                   ${SIViewFilterBtn}                          30 seconds
    #Close Stakeholder Entity Module
    Log to Console      Close Stakeholder Entity Module
    Click Element                                   ${SIEntityCloseSEModule}
    Sleep       3
    #Open Stakeholder Individual Module
    Log to Console      Open Stakeholder Individual Module
    Wait Until Element Is Visible                   ${StakeholderIndividualBtn}                 60 seconds
    Click Element                                   ${StakeholderIndividualBtn}
    Sleep       5
    Wait Until Element Is Visible                   ${SIViewFilterBtn}                  30 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Module Search Results.png
#    #View Filter Button
#    Log to Console      View Filter Button
    Sleep       2
#    Click Element                                   ${SIViewFilterBtn}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual View Filter Button.png
    #Full Name Search
    Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SIFullNameSearch}                         30 seconds
    Clear Element Text                              ${SIFullNameSearch}
    Input Text                                      ${SIFullNameSearch}                         Stake_AS1 First (1) Last Name (1) - AS1 (Test1)
    #Search Button
    Log to Console      Search Button
    Click Element                                   ${SISearchButton}
    Wait Until Element Is Visible                   ${SIRecords}                                40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Records Visible.png
    #Open Stake_AS1 Stakeholder Individual Record
    Log to Console      Open Stake_AS1 Stakeholder Individual Record
    Wait Until Element Is Visible                   ${SIRecordStake_AS1}                        30 seconds
    Click Element                                   ${SIRecordStake_AS1}
    Wait Until Element Is Visible                   ${SISavedRecordNo}                          30 seconds
    Wait Until Element Is Visible                   ${SIProcessFlowBtn}                         30 seconds
    Click Element                                   ${SIProcessFlowBtn}
    Page Should Contain Element                     ${SIPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Stake_AS1 Record Opened.png
    #Entities Tab
    Log to Console      Entities Tab
    Click Element                                   ${SIEntitiesTab}
    Page Should Contain Element                     ${SIEntitiesCreateNewEntityBtn}
    Scroll Element Into View                        ${SITopicInLineEditText}
    Sleep   2
    Wait Until Element Is Visible                   ${SIEntityRelatedColtness}                      30 seconds
    Page Should Contain Element                     ${SIEntityRelatedColtness}
    Scroll Element Into View                        ${SITopicInLineEditText}
    Sleep   1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Stake_AS1 Related Entity CEO.png

#*********************************************** FR4 01: Capture Related Entities_AS *******************************************
Capture Related Entities_AS
    Log to Console      Tab Left Arrow
    FOR  ${i}     IN RANGE  1  8
    Click Element                                   ${SITabLeftArrow}
    END
    #Entities Tab
    Log to Console      Entities Tab
    Click Element                                   ${SIEntitiesTab}
    Page Should Contain Element                     ${SIEntitiesCreateNewEntityBtn}
    Wait Until Element Is Visible                   ${SIEntityAddBtn}                       20 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entities Tab.png
    Click Element                                   ${SIEntitiesCreateNewEntityBtn}
    Log to Console      Switch Window
    Sleep       5
    #Get Window Handles
    Log to Console      Get Window Handles
    @{list1}        Get Window Handles
    FOR   ${win}  IN  @{list1}
    Log to Console      ${win}
    Select Window       ${win}
    ${URL}=     Get Location
    Log to Console      ${URL}
    END
    Sleep       5
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity New Tab Opened.png
    #Select Frame
    Log to Console      Select Frame
    Select Frame                                    ${iFrame}
    #Entity Process Flow
    Log to Console      Entity Process Flow Button
    Wait Until Element Is Visible                   ${SIEntityProcessFlowBtn}                   60 seconds
    Click Element                                   ${SIEntityProcessFlowBtn}
    #Add Phase
    Log to Console      Stakeholder Entity in Add Phase
    Wait Until Page Contains Element                ${SIEntityPFAddPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Add Phase.png
    #Entity Type
    Log to Console      Entity Type
    Wait Until Element Is Visible                   ${SIEntityTypeDD}                           30 seconds
    Click Element                                   ${SIEntityTypeDD}
    Wait Until Element Is Visible                   ${SIEntityTypeCompanySite}                  30 seconds
    Click Element                                   ${SIEntityTypeCompanySite}
    #Entity Name
    Log to Console      Entity Name
    Input Text                                      ${SIEntityName}                    StakeSI_Entity FR4AS1
    #Known As
    Log to Console      Entity Known As
    Input Text                                      ${SIEntityKnownAs}                  Test FR4AS
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Name.png
    #Industry
    Log to Console      Industry
    Click Element                                   ${SIEntityIndustryDD}
    sleep       1
    Wait Until Element Is Visible                   ${SIEntityIndustryMining}           20 seconds
    Click Element                                   ${SIEntityIndustryMining}
    #Entity description
    Log to Console      Entity description
    Input Text                                      ${SIEntityDescription}             FR4_01_CaptureRelatedEntities_AlternateScenario
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Industry_Description.png
    #Relationship Owner
    Log to Console      Relationship Owner
    Click Element                                   ${SIEntityRelationshipOwnerDD}
    sleep       2
    Wait Until Element Is Visible                   ${SIRelationshipOwnerManager}          60 seconds
    Click Element                                   ${SIRelationshipOwnerManager}
    #Stakeholder categories
    Log to Console      Stakeholder categories
    Wait Until Element Is Visible                   ${SIEntityStakeCategoriesCommunity}                  60 seconds
    Click Element                                   ${SIEntityStakeCategoriesCommunity}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity RelationOwner_Category.png
    #Business Unit
    Log to Console      Business Unit
    Scroll Element Into View                        ${SIEntitySaveandContinueBtn}
    Click Element                                   ${SIBusUnitExpand1}
    Wait Until Element Is Visible                   ${SIBusUnitExpand2}                 10 seconds
    Click Element                                   ${SIBusUnitExpand2}
    Wait Until Element Is Visible                   ${SIBusUnitVictorySite}             10 seconds
    Click Element                                   ${SIBusUnitVictorySite}
    #Impact Types
    Log to Console      Impact Types
    Wait Until Element Is Visible                   ${SIImpactTypeBusRisk}                  60 seconds
    Click Element                                   ${SIEntityImpactTypeSelectAll}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Impact Types.png
    #Save and Continue
    Log to Console      Save and Continue
    Click Element                                   ${SIEntitySaveandContinueBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                          60 seconds
    Scroll Element Into View                        ${SIEntityTypeDD}
    Page Should Contain Element                     ${SIEntitySavedRecordNo}
    Wait Until Page Contains Element                ${SIEntityPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Saved.png
    #Get Window Handles
    Log to Console      Get Window Handles
    @{list2}        Get Window Handles
    FOR   ${win2}  IN  @{list2}
    Log to Console      ${win2}
    Log to Console      Switch Window
    Switch Window       IsoMetrix
    ${URL}=     Get Location
    Log to Console      ${URL}
    END
    Sleep       3
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Tab Visible.png
    #Select Frame
    Log to Console      Select Frame
    Select Frame                                    ${iFrame}
    #Add Button
    Sleep       2
    Log to Console      Add Button
    Click Element                                   ${SIEntityAddBtn}
    Sleep       2
    #Entities Name
    Log to Console      Entities Name
    Wait Until Element Is Visible                   ${SIEntityStakeNameDD}                  10 seconds
    Click Element                                   ${SIEntityStakeNameDD}
    Wait Until Element Is Visible                   ${SIRelatedEntityNameFR4AS}             60 seconds
    Click Element                                   ${SIRelatedEntityNameFR4AS}
    #Stakeholder Position
    Log to Console      Stakeholder Position
    Click Element                                   ${SIEntityStakePositionDD}
    Wait Until Element Is Visible                   ${SIEntityStakePositionCOO}             60 seconds
    Click Element                                   ${SIEntityStakePositionCOO}
    #Record Save Tick Button
    Log to Console      Record Save Tick Button
    Click Element                                   ${SITopicAssessmentRecordSaveTick}
    Wait Until Element Is Visible                   ${RecordSaved}                              60 seconds
    Sleep       2
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Related Entities Record Saved.png


#*********************************************** FR5 01: Capture Update Vulnerability_MS *******************************************
Capture Vulnerability_MS
    Log to Console      Tab Left Arrow
    FOR  ${i}     IN RANGE  1  8
    Click Element                                   ${SITabLeftArrow}
    END
    #Vulnerability Tab
    Log to Console      Vulnerability Tab
    Click Element                                   ${SIVulnerabilityTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Vulnerability Tab.png
    #Vulnerability confirmed
    Log to Console      Vulnerability Confirmed
    Wait Until Element Is Visible                   ${SIVulnerabilityConfirmedDD}               20 seconds
    Click Element                                   ${SIVulnerabilityConfirmedDD}
    #Stakeholder doesn't live within a vulnerable area
    Page Should Contain Element                     ${SIVulnerabilityNotVulnerableAreaImage}
    Wait Until Element Is Visible                   ${SIVulnerabilityConfirmedYes}              20 seconds
    Click Element                                   ${SIVulnerabilityConfirmedYes}
    #Stakeholder does live within a vulnerable area
    Log to Console      Stakeholder does live within a vulnerable area
    Page Should Contain Element                     ${SIVulnerabilityInVulnerableAreaImage}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Vulnerability Confirmed - Yes.png
    #Vulnerability categorization
    Log to Console      Vulnerability Categorization
    Wait Until Element Is Visible                   ${SIVulnerabilityCategorizationDD}              10 seconds
    Click Element                                   ${SIVulnerabilityCategorizationDD}
    Wait Until Element Is Visible                   ${SIVulnerabilityCategorizationIndigenous}      30 seconds
    Click Element                                   ${SIVulnerabilityCategorizationIndigenous}
    Scroll Element Into View                        ${SIVulnerabilityDescription}
    #Vulnerability type
    Log to Console      Vulnerability Type
    Click Element                                   ${SIVulnerabilityTypeElderly}
    Click Element                                   ${SIVulnerabilityTypeEthnic}
    #Vulnerability description
    Log to Console      Vulnerability Description
    Input Text                                      ${SIVulnerabilityDescription}                   FR5_01_CaptureUpdateVulnerability_MainScenario
    Sleep       1
    #Save Button
    Log to Console      Save Button
    Click Element                                   ${SISaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                              60 seconds
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Vulnerability - Yes Saved.png

#*********************************************** FR5 01: Capture Update Vulnerability_AS1 *******************************************
Capture Vulnerability_AS1
    Log to Console      Tab Left Arrow
    FOR  ${i}     IN RANGE  1  8
    Click Element                                   ${SITabLeftArrow}
    END
    #Vulnerability Tab
    Log to Console      Vulnerability Tab
    Click Element                                   ${SIVulnerabilityTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Vulnerability Tab.png
    #Vulnerability confirmed
    Log to Console      Vulnerability Confirmed
    Wait Until Element Is Visible                   ${SIVulnerabilityConfirmedDD}               20 seconds
    Click Element                                   ${SIVulnerabilityConfirmedDD}
    #Stakeholder doesn't live within a vulnerable area
    Page Should Contain Element                     ${SIVulnerabilityNotVulnerableAreaImage}
    Wait Until Element Is Visible                   ${SIVulnerabilityConfirmedNo}              20 seconds
    Click Element                                   ${SIVulnerabilityConfirmedNo}
    #Stakeholder doesn't live within a vulnerable area
    Log to Console      Stakeholder doesn't live within a vulnerable area
    Page Should Contain Element                     ${SIVulnerabilityNotVulnerableAreaImage}
    Sleep       1
    #Save Button
    Log to Console      Save Button
    Click Element                                   ${SISaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                              60 seconds
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Vulnerability Confirmed - No.png

#*********************************************** FR5 01: Capture Update Vulnerability_AS2 *******************************************
Capture Vulnerability_AS2
    Log to Console      Tab Left Arrow
    FOR  ${i}     IN RANGE  1  7
    Click Element                                   ${SITabLeftArrow}
    END
    #Vulnerability Tab
    Sleep       1
    Log to Console      Vulnerability Tab
    Click Element                                   ${SIVulnerabilityTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Vulnerability Tab.png
    #Vulnerability confirmed
    Log to Console      Vulnerability Confirmed
    Wait Until Element Is Visible                   ${SIVulnerabilityConfirmedDD}               20 seconds
    Click Element                                   ${SIVulnerabilityConfirmedDD}
    #Stakeholder doesn't live within a vulnerable area
    Page Should Contain Element                     ${SIVulnerabilityNotVulnerableAreaImage}
    Wait Until Element Is Visible                   ${SIVulnerabilityConfirmedYes}              20 seconds
    Click Element                                   ${SIVulnerabilityConfirmedYes}
    #Stakeholder does live within a vulnerable area
    Log to Console      Stakeholder does live within a vulnerable area
    Page Should Contain Element                     ${SIVulnerabilityInVulnerableAreaImage}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Vulnerability Confirmed - Yes.png
    #Vulnerability categorization
    Log to Console      Vulnerability Categorization
    Wait Until Element Is Visible                   ${SIVulnerabilityCategorizationDD}              10 seconds
    Click Element                                   ${SIVulnerabilityCategorizationDD}
    Wait Until Element Is Visible                   ${SIVulnerabilityCategorizationIndigenous}      30 seconds
    Click Element                                   ${SIVulnerabilityCategorizationIndigenous}
    Scroll Element Into View                        ${SIVulnerabilityDescription}
    #Vulnerability type
    Log to Console      Vulnerability Type
    Click Element                                   ${SIVulnerabilityTypeElderly}
    Click Element                                   ${SIVulnerabilityTypeEthnic}
    #Vulnerability description
    Log to Console      Vulnerability Description
    Input Text                                      ${SIVulnerabilityDescription}                   FR5_01_CaptureUpdateVulnerability_AlternateScenario2
    Sleep       1
    #Save Button
    Log to Console      Save Button
    Click Element                                   ${SISaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                              60 seconds
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Vulnerability - Yes Saved.png
    #Vulnerability confirmed
    Log to Console      Vulnerability Confirmed
    #Stakeholder doesn't live within a vulnerable area
    Page Should Contain Element                     ${SIVulnerabilityNotVulnerableAreaImage}
    Wait Until Element Is Visible                   ${SIVulnerabilityConfirmedDD}               20 seconds
    Click Element                                   ${SIVulnerabilityConfirmedDD}
    Sleep       2
    Wait Until Element Is Visible                   ${SIVulnerabilityConfirmedNo}               20 seconds
    Sleep       1
    Click Element                                   ${SIVulnerabilityConfirmedNo}
    #Stakeholder doesn't live within a vulnerable area
    Log to Console      Stakeholder doesn't live within a vulnerable area
    Page Should Contain Element                     ${SIVulnerabilityNotVulnerableAreaImage}
    Sleep       1
    #Save Button
    Log to Console      Save Button
    Click Element                                   ${SISaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                              60 seconds
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Vulnerability Confirmed - No.png


#*********************************************** FR6 01: View Related Assessment_MS *******************************************
View Related Assessment_MS
#    #View Filter Button
#    Log to Console      View Filter Button
#    Click Element                                   ${SIViewFilterBtn}
#    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual View Filter Button.png
    #Full Name Search
    Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SIFullNameSearch}                 30 seconds
    Input Text                                      ${SIFullNameSearch}                 David Abel
    #Search Button
    Log to Console      Search Button
    Click Element                                   ${SISearchButton}
    Wait Until Element Is Visible                   ${SIRecords}                        40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Records Visible.png
    #Open David Abel Record
    Log to Console      Open David Abel Record
    Wait Until Element Is Visible                   ${SIRecordDavidAbel}                30 seconds
    Click Element                                   ${SIRecordDavidAbel}
    Wait Until Element Is Visible                   ${SISavedRecordNo}                  30 seconds
    Wait Until Element Is Visible                   ${SIProcessFlowBtn}                 30 seconds
    Click Element                                   ${SIProcessFlowBtn}
    Page Should Contain Element                     ${SIPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual David Abel Record Opened.png
    #Related Assessment Tab
    Log to Console      Related Assessment Tab
    Click Element                                   ${SIRelatedAssessmentTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Related Assessment Tab.png
    #Open Related Inspections Record
    Scroll Element Into View                        ${SITopicInLineEditText}
    Sleep   1
    Log to Console      Open Related Inspections Record
    Wait Until Element Is Visible                   ${SIRelatedInspectionsRecord}       60 seconds
    Click Element                                   ${SIRelatedInspectionsRecord}
    #Related Inspections Process Flow
    Log to Console      Related Inspections Process Flow
    Sleep       30
    Wait Until Element Is Visible                   ${SIRelatedInspectionsLinkBtn}      60 seconds
    Wait Until Element Is Visible                   ${SIInspectionsRecordNo}            60 seconds
    Click Element                                   ${SIInspectionsProcessFlow}
    Page Should Contain Element                     ${SIInspectionsPFInProgress}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Inspections Process Flow - In Progress.png

















