*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Audits/vars.robot
Resource    ../../Resources/StakeholderEntity/SE_Vars.robot
Resource    ../../Resources/StakeholderIndividual/SI_vars.robot
Resource    ../../Resources/StakeholderEntity/SE_Keywords.robot
Library     DateTime

*** Keywords ***
#*********************************************** FR1 01-01: Capture Stakeholder Entity_MS *******************************************
Stakeholder Entity Enter Details_MS
    #Process Flow
    #Log to Console      Process Flow Button
    Wait Until Page Contains Element                ${SEProfileTab}
    Wait Until Element Is Visible                   ${SEProcessFlowBtn}                   60 seconds
    Click Element                                   ${SEProcessFlowBtn}
    #Add Phase
    #Log to Console      Stakeholder Entity in Add Phase
    Wait Until Page Contains Element                ${SEPFAddPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Add Phase.png
    #Entity Type
    #Log to Console      Entity Type
    Click Element                                   ${SEEntityTypeDD}
    Sleep       5
    Wait Until Element Is Visible                   ${SEEntityTypeCompanySite}            10 seconds
    Click Element                                   ${SEEntityTypeCompanySite}
    #Entity name
    #Log to Console      Entity name
    Input Text                                      ${SEEntityName}                       Stake_Entity
    #Known as
    #Log to Console      Known as
    Input Text                                      ${SEKnownAs}                          V4.16.9
    #Industry
    #Log to Console      Industry
    Click Element                                   ${SEIndustryDD}
    Wait Until Element Is Visible                   ${SEIndustryManufacturing}            60 seconds
    Click Element                                   ${SEIndustryManufacturing}
    #Entity description
    #Log to Console      Entity description
    ${CurrentDate}          Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${SEEntityDescription}                FR1 01-01: Capture Stakeholder Entity_MS ${CurrentDate}
    #Relationship owner
    #Log to Console      Relationship owner
    Click Element                                   ${SERelationshipOwnerDD}
    Wait Until Element Is Visible                   ${SERelationshipOwner2Manager}        60 seconds
    Click Element                                   ${SERelationshipOwner2Manager}
    #Stakeholder categories
    #Log to Console      Stakeholder categories
    Click Element                                   ${SEStakeholderCategoriesCommunity}
    Sleep       1
    Scroll Element Into View                        ${SESavetocontinueBtn}
    Sleep       1
    #Business Unit
    #Log to Console      Business Unit
    Click Element                                   ${SEBusUnitExpand1}
    Wait Until Element Is Visible                   ${SEBusUnitExpand2}                 10 seconds
    Click Element                                   ${SEBusUnitExpand2}
    Wait Until Element Is Visible                   ${SEBusUnitVictorySite}             10 seconds
    Click Element                                   ${SEBusUnitVictorySite}
    #Impact Types
    #Log to Console      Impact Types
    Wait Until Element Is Visible                   ${SEImpactTypeBusRisk}                  60 seconds
    Click Element                                   ${SEImpactTypeSelectAll}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Impact Types.png
    #Save and Continue
    #Log to Console      Save and Continue
    Click Element                                   ${SESavetocontinueBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                          60 seconds
    Scroll Element Into View                        ${SEEntityTypeDD}
    Page Should Contain Element                     ${SESavedRecordNo}
    Page Should Contain Element                     ${SEPFEditPhase}
    Page Should Contain Element                     ${SEStatusActive}
    Page Should Contain Element                     ${SESocialStatusPanel}
    Click Element                                   ${SESocialStatusPanel}
    Page Should Contain Element                     ${SEStakeholderDetailsTab}
    Page Should Contain Element                     ${SEStakeholderAnalysisTab}
    Page Should Contain Element                     ${SEMembersTab}
    Page Should Contain Element                     ${SEAssociatedEntitiesTab}
    Page Should Contain Element                     ${SERelatedAssessmentTab}
    Page Should Contain Element                     ${SEEngagementsTab}
    #Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  4
    Click Element                                   ${SETabRightArrow}
    END
    sleep       1
    Page Should Contain Element                     ${SEGrievancesTab}
    Page Should Contain Element                     ${SERelatedIncidentsTab}
    Page Should Contain Element                     ${SEInitiativesTab}
    #Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  6
    Click Element                                   ${SETabRightArrow}
    END
    sleep       1
    Page Should Contain Element                     ${SECommitmentsTab}
    Page Should Contain Element                     ${SEVulnerabilityTab}
    Page Should Contain Element                     ${SEActionsTab}
    Page Should Contain Element                     ${SESupportDocsTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Saved and Tabs Triggered.png

FR1_StakeEntity_LoggedNotification
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
    #Log to Console      Stakeholder Entity Logged Notification
    sleep       3 seconds
    Wait Until Element Is Visible       ${SELoggedSubject}          60 seconds
    Click Element                       ${SELoggedSubject}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Logged Email Selection.png
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
    #Log to Console      Wait for Stakeholder Entity Record
    set selenium implicit wait    50 seconds
    sleep       20 seconds
    Select Frame                        ${iFrame}
    Wait Until Element Is Visible       ${SEProcessFlowBtn}           60 seconds
    Click Element                       ${SEProcessFlowBtn}
    Wait Until Page Contains Element    ${SEPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Record Opened.png

#*********************************************** FR1 01-02: Capture Stakeholder Entity_AS *******************************************
Stakeholder Entity Enter Details_AS
    #Process Flow
    #Log to Console      Process Flow Button
    Wait Until Page Contains Element                ${SEProfileTab}
    Wait Until Element Is Visible                   ${SEProcessFlowBtn}                   60 seconds
    Click Element                                   ${SEProcessFlowBtn}
    #Add Phase
    #Log to Console      Stakeholder Entity in Add Phase
    Wait Until Page Contains Element                ${SEPFAddPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Add Phase.png
    #Entity Type
    #Log to Console      Entity Type
    Click Element                                   ${SEEntityTypeDD}
    Sleep       5
    Wait Until Element Is Visible                   ${SEEntityTypeCorporation}            10 seconds
    Click Element                                   ${SEEntityTypeCorporation}
    #Entity name
    #Log to Console      Entity name
    Input Text                                      ${SEEntityName}                       Stake_Entity AS1
    #Known as
    #Log to Console      Known as
    Input Text                                      ${SEKnownAs}                          V4.16.9
    #Industry
    #Log to Console      Industry
    Click Element                                   ${SEIndustryDD}
    Wait Until Element Is Visible                   ${SEIndustryMining}                   60 seconds
    Click Element                                   ${SEIndustryMining}
    #Entity description
    #Log to Console      Entity description
    ${CurrentDate}          Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${SEEntityDescription}                FR1 01-01: Capture Stakeholder Entity_AS ${CurrentDate}
    #Relationship owner
    #Log to Console      Relationship owner
    Click Element                                   ${SERelationshipOwnerDD}
    Wait Until Element Is Visible                   ${SERelationshipOwner2Manager}        60 seconds
    Click Element                                   ${SERelationshipOwner2Manager}
    #Stakeholder categories
    #Log to Console      Stakeholder categories
    Click Element                                   ${SEStakeholderCategoriesMedia}
    Click Element                                   ${SEStakeholderCategoriesNGO}
    Scroll Element Into View                        ${SESavetocontinueBtn}
    Sleep       1
    #Business Unit
    #Log to Console      Business Unit
    Click Element                                   ${SEBusUnitGlobalCompany}
    Click Element                                   ${SEBusUnitExpand1}
    Wait Until Element Is Visible                   ${SEBusUnitExpand2}                     10 seconds
    Click Element                                   ${SEBusUnitSA}
    Click Element                                   ${SEBusUnitExpand2}
    Wait Until Element Is Visible                   ${SEBusUnitVictorySite}                 10 seconds
    Click Element                                   ${SEBusUnitVictorySite}
    #Impact Types
    #Log to Console      Impact Types
    Wait Until Element Is Visible                   ${SEImpactTypeBusRisk}                  60 seconds
    Click Element                                   ${SEImpactTypeSelectAll}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Impact Types.png
    #Save and Continue
    #Log to Console      Save and Continue
    Click Element                                   ${SESavetocontinueBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                          60 seconds
    Scroll Element Into View                        ${SEEntityTypeDD}
    Page Should Contain Element                     ${SESavedRecordNo}
    Page Should Contain Element                     ${SEPFEditPhase}
    Page Should Contain Element                     ${SEStatusActive}
    Page Should Contain Element                     ${SEStakeholderDetailsTab}
    Page Should Contain Element                     ${SEStakeholderAnalysisTab}
    Page Should Contain Element                     ${SEMembersTab}
    Page Should Contain Element                     ${SEAssociatedEntitiesTab}
    Page Should Contain Element                     ${SERelatedAssessmentTab}
    #Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  6
    Click Element                                   ${SETabRightArrow}
    END
    sleep       1
    Page Should Contain Element                     ${SEGrievancesTab}
    Page Should Contain Element                     ${SERelatedIncidentsTab}
    Page Should Contain Element                     ${SEActionsTab}
    Page Should Contain Element                     ${SESupportDocsTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Saved and Tabs Triggered.png

#*********************************************** FR1 01-03: Capture Stakeholder Entity_AS2 *******************************************
Stakeholder Entity Enter Details_AS2
    #Process Flow
    #Log to Console      Process Flow Button
    Wait Until Page Contains Element                ${SEProfileTab}
    Wait Until Element Is Visible                   ${SEProcessFlowBtn}                   60 seconds
    Click Element                                   ${SEProcessFlowBtn}
    #Add Phase
    #Log to Console      Stakeholder Entity in Add Phase
    Wait Until Page Contains Element                ${SEPFAddPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Add Phase.png
    #Entity Type
    #Log to Console      Entity Type
    Click Element                                   ${SEEntityTypeDD}
#    Sleep       5
    Wait Until Element Is Visible                   ${SEEntityTypeGovernOrg}              30 seconds
    Click Element                                   ${SEEntityTypeGovernOrg}
    #Entity name
    #Log to Console      Entity name
    Input Text                                      ${SEEntityName}                       Stake_Entity AS2
    #Known as
    #Log to Console      Known as
    Input Text                                      ${SEKnownAs}                          V4.16.9
    #Industry
    #Log to Console      Industry
    Click Element                                   ${SEIndustryDD}
    Wait Until Element Is Visible                   ${SEIndustryOil}                      60 seconds
    Click Element                                   ${SEIndustryOil}
    #Entity description
    #Log to Console      Entity description
    ${CurrentDate}          Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${SEEntityDescription}                FR1 01-03: Capture Stakeholder Entity_AS2 ${CurrentDate}
    #Relationship owner
    #Log to Console      Relationship owner
    Click Element                                   ${SERelationshipOwnerDD}
    Wait Until Element Is Visible                   ${SERelationshipOwner2Manager}        60 seconds
    Click Element                                   ${SERelationshipOwner2Manager}
    #Stakeholder categories
    #Log to Console      Stakeholder categories
    Click Element                                   ${SEStakeholderCategoriesContractor}
    Click Element                                   ${SEStakeholderCategoriesSupplierVendor}
    Scroll Element Into View                        ${SESavetocontinueBtn}
    Sleep       1
    #Business Unit
    #Log to Console      Business Unit
    Click Element                                   ${SEBusUnitGlobalCompany}
    Click Element                                   ${SEBusUnitExpand1}
    Wait Until Element Is Visible                   ${SEBusUnitExpand2}                     10 seconds
    Click Element                                   ${SEBusUnitSA}
    Click Element                                   ${SEBusUnitExpand2}
    Wait Until Element Is Visible                   ${SEBusUnitVictorySite}                 10 seconds
    Click Element                                   ${SEBusUnitVictorySite}
    #Impact Types
    #Log to Console      Impact Types
    Sleep       2
    Wait Until Element Is Visible                   ${SEImpactTypeBusRisk}                  60 seconds
    Click Element                                   ${SEImpactTypeSelectAll}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Impact Types.png
    #Save and Continue
    #Log to Console      Save and Continue
    Click Element                                   ${SESavetocontinueBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                          60 seconds
    Scroll Element Into View                        ${SEEntityTypeDD}
    Page Should Contain Element                     ${SESavedRecordNo}
    Page Should Contain Element                     ${SEPFEditPhase}
    Page Should Contain Element                     ${SEStatusActive}
    Page Should Contain Element                     ${SEStakeholderDetailsTab}
    Page Should Contain Element                     ${SEStakeholderAnalysisTab}
    Page Should Contain Element                     ${SEMembersTab}
    Page Should Contain Element                     ${SEAssociatedEntitiesTab}
    Page Should Contain Element                     ${SEContractorTab}
    #Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  5
    Click Element                                   ${SETabRightArrow}
    END
    sleep       1
    Page Should Contain Element                     ${SERelatedAssessmentTab}
    Page Should Contain Element                     ${SEGrievancesTab}
    Page Should Contain Element                     ${SERelatedIncidentsTab}
    #Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  3
    Click Element                                   ${SETabRightArrow}
    END
    sleep       1
    Page Should Contain Element                     ${SEActionsTab}
    Page Should Contain Element                     ${SESupportDocsTab}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Saved and Tabs Triggered.png

#*********************************************** FR1 02: Update Stakeholder Entity Details_Community_MS *******************************************
Update Stakeholder Entity Details_Community
    #Log to Console      Tab Left Arrow
    FOR  ${i}     IN RANGE  1  11
    Click Element                                   ${SETabLeftArrow}
    END
    sleep       1
    #Stakeholder Details Tab
    #Log to Console      Stakeholder Details Tab
    Wait Until Element Is Visible                   ${SEStakeholderDetailsTab}                  60 seconds
    Click Element                                   ${SEStakeholderDetailsTab}
    #Phone number
    #Log to Console      Phone number
    Input Text                                      ${SEDetailsPhoneNo}                         011 787 1234
    #Email Address
    #Log to Console      Email Address
    Input Text                                      ${SEDetailsEmail}                           test@email.com
    #City Panel
    #Log to Console      City Panel
    Click Element                                   ${SEDetailsCityPanel}
    Sleep       1
    Click Element                                   ${SEDetailsCityPanel}
    #City Street Address
    #Log to Console      City - Street Address
    Input Text                                      ${SEDetailsCityStreetAdd}                   Main Road
    #City / Town
    #Log to Console      City - City / Town
    Input Text                                      ${SEDetailsCityTown}                        Johannesburg
    #State / Province
    #Log to Console      City - State / Province
    Input Text                                      ${SEDetailsCityState}                       Gauteng
    #Zip /Postal code
    #Log to Console      City - Zip /Postal code
    Input Text                                      ${SEDetailsCityZIP}                         2029
    #Location
    #Log to Console      City - Location
    Scroll Element Into View                        ${SEDetailsCityLocationDD}
    Click Element                                   ${SEDetailsCityLocationDD}
    Wait Until Element Is Visible                   ${SEDetailsCityLocationSA}                  10 seconds
    Click Element                                   ${SEDetailsCityLocationSA}
    #Latitude
    #Log to Console      City - Latitude
    Input Text                                      ${SEDetailsCityLatitude}                    -26.20655
    #Longitude
    #Log to Console      City - Longitude
    Input Text                                      ${SEDetailsCityLongitude}                   28.05532
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity City Address.png
    #Log to Console      City Panel
    Click Element                                   ${SEDetailsCityPanel}
    #Correspondence Address
    #Log to Console      Correspondence Address
    Scroll Element Into View                        ${SECorrespondenceAddressPanel}
    Click Element                                   ${SECorrespondenceAddressPanel}
    #Correspondence street address
    #Log to Console      Correspondence street address
    Input Text                                      ${SECorrespondencestreetaddress}            Test Road 2
    #Correspondence City / Town
    #Log to Console      Correspondence City / Town
    Input Text                                      ${SECorrespondenceCity}                     Test Town 2
    #Correspondence State / Province
    #Log to Console      Correspondence State / Province
    Input Text                                      ${SECorrespondenceState}                    Test Province 2
    #Correspondence Zip/Postal code
    #Log to Console      Correspondence Zip/Postal code
    Input Text                                      ${SECorrespondenceZip}                      98765
    #Correspondence Location
    #Log to Console      Correspondence Location
    Click Element                                   ${SECorrespondenceLocationDD}
    Click Element                                   ${SECorrespondenceLocationSelect}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Correspondence Address.png
    Click Element                                   ${SECorrespondenceAddressPanel}
    #Comments
    #Log to Console      Comments
    Scroll Element Into View                        ${SEDetailsComments}
    Sleep       1
    Input Text                                      ${SEDetailsComments}                         SE Test Comments
    #Save Button
    #Log to Console      Save Button
    Click Element                                   ${SEDetailsSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                              60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Details Tab completed.png
    #Map Panel
    #Log to Console      Map Panel
    Click Element                                   ${SEDetailsMapPanel}
    Sleep       1
    Scroll Element Into View                        ${SEEntityTypeDD}
    Sleep       2
    #Log to Console      Tab Right Arrow
    FOR  ${i}     IN RANGE  1  10
    Click Element                                   ${SETabRightArrow}
    END

#*********************************************** FR1 02: Update Stakeholder Entity Details_Contractor_MS *******************************************
Update Stakeholder Entity Details_Community_Contractor
    #Log to Console      Tab Left Arrow
    FOR  ${i}     IN RANGE  1  11
    Click Element                                   ${SETabLeftArrow}
    END
    sleep       1
    #Stakeholder Details Tab
    #Log to Console      Stakeholder Details Tab
    Wait Until Element Is Visible                   ${SEStakeholderDetailsTab}                  60 seconds
    Click Element                                   ${SEStakeholderDetailsTab}
    #Phone number
    #Log to Console      Phone number
    Input Text                                      ${SEDetailsPhoneNo}                         011 787 1234
    #Email Address
    #Log to Console      Email Address
    Input Text                                      ${SEDetailsEmail}                           test@email.com
    #City Panel
    #Log to Console      City Panel
    Click Element                                   ${SEDetailsCityPanel}
    Sleep       1
    Click Element                                   ${SEDetailsCityPanel}
    #City Street Address
    #Log to Console      City - Street Address
    Input Text                                      ${SEDetailsCityStreetAdd}                   Main Road
    #City / Town
    #Log to Console      City - City / Town
    Input Text                                      ${SEDetailsCityTown}                        Johannesburg
    #State / Province
    #Log to Console      City - State / Province
    Input Text                                      ${SEDetailsCityState}                       Gauteng
    #Zip /Postal code
    #Log to Console      City - Zip /Postal code
    Input Text                                      ${SEDetailsCityZIP}                         2029
    #Location
    #Log to Console      City - Location
    Scroll Element Into View                        ${SEDetailsCityLocationDD}
    Click Element                                   ${SEDetailsCityLocationDD}
    Wait Until Element Is Visible                   ${SEDetailsCityLocationSA}                  10 seconds
    Click Element                                   ${SEDetailsCityLocationSA}
    #Latitude
    #Log to Console      City - Latitude
    Input Text                                      ${SEDetailsCityLatitude}                    -26.20655
    #Longitude
    #Log to Console      City - Longitude
    Input Text                                      ${SEDetailsCityLongitude}                   28.05532
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity City Address.png
    #Log to Console      City Panel
    Click Element                                   ${SEDetailsCityPanel}
    #Correspondence Address
    #Log to Console      Correspondence Address
    Scroll Element Into View                        ${SECorrespondenceAddressPanel}
    Click Element                                   ${SECorrespondenceAddressPanel}
    #Correspondence street address
    #Log to Console      Correspondence street address
    Input Text                                      ${SECorrespondencestreetaddress}            Test Road 2
    #Correspondence City / Town
    #Log to Console      Correspondence City / Town
    Input Text                                      ${SECorrespondenceCity}                     Test Town 2
    #Correspondence State / Province
    #Log to Console      Correspondence State / Province
    Input Text                                      ${SECorrespondenceState}                    Test Province 2
    #Correspondence Zip/Postal code
    #Log to Console      Correspondence Zip/Postal code
    Input Text                                      ${SECorrespondenceZip}                      98765
    #Correspondence Location
    #Log to Console      Correspondence Location
    Click Element                                   ${SECorrespondenceLocationDD}
    Click Element                                   ${SECorrespondenceLocationSelect}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Correspondence Address.png
    Click Element                                   ${SECorrespondenceAddressPanel}
    #Comments
    #Log to Console      Comments
    Scroll Element Into View                        ${SEDetailsComments}
    Sleep       1
    Input Text                                      ${SEDetailsComments}                         SE Test Comments
    #Map Panel
    #Log to Console      Map Panel
    Click Element                                   ${SEDetailsMapPanel}
    Sleep       1
    Scroll Element Into View                        ${SEEntityTypeDD}
    Sleep       2

Update Stakeholder Entity Details_Contractor
    #Contractor or Supplier Manager
    #Log to Console      Contractor or Supplier Manager
    Click Element                                   ${SEContractorTab}
    Sleep       1
    #Status
    #Log to Console      Status
    Scroll Element Into View                        ${SEContractorDocumentsPanel}
    Sleep       1
    Page Should Contain Element                     ${SEContractorQuestionnairePanel}
    Page Should Contain Element                     ${SEContractorDocumentsPanel}
    Scroll Element Into View                        ${SEContractorStatusDD}
    Click Element                                   ${SEContractorStatusDD}
    Wait Until Element Is Visible                   ${SEContractorStatusCompliant}                     10 seconds
    Click Element                                   ${SEContractorStatusCompliant}
    Page Should Contain Element                     ${SEContractorOrdersPanel}
    Scroll Element Into View                        ${SEContractorOrdersPanel}
    Sleep       1
    Scroll Element Into View                        ${SEContractorStatusDD}
    #Fax
    #Log to Console      Fax
    Input Text                                      ${SEContractorFax}                                  0111002000
    #Email
    #Log to Console      Email
    Input Text                                      ${SEContractorEmail}                                contractortest@email.co.za
    #About
    #Log to Console      About
    Input Text                                      ${SEContractorAbout}                                FR1 02: Update Stakeholder Entity Details_Contractor_MS
    #Services
    #Log to Console      Services
    Input Text                                      ${SEContractorServices}                             FR1 02: Update Stakeholder Entity Details_Contractor_MS
    #Main Contact
    #Log to Console      Main Contact
    Input Text                                      ${SEContractorMainContact}                          FirstName LastName
    #Main Contact Phone
    #Log to Console      Main Contact Phone
    Input Text                                      ${SEContractorMainContactPhone}                     0123216547
    #Main Contact Email
    #Log to Console      Main Contact Email
    Input Text                                      ${SEContractorMainContactEmail}                     maintext@email.co.uk
    Scroll Element Into View                        ${SEContractorOrdersPanel}
    Sleep       1
    #Main Contact Individual
    Click Element                                   ${SEContractorMainContactIndividualDD}
    Wait Until Element Is Visible                   ${SEContractorMainContactIndividualDavidAbel}        20 seconds
    Click Element                                   ${SEContractorMainContactIndividualDavidAbel}
    #Site company
    #Log to Console      Site company
    Click Element                                   ${SEContractorSiteCompanyDD}
    Wait Until Element Is Visible                   ${SEContractorSiteCompanyNo}                         10 seconds
    Click Element                                   ${SEContractorSiteCompanyNo}
    Sleep       1
    Click Element                                   ${SEContractorSiteCompanyDD}
    Click Element                                   ${SEContractorSiteCompanyYes}
    #Vendor nr
    #Log to Console      Vendor nr
    Input Text                                      ${SEContractorVendornr}                              123654789
    #Save button
    #Log to Console      Save button
    Click Element                                   ${SEDetailsSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                              60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Contractor Tab completed.png

#*********************************************** FR1 03: Update Stakeholder Entity Analysis_MS *******************************************
Update Stakeholder Entity Analysis
    #Log to Console      Tab Left Arrow
    Sleep       1
    FOR  ${i}     IN RANGE  1  11
    Click Element                                   ${SETabLeftArrow}
    END
    sleep       1
    #Stakeholder Analysis Tab
    #Log to Console      Stakeholder Analysis Tab
    Wait Until Element Is Visible                   ${SEStakeholderAnalysisTab}                  60 seconds
    Click Element                                   ${SEStakeholderAnalysisTab}
    #Stakeholder interest
    #Log to Console      Stakeholder interest
    Page Should Contain Element                     ${SEAnalysisTopicAssPanel}
    Click Element                                   ${SEAnalysisStakeInterestDD}
    Wait Until Element Is Visible                   ${SEAnalysisStakeInterestHigh}               20 seconds
    Click Element                                   ${SEAnalysisStakeInterestHigh}
    #Stakeholder influence
    #Log to Console      Stakeholder influence
    Click Element                                   ${SEAnalysisStakeInfluenceDD}
    Wait Until Element Is Visible                   ${SEAnalysisStakeInfluencModerate}           20 seconds
    Click Element                                   ${SEAnalysisStakeInfluencModerate}
    #Log to Console      Tooltip: Engage actively with this stakeholder
    Page Should Contain Element                     ${SEAnalysisEngageActivelyImage}
    Page Should Contain Element                     ${SEAnalysisGuidelinesPanel}
    #Stakeholder support
    #Log to Console      Stakeholder support
    Click Element                                   ${SEAnalysisStakeSupportDD}
    Wait Until Element Is Visible                   ${SEAnalysisStakeSupportNeutral}             20 seconds
    Click Element                                   ${SEAnalysisStakeSupportNeutral}
    #Log to Console      Tooltip: Neutral support is given from this stakeholder
    Page Should Contain Element                     ${SEAnalysisNeutralSupportImage}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Interest_Influence_Support Selections.png
    #Comments
    #Log to Console      Comments
    Input Text                                      ${SEAnalysisComments}                        FR1_03_Update Stakeholder Entity Analysis
    #Impact on stakeholder
    #Log to Console      Impact on stakeholder
    Click Element                                   ${SEAnalysisImpactonStakeDD}
    Wait Until Element Is Visible                   ${SEAnalysisImpactonStakeExpand1}            20 seconds
    Click Element                                   ${SEAnalysisImpactonStakeExpand1}
    Sleep       1
    Wait Until Element Is Visible                   ${SEAnalysisImpactonStakeSelect}             20 seconds
    Click Element                                   ${SEAnalysisImpactonStakeSelect}
    Click Element                                   ${SEAnalysisImpactonStakeDDArrow}
    #Save Button
    #Log to Console      Save Button
    Click Element                                   ${SEAnalysisSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                              60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Analysis Tab Updated.png

#*********************************************** FR2 01: Capture Topic Issue Assessment_MS *******************************************
Capture Topic Issue Assessment
    #Log to Console      Tab Left Arrow
    Sleep       1
    FOR  ${i}     IN RANGE  1  3
    Click Element                                   ${SETabLeftArrow}
    END
    sleep       1
    #Topic/Issue Assessment panel
    #Log to Console      Topic/Issue Assessment panel
    Page Should Contain Element                     ${SEAnalysisTopicAssPanel}
    Click Element                                   ${SEAnalysisTopicAssPanel}
    Sleep       1
    Scroll Element Into View                        ${SETopicIssueInLineEditText}
    Sleep       1
    Wait Until Element Is Visible                   ${SETopicIssueNoResults}                     30 seconds
    #Topic/Issue Assessment Add
    #Log to Console      Topic/Issue Assessment Add
    Click Element                                   ${SETopicIssueAddBtn}
    Sleep       2
    Wait Until Element Is Visible                   ${SETopicIssueRecordVisible}                 30 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Topic/Issue Assessment Record Visible.png
    #Topic/Issue
    #Log to Console      Topic/Issue
    Click Element                                   ${SETopicIssueDD}
    Wait Until Element Is Visible                   ${SETopicIssueExpand1}                       30 seconds
    Click Element                                   ${SETopicIssueExpand1}
    Wait Until Element Is Visible                   ${SETopicIssueSelect}                        30 seconds
    Click Element                                   ${SETopicIssueSelect}
    #Influence
    #Log to Console      Influence - Moderate
    Click Element                                   ${SETopicIssueInfluenceDD}
    Wait Until Element Is Visible                   ${SETopicIssueInfluencModerate}              30 seconds
    Click Element                                   ${SETopicIssueInfluencModerate}
    #Influence
    #Log to Console      Interest - Low
    Click Element                                   ${SETopicIssueInterestDD}
    Wait Until Element Is Visible                   ${SETopicIssueInterestLow}                   30 seconds
    Click Element                                   ${SETopicIssueInterestLow}
    #Assessment
    #Log to Console      Assessment - Monitor
    Page Should Contain Element                     ${SETopicIssueAssessmentMonitor}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Topic/Issue Assessment - Monitor.png
    #Save Button
    #Log to Console      Save Button
    Click Element                                   ${SETopicIssueSaveTick}
    Wait Until Element Is Visible                   ${RecordSaved}                               60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Topic/Issue Assessment Record Saved.png

#*********************************************** FR3 01: Capture Related Stakeholders_MS *******************************************
Capture Related Stakeholders_MS
    SLeep       1
    #Log to Console      Tab Left Arrow
    FOR  ${i}     IN RANGE  1   11
    Click Element                                   ${SETabLeftArrow}
    END
    Sleep       1
    #Members Tab
    #Log to Console      Members Tab
    Click Element                                   ${SEMembersTab}
    Page Should Contain Element                     ${SERelationsCreateNewIndividualBtn}
    Wait Until Element Is Visible                   ${SERelationshipAddBtn}                 20 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Members Tab.png
    #Add Button
    #Log to Console      Add Button
    Scroll Element Into View                        ${SITopicInLineEditText}
    Sleep       1
    Click Element                                   ${SERelationshipAddBtn}
    Sleep       3
    #Stakeholder Name
    #Log to Console      Stakeholder Name
    Wait Until Element Is Visible                   ${SERelationsStakeNameDD}               10 seconds
    Click Element                                   ${SERelationsStakeNameDD}
    Wait Until Element Is Visible                   ${SERelationsStakeNameDavidAbel}        20 seconds
    Click Element                                   ${SERelationsStakeNameDavidAbel}
    #Position
    #Log to Console      Position
    Click Element                                   ${SERelationsPositionDD}
    Wait Until Element Is Visible                   ${SERelationsPositionCFO}               20 seconds
    Click Element                                   ${SERelationsPositionCFO}
    #Record Save Tick Button
    #Log to Console      Record Save Tick Button
    Click Element                                   ${SITopicAssessmentRecordSaveTick}
    Wait Until Element Is Visible                   ${RecordSaved}                              60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Related Stakeholders Record Saved.png
    #Open Related Stakeholders Record
    #Log to Console      Open Related Stakeholders Record
    Scroll Element Into View                        ${SITopicInLineEditText}
    Click Element                                   ${SITopicInLineEditBtn}
    Sleep       1
    Wait Until Element Is Visible                   ${SERelationsRecordOpen}                    20 seconds
    Click Element                                   ${SERelationsRecordOpen}
    Sleep       1
    Wait Until Element Is Visible                   ${SERelationsRecordOpened}                  60 seconds
    Wait Until Element Is Visible                   ${SERelationsRecordPF}                      60 seconds
    Sleep       3
    Click Element                                   ${SERelationsRecordPF}
    Sleep       1
    Page Should Contain Element                     ${SERelationsPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Related Stakeholders Record Opened Edit Phase.png
    #Close Record
    #Log to Console      Close Record
    Click Element                                   ${SERelationsRecordClosed}
    Sleep       3
    Wait Until Element Is Visible                   ${SEStatusActive}
    Sleep       1

#*********************************************** FR3 01: Capture Related Stakeholders_OS *******************************************
Capture Related Stakeholders_OS
    #Close Stakeholder Entity Record
    #Log to Console      Close Stakeholder Entity Record
    Click Element                                   ${SERecordCloseX}
    Sleep       3
    Wait Until Element Is Visible                   ${SERecords}
    Wait Until Element Is Visible                   ${SEViewFilterBtn}                  30 seconds
    #Close Stakeholder Entity Module
    #Log to Console      Close Stakeholder Entity Module
    Click Element                                   ${SECloseSEModule}
    Sleep       2
    #Open Stakeholder Individual Module
    #Log to Console      Open Stakeholder Individual Module
    Wait Until Element Is Visible                   ${SESIModuleBtn}                    60 seconds
    Click Element                                   ${SESIModuleBtn}
    Sleep       10
    Wait Until Element Is Visible                   ${SEViewFilterBtn}                  30 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Module Search Results.png
    #Full Name Search
    #Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SEIFullNameSearch}                 30 seconds
    Input Text                                      ${SEIFullNameSearch}                 David Abel (DA)
    #Search Button
    #Log to Console      Search Button
    Click Element                                   ${SESearchButton}
    Sleep       5
    Wait Until Element Is Visible                   ${SEIndividualSearchRecords}                  40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Record Visible.png
    #Open David Abel (DA) Record
    #Log to Console      Open David Abel (DA) Record
    Wait Until Element Is Visible                   ${SEIndividualSearchRecords}              30 seconds
    Click Element                                   ${SEIndividualSearchRecords}
    Wait Until Element Is Visible                   ${SEIndividualSavedRecordNo}                  30 seconds
    Click Element                                   ${SEIndividualProcessFlowBtn}
    Page Should Contain Element                     ${SEOpenedIndividualRecordPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual David Abel (DA) Record Opened.png
    #Members Tab
    #Log to Console      Members Tab
    Click Element                                   ${SEEntitiesTab}
    Page Should Contain Element                     ${SEEntitiesCreateNewEntityBtn}
    Scroll Element Into View                        ${SITopicInLineEditText}
    Sleep   2
    Wait Until Element Is Visible                   ${SEIndividualEntityStakeEntity}                60 seconds
    Page Should Contain Element                     ${SEIndividualEntityStakeEntity}
#    Scroll Element Into View                        ${SITopicInLineEditText}
    Sleep   1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual David Abel (DA) Related Stake Replicated.png
    #Update Position
    #Log to Console      Update Position
    Page Should Contain Element                     ${SEIndividualEntityStakeEntity}
    Click Element                                   ${SEIndividualEntityStakeEntity}
    Wait Until Element Is Visible                   ${SEEntityPositionCEO}                          60 seconds
    Click Element                                   ${SEEntityPositionCEO}
    #Save Button
    #Log to Console      Save Button
    Click Element                                   ${SERelatedSaveBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                              60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual David Abel (DA) Update Record Saved.png
    #Close David Abel (DA) Record
    #Log to Console      Close David Abel (DA) Record
    Click Element                                   ${SEIndividualRecordCloseX}
    Sleep       3
    Wait Until Element Is Visible                   ${SEViewFilterBtn}                          30 seconds
    #Close Stakeholder Individual Module
    #Log to Console      Close Stakeholder Individual Module
    Click Element                                   ${SEIndividualCloseSIModule}
    Sleep       3
    #Open Stakeholder Individual Module
    #Log to Console      Open Stakeholder Entity Module
    Wait Until Element Is Visible                   ${StakeholderEntityBtn}                     60 seconds
    Click Element                                   ${StakeholderEntityBtn}
    Sleep       6
    Wait Until Element Is Visible                   ${SEViewFilterBtn}                          30 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Module Search Results.png
    #Full Name Search
    #Log to Console      Full Name Search
    Wait Until Element Is Visible                   ${SEFullNameSearch}                         30 seconds
    Clear Element Text                              ${SEFullNameSearch}
    Input Text                                      ${SEFullNameSearch}                         Stake_Entity
    #Search Button
    #Log to Console      Search Button
    Click Element                                   ${SESearchButton}
    Wait Until Element Is Visible                   ${SERecords}                                40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Records Visible.png
    #Open Stake_Entity Stakeholder Entity Record
    #Log to Console      Open Stake_Entity Stakeholder Entity Record
    Wait Until Element Is Visible                   ${SERecordStake_Entity}                     30 seconds
    Click Element                                   ${SERecordStake_Entity}
    Wait Until Element Is Visible                   ${SESavedRecordNo}                          30 seconds
    Wait Until Element Is Visible                   ${SEProcessFlowBtn}                         30 seconds
    Click Element                                   ${SEProcessFlowBtn}
    Page Should Contain Element                     ${SEPFEditPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Stake_Entity Record Opened.png
    #Members Tab
    #Log to Console      Members Tab
    Click Element                                   ${SEMembersTab}
    Page Should Contain Element                     ${SERelationsCreateNewIndividualBtn}
    Scroll Element Into View                        ${SITopicInLineEditText}
    Sleep   2
    Wait Until Element Is Visible                   ${SEIndividualRelatedDavidAbel}                      30 seconds
    Page Should Contain Element                     ${SEIndividualRelatedDavidAbel}
    Scroll Element Into View                        ${SITopicInLineEditText}
    Sleep   1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Stake_Entity Related Entity CEO.png

#*********************************************** FR3 01: Capture Related Stakeholders_AS *******************************************
Capture Related Stakeholders_AS
#    [Arguments]         ${winClose}
    SLeep       1
    #Log to Console      Tab Left Arrow
    FOR  ${i}     IN RANGE  1   11
    Click Element                                   ${SETabLeftArrow}
    END
    Sleep       1
    #Members Tab
    #Log to Console      Members Tab
    Click Element                                   ${SEMembersTab}
    Page Should Contain Element                     ${SERelationsCreateNewIndividualBtn}
    Wait Until Element Is Visible                   ${SERelationshipAddBtn}                 20 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Members Tab.png
    Click Element                                   ${SERelationsCreateNewIndividualBtn}
    #Switch Window
    #Log to Console      Switch Window - NEW
    Select Window       NEW
#    #Log to Console      Switch Window
#    Sleep       5
#    #Get Window Handles
#    #Log to Console      Get Window Handles
#    @{list1}        Get Window Handles
#    FOR   ${win}  IN  @{list1}
#    #Log to Console      ${win}
#    Select Window       ${win}
#    ${URL}=     Get Location
#    #Log to Console      ${URL}
#    END
    Sleep       20
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual New Tab Opened.png
    #Select Frame
    #Log to Console      Select Frame
    Select Frame                                    ${iFrame}
    Sleep       10
    #Process Flow
    #Log to Console      Process Flow Button
    Wait Until Element Is Visible                   ${SIProcessFlowBtn}                   60 seconds
    Click Element                                   ${SIProcessFlowBtn}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Process Flow.png
    #Add Phase
    #Log to Console      Stakeholder Individual in Add Phase
    Wait Until Page Contains Element                ${SIPFAddPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/StakeIndividual Add Phase.png
    #First Name
    #Log to Console      First Name
    Input Text                                      ${SIFirstName}              StakeEnt_FR3AS First (1)
    #Last Name
    #Log to Console      Last Name
    Input Text                                      ${SILastName}               Last Name (1) - FR3ASE
    #Known As
    #Log to Console      Known As
    Input Text                                      ${SIKnownAs}                Test FR3ASE
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/StakeIndividual Full Name Autopopulated.png
    #Title
    #Log to Console      Title
    Click Element                                   ${SITitleDD}
    sleep       5
    Wait Until Element Is Visible                   ${SITitleMr}                           120 seconds
    Click Element                                   ${SITitleMr}
    #Status
    #Log to Console      Status
    Wait Until Page Contains Element                ${SIStatusActive}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/StakeIndividual Title_Status - Active.png
    #Relationship Owner
    #Log to Console      Relationship Owner
    Click Element                                   ${SIRelationshipOwnerDD}
    sleep       5
    Wait Until Element Is Visible                   ${SIRelationshipOwnerManager}          90 seconds
    Click Element                                   ${SIRelationshipOwnerManager}
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
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Saved.png
#    #Get Window Handles
#    #Log to Console      Get Window Handles
#    @{list2}        Get Window Handles
#    FOR   ${win2}  IN  @{list2}
#    #Log to Console      ${win2}
#    #Log to Console      Switch Window
#    Switch Window       IsoMetrix
#    ${URL}=     Get Location
#    #Log to Console      ${URL}
#    END
    #Close Window
    #Log to Console      Close Window - MAIN
    Close Window
    Sleep       2
    Select Window       MAIN
#    Sleep       3
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Tab Visible.png
    #Select Frame
    #Log to Console      Select Frame
    Select Frame                                    ${iFrame}
    #Related Stakeholder Add Button
    #Log to Console      Related Stakeholder Add Button
    Click Element                                   ${SERelationshipAddBtn}
    Sleep       3
    #Stakeholder Name
    #Log to Console      Stakeholder Name
    Wait Until Element Is Visible                   ${SERelationsStakeNameDD}               10 seconds
    Click Element                                   ${SERelationsStakeNameDD}
    Wait Until Element Is Visible                   ${SERelationsStakeNameFR3ASE}            20 seconds
    Click Element                                   ${SERelationsStakeNameFR3ASE}
    #Type of Relationship
    #Log to Console      Type of Relationship
    Click Element                                   ${SERelationsPositionDD}
    Wait Until Element Is Visible                   ${SERelationsPositionCFO}                20 seconds
    Click Element                                   ${SERelationsPositionCFO}
    #Record Save Tick Button
    #Log to Console      Record Save Tick Button
    Click Element                                   ${SITopicAssessmentRecordSaveTick}
    Wait Until Element Is Visible                   ${RecordSaved}                              60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Related Stakeholders Record Saved.png

#*********************************************** FR4 01: Capture Associated Entities_MS ******************************************************
Capture Associated Entities_MS
    #Log to Console      Tab Left Arrow
    FOR  ${i}     IN RANGE  1   11
    Click Element                                   ${SETabLeftArrow}
    END
    Sleep       1
    #Entities Tab
    #Log to Console      Entities Tab
    Click Element                                   ${SEAssociatedEntitiesTab}
    Page Should Contain Element                     ${SEAssEntitiesAddNewEntityBtn}
    Wait Until Element Is Visible                   ${SEAssEntitiesAddBtn}                  20 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entities Tab.png
    #Add Button
    Sleep       2
    #Log to Console      Add Button
    Click Element                                   ${SEAssEntitiesAddBtn}
    Sleep       2
    #Group Name
    #Log to Console      Group Name
    Wait Until Element Is Visible                   ${SEAssEntitiesGroupNameDD}             10 seconds
    Click Element                                   ${SEAssEntitiesGroupNameDD}
    Wait Until Element Is Visible                   ${SEAssEntitiesColtnessIron}            20 seconds
    Click Element                                   ${SEAssEntitiesColtnessIron}
    #Relationship
    #Log to Console      Relationship
    Click Element                                   ${SEAssEntitiesRelationshipDD}
    Wait Until Element Is Visible                   ${SEAssEntitiesRelationshipDD}             20 seconds
    Click Element                                   ${SEAssEntitiesRelationshipInvestor}
    #Record Save Tick Button
    #Log to Console      Record Save Tick Button
    Click Element                                   ${SITopicAssessmentRecordSaveTick}
    Wait Until Element Is Visible                   ${RecordSaved}                              60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Associated Entities Record Saved.png
    #Open Associated Entities Record
    #Log to Console      Open Associated Entities Record
    Scroll Element Into View                        ${SITopicInLineEditText}
    Click Element                                   ${SITopicInLineEditBtn}
    Sleep       2
    Wait Until Element Is Visible                   ${SEAssEntitiesRecordOpen}                  20 seconds
    Click Element                                   ${SEAssEntitiesRecordOpen}
    Sleep       1
    Wait Until Element Is Visible                   ${SEAssEntitiesRecordOpened}                60 seconds
    Wait Until Element Is Visible                   ${SEAssEntitiesPFBtn}                       60 seconds
    Sleep       3
    Click Element                                   ${SEAssEntitiesPFBtn}
    Sleep       1
    Page Should Contain Element                     ${SEAssEntitiesPFEdit}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Associated Entities Record Opened Edit Phase.png
    #Close Record
    #Log to Console      Close Record
    Click Element                                   ${SEAssEntitiesCloseX}
    Sleep       3

#*********************************************** FR4 01: Capture Associated Entities_AS ******************************************************
Capture Associated Entities_AS
    #Log to Console      Tab Left Arrow
    FOR  ${i}     IN RANGE  1   11
    Click Element                                   ${SETabLeftArrow}
    END
    Sleep       1
    #Entities Tab
    #Log to Console      Entities Tab
    Click Element                                   ${SEAssociatedEntitiesTab}
    Page Should Contain Element                     ${SEAssEntitiesAddNewEntityBtn}
    Wait Until Element Is Visible                   ${SEAssEntitiesAddBtn}                  20 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entities Tab.png
    Click Element                                   ${SEAssEntitiesAddNewEntityBtn}
    #Switch Window
    #Log to Console      Switch Window - NEW
    Select Window       NEW
    Sleep       15
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entities New Tab Opened.png
    #Select Frame
    #Log to Console      Select Frame
    Select Frame                                    ${iFrame}
    Sleep       8
    #Entity Process Flow
    #Log to Console      Entity Process Flow Button
    Wait Until Element Is Visible                   ${SIEntityProcessFlowBtn}                   60 seconds
    Click Element                                   ${SIEntityProcessFlowBtn}
    #Add Phase
    #Log to Console      Stakeholder Entity in Add Phase
    Wait Until Page Contains Element                ${SIEntityPFAddPhase}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Add Phase.png
    #Entity Type
    #Log to Console      Entity Type
    Wait Until Element Is Visible                   ${SEEntityTypeDD}                           30 seconds
    Click Element                                   ${SEEntityTypeDD}
    Wait Until Element Is Visible                   ${SEEntityTypeCorporation}                  30 seconds
    Click Element                                   ${SEEntityTypeCorporation}
    #Entity Name
    #Log to Console      Entity Name
    Input Text                                      ${SEEntityName}                             StakeSE_Entity FR4AS1
    #Known As
    #Log to Console      Entity Known As
    Input Text                                      ${SEKnownAs}                                Test FR4AS
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Name.png
    #Industry
    #Log to Console      Industry
    Click Element                                   ${SEIndustryDD}
    sleep       1
    Wait Until Element Is Visible                   ${SEIndustryOil}                            20 seconds
    Click Element                                   ${SEIndustryOil}
    #Entity description
    #Log to Console      Entity description
    Input Text                                      ${SEEntityDescription}                      FR4_01_CaptureAssociatedEntities_AlternateScenario
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Industry_Description.png
    #Relationship Owner
    #Log to Console      Relationship Owner
    Click Element                                   ${SERelationshipOwnerDD}
    sleep       2
    Wait Until Element Is Visible                   ${SERelationshipOwner2Manager}               60 seconds
    Click Element                                   ${SERelationshipOwner2Manager}
    #Stakeholder categories
    #Log to Console      Stakeholder categories
    Wait Until Element Is Visible                   ${SEStakeholderCategoriesMedia}                  60 seconds
    Click Element                                   ${SEStakeholderCategoriesMedia}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity RelationOwner_Category.png
    #Business Unit
    #Log to Console      Business Unit
    Scroll Element Into View                        ${SESavetocontinueBtn}
    Click Element                                   ${SEBusUnitExpand1}
    Wait Until Element Is Visible                   ${SEBusUnitExpand1}                 10 seconds
    Click Element                                   ${SEBusUnitExpand2}
    Wait Until Element Is Visible                   ${SEBusUnitVictorySite}             10 seconds
    Click Element                                   ${SEBusUnitVictorySite}
    #Impact Types
    #Log to Console      Impact Types
    Wait Until Element Is Visible                   ${SEImpactTypeBusRisk}                  60 seconds
    Click Element                                   ${SEImpactTypeSelectAll}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Impact Types.png
    #Save and Continue
    #Log to Console      Save and Continue
    Click Element                                   ${SESavetocontinueBtn}
    Wait Until Element Is Visible                   ${RecordSaved}                          60 seconds
    Scroll Element Into View                        ${SEEntityTypeDD}
    Page Should Contain Element                     ${SESavedRecordNo}
    Wait Until Page Contains Element                ${SEPFEditPhase}
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Entity Saved.png
    #Close Window
    #Log to Console      Close Window - MAIN
    Close Window
    Sleep       2
    Select Window       MAIN
    #Select Frame
    #Log to Console      Select Frame
    Select Frame                                    ${iFrame}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Individual Tab Visible.png
    #Add Button
    Sleep       2
    #Log to Console      Add Button
    Click Element                                   ${SEAssEntitiesAddBtn}
    Sleep       2
    #Group Name
    #Log to Console      Group Name
    Wait Until Element Is Visible                   ${SEAssEntitiesGroupNameDD}             10 seconds
    Click Element                                   ${SEAssEntitiesGroupNameDD}
    Wait Until Element Is Visible                   ${SEAssEntitiesStakeSE_Entity}          20 seconds
    Click Element                                   ${SEAssEntitiesStakeSE_Entity}
    #Relationship
    #Log to Console      Relationship
    Click Element                                   ${SEAssEntitiesRelationshipDD}
    Wait Until Element Is Visible                   ${SEAssEntitiesRelationshipDD}             20 seconds
    Click Element                                   ${SEAssEntitiesRelationshipInvestor}
    #Record Save Tick Button
    #Log to Console      Record Save Tick Button
    Click Element                                   ${SITopicAssessmentRecordSaveTick}
    Wait Until Element Is Visible                   ${RecordSaved}                              60 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Stakeholder Associated Entities Record Saved.png










