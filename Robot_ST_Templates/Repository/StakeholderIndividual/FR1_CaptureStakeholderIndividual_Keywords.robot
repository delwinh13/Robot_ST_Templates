*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Audits/vars.robot
Resource    ../../Resources/StakeholderIndividual/SI_vars.robot
Resource    ../../Resources/StakeholderIndividual/SI_keywords.robot
Resource    ../../Resources/Audits/vars.robot
Library     DateTime

*** Keywords ***
#*********************************************** FR1 01-01: Capture Stakeholder Individual_MS *******************************************
Stakeholder Individual Enter Details_MS
    #Process Flow
    #Log to Console      Process Flow Button
    Wait Until Element Is Visible                   ${SIProcessFlowBtn}                   60 seconds
    Click Element                                   ${SIProcessFlowBtn}
    #Add Phase
    #Log to Console      Stakeholder Individual in Add Phase
    Wait Until Page Contains Element                ${SIPFAddPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/StakeIndividual Add Phase.png
    #First Name
    #Log to Console      First Name
    Input Text                                      ${SIFirstName}              Stake_MS First (1)
    #Last Name
    #Log to Console      Last Name
    Input Text                                      ${SILastName}               Last Name (1) - MS
    #Known As
    #Log to Console      Known As
    Input Text                                      ${SIKnownAs}                Test1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/StakeIndividual Full Name Autopopulated.png
    #Title
    #Log to Console      Title
    Click Element                                   ${SITitleDD}
    sleep       5
#    Wait Until Element Is Visible                   ${SITitleMr}                           10 seconds
    Click Element                                   ${SITitleMr}
    #Status
    #Log to Console      Status
    Wait Until Page Contains Element                ${SIStatusActive}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/StakeIndividual Title_Status - Active.png
    #Relationship Owner
    #Log to Console      Relationship Owner
    Click Element                                   ${SIRelationshipOwnerDD}
    Wait Until Element Is Visible                   ${SIRelationshipOwnerManager}          60 seconds
    Click Element                                   ${SIRelationshipOwnerManager}
#    #Image
#    #Log to Console
#    Click Element                                   ${SIImage}
#    Switch Window
    #Category - Employee
    #Log to Console      Category - Employee
    Wait Until Element Is Visible                   ${SICategoryEmployee}                  60 seconds
    Click Element                                   ${SICategoryEmployee}
    #Category - Contractor
    #Log to Console      Category - Contractor
    Wait Until Element Is Visible                   ${SICategoryContractor}                60 seconds
    Click Element                                   ${SICategoryContractor}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/StakeIndividual RelationOwner_Categories.png
    #Business Unit
    #Log to Console      Business Unit
    Scroll Element Into View                        ${SISaveandContinueBtn}
    Click Element                                   ${SIBusUnitExpand1}
    Wait Until Element Is Visible                   ${SIBusUnitExpand2}                 10 seconds
    Click Element                                   ${SIBusUnitExpand2}
    Wait Until Element Is Visible                   ${SIBusUnitVictorySite}             10 seconds
    Click Element                                   ${SIBusUnitVictorySite}
    #Impact Types
    #Log to Console      Impact Types
    Wait Until Element Is Visible                   ${SIImpactTypeBusRisk}                  60 seconds
    Click Element                                   ${SIImpactTypeSelectAll}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/StakeIndividual Impact Types.png
    #Save and Continue
    #Log to Console      Save and Continue
    Click Element                                   ${SISaveandContinueBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                          60 seconds
    Scroll Element Into View                        ${SIFirstName}
    Page Should Contain Element                     ${SISavedRecordNo}
    Wait Until Page Contains Element                ${SIPFEditPhase}
    Wait Until Page Contains Element                ${SIStakeholderDetailsTab}
    Wait Until Page Contains Element                ${SIStakeholderAnalysisTab}
    Wait Until Page Contains Element                ${SIRelationshipsTab}
    Wait Until Page Contains Element                ${SIEntitiesTab}
    Wait Until Page Contains Element                ${SIRelatedAssessmentTab}
    Wait Until Page Contains Element                ${SITrainingManagementTab}
    #Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  6
    Click Element                                   ${SITabRightArrow}
    END
    sleep       1
    Wait Until Page Contains Element                ${SIOccupationalHygieneTab}
    Wait Until Page Contains Element                ${SIWorkHistoryTab}
    Wait Until Page Contains Element                ${SIActionsTab}
    Wait Until Page Contains Element                ${SISupportDocsTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/StakeIndividual Saved and Tabs Triggered.png

FR1_StakeIndividual_LoggedNotification
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
    sleep       15 seconds
    #Switch to Tab
    Switch Window    Mail - Delwin Horsthemke - Outlook
    #System Mail folder
    #Log to Console      System Mail folder
    Wait Until Element Is Visible       ${SystemMailFolder}         20 seconds
    sleep       5 seconds
    Click Element                       ${SystemMailFolder}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/OutlookSystemMailFolder.png
    #StakeIndividual - Logged Notification
    #Log to Console      StakeIndividual Logged Notification
    sleep       3 seconds
    Wait Until Element Is Visible       ${SILoggedSubject}          60 seconds
    Click Element                       ${SILoggedSubject}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/StakeIndividualLoggedEmailSelection.png
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
    #Wait for StakeIndividual Record
    #Log to Console      Wait for StakeIndividual Record
    set selenium implicit wait    50 seconds
    sleep       20 seconds
    Select Frame                        ${iFrame}
    Wait Until Element Is Visible       ${SIProcessFlowBtn}           60 seconds
    Click Element                       ${SIProcessFlowBtn}
    Wait Until Page Contains Element    ${SIPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/StakeIndividualRecordOpened.png

#*********************************************** FR1 01-01: Capture Stakeholder Individual_AS1 *******************************************
Stakeholder Individual Enter Details_AS1
    #Process Flow
    #Log to Console      Process Flow Button
    Wait Until Element Is Visible                   ${SIProcessFlowBtn}                   60 seconds
    Click Element                                   ${SIProcessFlowBtn}
    #Add Phase
    #Log to Console      Stakeholder Individual in Add Phase
    Wait Until Page Contains Element                ${SIPFAddPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/StakeIndividual Add Phase.png
    #First Name
    #Log to Console      First Name
    Input Text                                      ${SIFirstName}              Stake_AS1 First (1)
    #Last Name
    #Log to Console      Last Name
    Input Text                                      ${SILastName}               Last Name (1) - AS1
    #Known As
    #Log to Console      Known As
    Input Text                                      ${SIKnownAs}                Test1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/StakeIndividual Full Name Autopopulated.png
    #Title
    #Log to Console      Title
    Click Element                                   ${SITitleDD}
#    Wait Until Element Is Visible                   ${SITitleMrs}                         60 seconds
    Click Element                                   ${SITitleMrs}
    #Status
    #Log to Console      Status
    Wait Until Page Contains Element                ${SIStatusActive}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/StakeIndividual Title_Status - Active.png
    #Relationship Owner
    #Log to Console      Relationship Owner
    Click Element                                   ${SIRelationshipOwnerDD}
    Wait Until Element Is Visible                   ${SIRelationshipOwnerManager}          60 seconds
    Click Element                                   ${SIRelationshipOwnerManager}
#    #Image
#    #Log to Console
#    Click Element                                   ${SIImage}
#    Switch Window
    #Category - Media
    #Log to Console      Category - Media
    Wait Until Element Is Visible                   ${SICategoryMedia}                      60 seconds
    Click Element                                   ${SICategoryMedia}
    #Category - Regulatory Authority
    #Log to Console      Category - Regulatory Authority
    Wait Until Element Is Visible                   ${SICategoryRegAuth}                    60 seconds
    Click Element                                   ${SICategoryRegAuth}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/StakeIndividual RelationOwner_Categories.png
    #Business Unit
    #Log to Console      Business Unit
    Scroll Element Into View                        ${SISaveandContinueBtn}
    Click Element                                   ${SIBusUnitExpand1}
    Wait Until Element Is Visible                   ${SIBusUnitExpand2}                 10 seconds
    Click Element                                   ${SIBusUnitExpand2}
    Wait Until Element Is Visible                   ${SIBusUnitVictorySite}             10 seconds
    Click Element                                   ${SIBusUnitVictorySite}
    #Impact Types
    #Log to Console      Impact Types
    Wait Until Element Is Visible                   ${SIImpactTypeBusRisk}                  60 seconds
    Click Element                                   ${SIImpactTypeSelectAll}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/StakeIndividual Impact Types.png
    #Save and Continue
    #Log to Console      Save and Continue
    Click Element                                   ${SISaveandContinueBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                          60 seconds
    Scroll Element Into View                        ${SIFirstName}
    Page Should Contain Element                     ${SISavedRecordNo}
    Wait Until Page Contains Element                ${SIPFEditPhase}
    Wait Until Page Contains Element                ${SIStakeholderDetailsTab}
    Wait Until Page Contains Element                ${SIStakeholderAnalysisTab}
    Wait Until Page Contains Element                ${SIRelationshipsTab}
    Wait Until Page Contains Element                ${SIEntitiesTab}
    Wait Until Page Contains Element                ${SIRelatedAssessmentTab}
#    Wait Until Page Contains Element                ${SITrainingManagementTab}
    #Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  5
    Click Element                                   ${SITabRightArrow}
    END
    sleep       1
#    Wait Until Page Contains Element                ${SIOccupationalHygieneTab}
#    Wait Until Page Contains Element                ${SIWorkHistoryTab}
    Wait Until Page Contains Element                ${SIActionsTab}
    Wait Until Page Contains Element                ${SISupportDocsTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/StakeIndividual Saved and Tabs Triggered.png

#*********************************************** FR1 01-01: Capture Stakeholder Individual_AS2 *******************************************
Stakeholder Individual Enter Details_AS2
    #Process Flow
    #Log to Console      Process Flow Button
    Wait Until Element Is Visible                   ${SIProcessFlowBtn}                   60 seconds
    Click Element                                   ${SIProcessFlowBtn}
    #Add Phase
    #Log to Console      Stakeholder Individual in Add Phase
    Wait Until Page Contains Element                ${SIPFAddPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/StakeIndividual Add Phase.png
    #First Name
    #Log to Console      First Name
    Input Text                                      ${SIFirstName}              Stake_AS2 First (1)
    #Last Name
    #Log to Console      Last Name
    Input Text                                      ${SILastName}               Last Name (1) - AS2
    #Known As
    #Log to Console      Known As
    Input Text                                      ${SIKnownAs}                Test1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/StakeIndividual Full Name Autopopulated.png
    #Title
    #Log to Console      Title
    Click Element                                   ${SITitleDD}
    Wait Until Element Is Enabled                   ${SITitleDr}                         5 seconds
    Click Element                                   ${SITitleDr}
    #Status
    #Log to Console      Status
    Wait Until Page Contains Element                ${SIStatusActive}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/StakeIndividual Title_Status - Active.png
    #Relationship Owner
    #Log to Console      Relationship Owner
    Click Element                                   ${SIRelationshipOwnerDD}
    Wait Until Element Is Visible                   ${SIRelationshipOwnerManager}          60 seconds
    Click Element                                   ${SIRelationshipOwnerManager}
#    #Image
#    #Log to Console
#    Click Element                                   ${SIImage}
#    Switch Window
    #Category - Community
    #Log to Console      Category - Community
    Wait Until Element Is Visible                   ${SICategoryCommunity}                      60 seconds
    Click Element                                   ${SICategoryCommunity}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/StakeIndividual RelationOwner_Categories.png
    #Business Unit
    #Log to Console      Business Unit
    Scroll Element Into View                        ${SISaveandContinueBtn}
    Click Element                                   ${SIBusUnitExpand1}
    Wait Until Element Is Visible                   ${SIBusUnitExpand2}                 10 seconds
    Click Element                                   ${SIBusUnitExpand2}
    Wait Until Element Is Visible                   ${SIBusUnitVictorySite}             10 seconds
    Click Element                                   ${SIBusUnitVictorySite}
    #Impact Types
    #Log to Console      Impact Types
    Wait Until Element Is Visible                   ${SIImpactTypeBusRisk}                  60 seconds
    Click Element                                   ${SIImpactTypeSelectAll}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/StakeIndividual Impact Types.png
    #Save and Continue
    #Log to Console      Save and Continue
    Click Element                                   ${SISaveandContinueBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                          60 seconds
    Scroll Element Into View                        ${SIFirstName}
    Page Should Contain Element                     ${SISavedRecordNo}
    Wait Until Page Contains Element                ${SIPFEditPhase}
    Wait Until Page Contains Element                ${SISocialStatusPanel}
    Wait Until Page Contains Element                ${SIStakeholderDetailsTab}
    Wait Until Page Contains Element                ${SIStakeholderAnalysisTab}
    Wait Until Page Contains Element                ${SIRelationshipsTab}
    Wait Until Page Contains Element                ${SIEntitiesTab}
    Wait Until Page Contains Element                ${SIVulnerabilityTab}
    Wait Until Page Contains Element                ${SIRelatedAssessmentTab}
    #Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  8
    Click Element                                   ${SITabRightArrow}
    END
    sleep       1
    Wait Until Page Contains Element                ${SIEngagementsTab}
    Wait Until Page Contains Element                ${SIInitiativesTab}
    Wait Until Page Contains Element                ${SICommitmentsTab}
    Wait Until Page Contains Element                ${SIResettlementTab}
    Wait Until Page Contains Element                ${SILandAccessTab}
    Wait Until Page Contains Element                ${SIActionsTab}
    Wait Until Page Contains Element                ${SISupportDocsTab}
    Click Element                                   ${SISocialStatusPanel}
    sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/StakeIndividual Saved and Tabs Triggered.png

#*********************************************** FR1 01-01: Capture Stakeholder Individual_OS *******************************************



#*********************************************** FR1 01-02: Update Stakeholder Details_MS ***********************************************
Update Stakeholder Details_MS
    #Log to Console      Tab Left Arrow
    FOR  ${i}     IN RANGE  1  8
    Click Element                                   ${SITabLeftArrow}
    END
    #Stakeholder Details Tab
    #Log to Console      Stakeholder Details Tab
    Click Element                                   ${SIStakeholderDetailsTab}
    #Designation
    Scroll Element Into View                        ${SIDesignation}
    #Log to Console      Designation
    ${CurrentDate}          Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Wait Until Element Is Visible                   ${SIDesignation}
    Input Text                                      ${SIDesignation}                    Test ${CurrentDate}
    #Date of Birth
    #Log to Console      Date of Birth
#    ${DoBDate}              Get Current Date        increment=00:00:10            result_format=%d/%m/%Y
#    Set Global Variable                             ${DoBDate}
    Click Element                                   ${SIDoB}
    Input Text                                      ${SIDoB}                        01/05/1985
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Designation - Date of Birth - Age.png
    #Gender
    #Log to Console      Gender
    Click Element                                   ${SIGenderDD}
#    Wait Until Element Is Enabled                   ${SIGenderMale}             5 seconds
    Click Element                                   ${SIGenderMale}
    #ID Number
    #Log to Console      ID Number
    Input Text                                      ${SIIDNumber}                       1234567890123
    #Nationality
    #Log to Console      Nationality
    Click Element                                   ${SINationalityDD}
    Wait Until Element Is Visible                   ${SINationalityAmerican}                10 seconds
    Click Element                                   ${SINationalityAmerican}
    #Work Team/Shift
    #Log to Console      Work Team/Shift
    Click Element                                   ${SIWorkTeamDD}
    Wait Until Element Is Visible                   ${SIWorkTeamB}                      20 seconds
    Click Element                                   ${SIWorkTeamB}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Gender_ID_Nation_WorkTeam.png
    #Contact Information:
    #Primary Contact Number
    #Log to Console      Primary Contact Number
    Input Text                                      ${SIPrimaryContactNo}               01112345678
    #Secondary Contact Number
    #Log to Console      Secondary Contact Number
    Input Text                                      ${SISecondaryContactNo}             01298745612
    #Email Address
    #Log to Console      Email Address
    Input Text                                      ${SIEmailAddress}                   test@email.com
    #Do not contact
    #Log to Console      Do not contact
    Wait Until Page Contains Element                ${SISocialStatusContactYes}
    Click Element                                   ${SIDoNotContact}
    Wait Until Page Contains Element                ${SISocialStatusContactNo}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Do Not Contact - Red.png
    #Alternate contact
    #Log to Console      Alternate contact
    Click Element                                   ${SIAlternateContactDD}
    Wait Until Element Is Visible                   ${SIAlternateContactSelect}             20 seconds
    Click Element                                   ${SIAlternateContactSelect}
    #Relationship to stakeholder
    #Log to Console      Relationship to stakeholder
    Click Element                                   ${SIRelationshipStakeholderDD}
    Wait Until Element Is Visible                   ${SIRelationshipStakeholderOther}       20 seconds
    Click Element                                   ${SIRelationshipStakeholderOther}
    #Alternate Contact number
    #Log to Console      Alternate Contact number
    Input Text                                      ${SIAlternateContactNo}                 02156897423
    #Alternate Email address
    #Log to Console      Alternate Email address
    Input Text                                      ${SIAlternateEmailAddress}              testAlternate@email.com
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Alternate Contact Details.png
    #Permanent Address
    Scroll Element Into View                        ${SIPermanentAddressPanel}
    Click Element                                   ${SIPermanentAddressPanel}
    sleep       1
    Click Element                                   ${SIPermanentAddressPanel}
    #Street address
    #Log to Console      Street address
    Input Text                                      ${SIPermanentStreetAddress}             Test Street1
    #City / Town
    #Log to Console      City / Town
    Input Text                                      ${SIPermanentCityTown}                  Test City1
    #State / Province
    #Log to Console      State / Province
    Input Text                                      ${SIPermanentState}                     Test State1
    #Zip/Postal code
    #Log to Console      Zip/Postal code
    Input Text                                      ${SIPermanentZIP}                       12345
    #Location
    #Log to Console      Location
    Scroll Element Into View                        ${SIPermanentLocationDD}
    Click Element                                   ${SIPermanentLocationDD}
    Wait Until Element Is Visible                   ${SIPermanentLocationSelect}            10 seconds
    Click Element                                   ${SIPermanentLocationSelect}
    #Latitude
    #Log to Console      Latitude
    Input Text                                      ${SIPermanentLatitude}                  -26.20655
    #Longitude
    #Log to Console      Longitude
    Input Text                                      ${SIPermanentLongitude}                 28.05532
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Permanent Address.png
    #Correspondence Address
    #Log to Console      Correspondence Address
    Scroll Element Into View                        ${SICorrespondenceAddressPanel}
    Click Element                                   ${SICorrespondenceAddressPanel}
    #Correspondence street address
    #Log to Console      Correspondence street address
    Input Text                                      ${SICorrespondencestreetaddress}            Test Road 2
    #Correspondence City / Town
    #Log to Console      Correspondence City / Town
    Input Text                                      ${SICorrespondenceCity}                     Test Town 2
    #Correspondence State / Province
    #Log to Console      Correspondence State / Province
    Input Text                                      ${CorrespondenceState}                      Test Province 2
    #Correspondence Zip/Postal code
    #Log to Console      Correspondence Zip/Postal code
    Input Text                                      ${CorrespondenceZip}                        98765
    #Correspondence Location
    #Log to Console      Correspondence Location
    Click Element                                   ${SICorrespondenceLocationDD}
    Click Element                                   ${SICorrespondenceLocationSelect}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Correspondence Address.png
    Click Element                                   ${SICorrespondenceAddressPanel}
    #Comments
    #Log to Console      Comments
    Scroll Element Into View                        ${SIComments}
    Sleep       1
    Input Text                                      ${SIComments}                                SI Test Comments
    #Save Button
    #Log to Console      Save Button
    Click Element                                   ${SISaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                              60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Details Tab completed.png
    #Map Panel
    #Log to Console      Map Panel
    Click Element                                   ${SIMapPanel}
    Sleep       1
    Scroll Element Into View                        ${SIFirstName}
    Sleep       2
    #Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  8
    Click Element                                   ${SITabRightArrow}
    END
    #Supporting Documents
    Sleep       1
    #Log to Console      Supporting Documents
    Click Element                                   ${SISupportDocsTab}
    Wait Until Element Is Visible                   ${SISupportDocsLink}                  20 seconds
    Click Element                                   ${SISupportDocsLink}
    #Alert should be present
    Switch Window
    sleep    1 second
    Wait Until Element Is Visible                   ${AuditSupportDocUrl}                           20 seconds
    Input Text                                      ${AuditSupportDocUrl}                           www.isomertix.com
    Input Text                                      ${AuditSupportDocURLTitle}                      Isometrix
    Click Element                                   ${AuditSupportDocURLAdd}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Supporting Documents Link Added.png
    sleep    1 second
    Select Frame                        ${iFrame}
    #Save supporting documents
    #Log to Console      Save supporting documents
    Click Element                                   ${SISavesupportingdocuments}
#    Wait Until Element Is Visible                   ${RecordSaved}                              60 seconds
#    Wait Until Page Contains Element                ${SISupportDocsLinkAdded}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Supporting Documents Added.png

#*********************************************** FR1 01-02: Update Stakeholder Details_AS1 ***********************************************
Update Stakeholder Details_AS1
    #Log to Console      Tab Left Arrow
    FOR  ${i}     IN RANGE  1  8
    Click Element                                   ${SITabLeftArrow}
    END
    #Stakeholder Details Tab
    #Log to Console      Stakeholder Details Tab
    Click Element                                   ${SIStakeholderDetailsTab}
    #Designation
    Scroll Element Into View                        ${SIDesignation}
    #Log to Console      Designation
    ${CurrentDate}          Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Wait Until Element Is Visible                   ${SIDesignation}
    Input Text                                      ${SIDesignation}                    Test_AS1 ${CurrentDate}
    #Date of Birth
    #Log to Console      Date of Birth
#    ${DoBDate}              Get Current Date        increment=00:00:10            result_format=%d/%m/%Y
#    Set Global Variable                             ${DoBDate}
    Click Element                                   ${SIDoB}
    Input Text                                      ${SIDoB}                        01/05/1980
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Designation - Date of Birth - Age.png
    #Gender
    #Log to Console      Gender
    Click Element                                   ${SIGenderDD}
    Click Element                                   ${SIGenderMale}
    #ID Number
    #Log to Console      ID Number
    Input Text                                      ${SIIDNumber}                       123456789012345
    #Nationality
    #Log to Console      Nationality
    Click Element                                   ${SINationalityDD}
    Wait Until Element Is Visible                   ${SINationalityAmerican}                10 seconds
    Click Element                                   ${SINationalityAmerican}
    #Work Team/Shift
    #Log to Console      Work Team/Shift
    Click Element                                   ${SIWorkTeamDD}
    Wait Until Element Is Visible                   ${SIWorkTeamB}                      20 seconds
    Click Element                                   ${SIWorkTeamB}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Gender_ID_Nation_WorkTeam.png
    #Contact Information:
    #Primary Contact Number
    #Log to Console      Primary Contact Number
    Input Text                                      ${SIPrimaryContactNo}               011123456781
    #Secondary Contact Number
    #Log to Console      Secondary Contact Number
    Input Text                                      ${SISecondaryContactNo}             012987456121
    #Email Address
    #Log to Console      Email Address
    Input Text                                      ${SIEmailAddress}                   testAS1@email.com
    #Permanent Address
    Scroll Element Into View                        ${SIPermanentAddressPanel}
    Click Element                                   ${SIPermanentAddressPanel}
    sleep       1
    Click Element                                   ${SIPermanentAddressPanel}
    #Street address
    #Log to Console      Street address
    Input Text                                      ${SIPermanentStreetAddress}             Test Street1
    #City / Town
    #Log to Console      City / Town
    Input Text                                      ${SIPermanentCityTown}                  Test City1
    #State / Province
    #Log to Console      State / Province
    Input Text                                      ${SIPermanentState}                     Test State1
    #Zip/Postal code
    #Log to Console      Zip/Postal code
    Input Text                                      ${SIPermanentZIP}                       12345
    #Location
    #Log to Console      Location
    Scroll Element Into View                        ${SIPermanentLocationDD}
    sleep       1
    Click Element                                   ${SIPermanentLocationDD}
    Wait Until Element Is Visible                   ${SIPermanentLocationSelect}            10 seconds
    Click Element                                   ${SIPermanentLocationSelect}
    #Latitude
    #Log to Console      Latitude
    Input Text                                      ${SIPermanentLatitude}                  -26.20655
    #Longitude
    #Log to Console      Longitude
    Input Text                                      ${SIPermanentLongitude}                 28.05532
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Permanent Address.png
    #Correspondence Address
    #Log to Console      Correspondence Address
    Scroll Element Into View                        ${SICorrespondenceAddressPanel}
    Click Element                                   ${SICorrespondenceAddressPanel}
    #Correspondence street address
    #Log to Console      Correspondence street address
    Input Text                                      ${SICorrespondencestreetaddress}            Test Road 2
    #Correspondence City / Town
    #Log to Console      Correspondence City / Town
    Input Text                                      ${SICorrespondenceCity}                     Test Town 2
    #Correspondence State / Province
    #Log to Console      Correspondence State / Province
    Input Text                                      ${CorrespondenceState}                      Test Province 2
    #Correspondence Zip/Postal code
    #Log to Console      Correspondence Zip/Postal code
    Input Text                                      ${CorrespondenceZip}                        98765
    #Correspondence Location
    #Log to Console      Correspondence Location
    Click Element                                   ${SICorrespondenceLocationDD}
    Click Element                                   ${SICorrespondenceLocationSelect}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Correspondence Address.png
    Click Element                                   ${SICorrespondenceAddressPanel}
    #Comments
    #Log to Console      Comments
    Scroll Element Into View                        ${SIComments}
    Sleep       2
    Input Text                                      ${SIComments}                                SI Test Comments
    #Save Button
    #Log to Console      Save Button
    Click Element                                   ${SISaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                              60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Details Tab completed.png
    #Map Panel
    #Log to Console      Map Panel
    Click Element                                   ${SIMapPanel}
    Sleep       1
    Scroll Element Into View                        ${SIFirstName}
    Sleep       1
    #Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  8
    Click Element                                   ${SITabRightArrow}
    END
    #Supporting Documents
    #Log to Console      Supporting Documents
    Click Element                                   ${SISupportDocsTab}
    Wait Until Element Is Visible                   ${SISupportDocsLink}                  20 seconds
    Click Element                                   ${SISupportDocsLink}
    #Alert should be present
    Switch Window
    sleep    1 second
    Wait Until Element Is Visible                   ${AuditSupportDocUrl}                           20 seconds
    Input Text                                      ${AuditSupportDocUrl}                           www.isomertix.com
    Input Text                                      ${AuditSupportDocURLTitle}                      Isometrix
    Click Element                                   ${AuditSupportDocURLAdd}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Supporting Documents Link Added.png
    sleep    1 second
    Select Frame                        ${iFrame}
    #Save supporting documents
    #Log to Console      Save supporting documents
    Click Element                                   ${SISavesupportingdocuments}
    Wait Until Element Is Visible                   ${RecordSaved}                              60 seconds
    Wait Until Page Contains Element                ${SISupportDocsLinkAdded}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Supporting Documents Added.png

#*********************************************** FR1 01-03: Update Stakeholder Analysis_MS ***********************************************
Update Stakeholder Analysis
    #Log to Console      Tab Left Arrow
    FOR  ${i}     IN RANGE  1  9
    Click Element                                   ${SITabLeftArrow}
    END
    #Stakeholder Analysis Tab
    #Log to Console      Stakeholder Analysis Tab
    Click Element                                   ${SIAnalysisTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Stakeholder Analysis Tab.png
    #Stakeholder interest
    #Log to Console      Stakeholder interest
    Click Element                                   ${SIStakeholderInterestDD}
    Wait Until Element Is Visible                   ${SIStakeholderInterestVeryHigh}            10 seconds
    Click Element                                   ${SIStakeholderInterestVeryHigh}
    #Stakeholder influence
    #Log to Console      Stakeholder influence
    Click Element                                   ${SIStakeholderinfluenceDD}
    Wait Until Element Is Visible                   ${SIStakeholderinfluenceHigh}               10 seconds
    Click Element                                   ${SIStakeholderinfluenceHigh}
    Page Should Contain Element                     ${SIAnalysisGuidelines}
    Page Should Contain Element                     ${SIAnalysisEngageStakeholderImage}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Analysis interest_influence - Guidelines_Engage Image.png
    #Stakeholder support
    #Log to Console      Stakeholder support
    Click Element                                   ${SIAnalysisStakeholderSupportDD}
    Wait Until Element Is Visible                   ${SIAnalysisStakeholderSupportUnknown}           10 seconds
    Click Element                                   ${SIAnalysisStakeholderSupportUnknown}
    Page Should Contain Element                     ${SIAnalysisSupportUnknownImage}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Analysis support - Unknown Image.png
    #Comments
    #Log to Console      Comments
    Input Text                                      ${SIAnalysisComments}                       Test SI Analysis 1
    #Impact on stakeholder
    #Log to Console      Impact on stakeholder
    Click Element                                   ${SIAnalysisImpactStakeholderDD}
    Wait Until Element Is Visible                   ${SIAnalysisImpactStakeholderExpand1}            10 seconds
    Click Element                                   ${SIAnalysisImpactStakeholderExpand1}
    Click Element                                   ${SIAnalysisImpactStakeholderSelect}
    Click Element                                   ${SIAnalysisImpactStakeholderDDArrow}
    #Save Button
    #Log to Console      Save Button
    Click Element                                   ${SISaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                              60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Update Stakeholder Analysis completed.png
