*** Variables ***
#*********************************************** Stakeholder Individual Module *********************************************************
${EHSButton}                    xpath://label[text()='Environment, Health & Safety']
${StakeholderManagement}        xpath://label[text()='Stakeholder Management']
${StakeholderIndividualBtn}     xpath://label[contains(text(),'Stakeholder Individual')]
${SIAddBtn}                     xpath://div[@id='btnActAddNew']
${SISearchButton}               xpath://div[@id='btnActApplyFilter']/div[text()='Search']
${SIRecords}                    xpath://div[@id='divContainer']/div/div/div[3]/div[2]/div/div[3]/table/tbody/tr[1]/td[4]/span
${SIRecordHeader}               xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[1]/div[1]/div
${SIProfileTab}                 xpath://li[@id='tab_9C6F9F80-56C2-4E63-A85B-95A506EDF8C4']/div[text()='Profile']
${iFrame}                       xpath://iframe[@id='ifrMain']

#*********************************************** FR1 01-01: Capture Stakeholder Individual *********************************************************
${SIProcessFlowBtn}             xpath://div[@id='btnProcessFlow_form_E686D312-3E2F-4E66-9EAD-AC71C09267DD']
${SIPFAddPhase}                 xpath:(//div[@id='divProcess_E686D312-3E2F-4E66-9EAD-AC71C09267DD'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${SIPFEditPhase}                xpath:(//div[@id='divProcess_E686D312-3E2F-4E66-9EAD-AC71C09267DD'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${SIFirstName}                  xpath://div[@id='control_E186B9E5-4102-409D-8F57-7355938C09D9']/div/div/input
${SILastName}                   xpath://div[@id='control_A9D1A3E8-C561-452A-A1F4-7BCB496B365F']/div/div/input
${SIKnownAs}                    xpath://div[@id='control_BED0557B-BBC2-46C1-B571-BE60A267F0EA']/div/div/input
${SITitleDD}                    xpath://div[@id='control_28C03054-D663-431B-9F65-38BE54617019']//li
${SITitleMr}                    xpath://a[text()='Mr']
${SITitleMrs}                   xpath://a[text()='Mrs']
${SITitleDr}                    xpath://a[text()='Dr']
${SITitleMiss}                  xpath://a[text()='Miss']
${SITitleMs}                    xpath://a[text()='Ms']
${SITitleProf}                  xpath://a[text()='Prof']
${SITitleHonorable}             xpath://a[text()='Honorable']
${SIStatusActive}               xpath://div[@id='control_170F62D3-43C4-4548-A7C3-2E856B137AC8']/div/a/span/ul/li[text()='Active']
${SIRelationshipOwnerDD}        xpath://div[@id='control_4BC61A3A-EC52-4BEA-807E-B70C75D5B421']//li
${SIRelationshipOwnerManager}        xpath://a[text()='2 Manager']
${SIRelationshipOwnerAdmin}          xpath://a[text()='1 Administrator']
${SIImage}                      xpath://div[@id='control_665D9884-49CE-4BCA-98E9-EBA2E6DF37EB']/div/div[@class='imagecontrol-droparea imagecontrol-empty']
${SICategoryEmployee}           xpath:(//a[text()='Employee']/i[1])[1]
${SICategoryContractor}         xpath:(//a[text()='Contractor']/i[1])[1]
${SICategoryMedia}              xpath:(//a[text()='Media']/i[1])[1]
${SICategoryRegAuth}            xpath:(//a[text()='Regulatory Authority']/i[1])[1]
${SICategoryCommunity}          xpath:(//a[text()='Community']/i[1])[1]
${SIBusUnitExpand1}             xpath://a[text()='Global Company']/../i
${SIBusUnitExpand2}             xpath://a[text()='South Africa']/../i
${SIBusUnitVictorySite}         xpath:(//a[text()='Victory Site']/i)[1]
${SIImpactTypeBusRisk}          xpath:(//a[text()='Business Risk']/i)[1]
${SIImpactTypeSelectAll}        xpath:(//div[@id='control_65F1B5F4-17B9-48FE-817D-B27F54AB360E']//b)[1]
${SISaveandContinueBtn}         xpath://div[@id='control_76647B9D-57AE-48B4-95B0-65E0377FEE41']/div/div[text()='Save and continue']
${RecordSaved}                  xpath://*[@id="txtHeader"]
${SISavedRecordNo}              xpath:(//div[@id='form_E686D312-3E2F-4E66-9EAD-AC71C09267DD']//div[contains(text(),'- Record #')])[1]
${SIStakeholderDetailsTab}      xpath://li[@id='tab_DA528E34-BBB5-4777-A826-D546DBBB3A69']
${SIStakeholderAnalysisTab}     xpath://li[@id='tab_3F5193FE-FB15-460C-9AD5-208966AC8E83']
${SIRelationshipsTab}           xpath://li[@id='tab_80C001EC-AB1F-4DA8-9B60-D1195CBF4D3B']
${SIEntitiesTab}                xpath://li[@id='tab_B82C2B7B-17B4-489B-A8EB-B3C93477CBBE']/div[text()='Entities']
${SIRelatedAssessmentTab}       xpath://li[@id='tab_C443EA0B-8F8D-4938-A62B-8FCFA50F6CB3']
${SITrainingManagementTab}      xpath://li[@id='tab_098EB02D-6F88-4D36-9C78-3A50A1E3F20A']
${SIOccupationalHygieneTab}         xpath://li[@id='tab_D8AE8114-F78B-4A16-81D0-25F4651CB800']
${SITabRightArrow}              xpath:(//div[@class='tabpanel_tab_content']/div)[2]
${SIWorkHistoryTab}             xpath://li[@id='tab_95ADAE33-1DDF-4B19-9259-999F62D0DF62']
${SIActionsTab}                 xpath://li[@id='tab_96D5DE55-69F1-4C89-94FA-61B9E889A1F0']
${SISupportDocsTab}             xpath://li[@id='tab_E586E46D-E795-427B-BB39-D791854E2817']
${SIVulnerabilityTab}           xpath://li[@id='tab_DFC3AA4D-5257-4858-AA54-DEFEEA96D7E8']
${SIEngagementsTab}             xpath://li[@id='tab_CF5F4EDE-1F5A-487F-9505-56097D794D34']
${SIInitiativesTab}             xpath://li[@id='tab_DCF8E044-E466-4E2D-B21D-53E1B72C8984']
${SICommitmentsTab}             xpath://li[@id='tab_EDBD083D-736C-48FA-BE2B-0E6F86800AC0']
${SIResettlementTab}            xpath://li[@id='tab_2453C545-DBC9-46FF-B413-8ED01A728179']
${SILandAccessTab}              xpath://li[@id='tab_3FF7EE9B-BAF9-495F-BD5F-D2A95307476A']
${SISocialStatusPanel}          xpath://div[@id='control_8BDD72E9-E054-413A-A0DF-F357AAE8C7B2']/div[9]/div/span[text()='Social Status']
${SITabLeftArrow}               xpath:(//div[@class='tabpanel_tab_content']/div)[1]
${SIDesignation}                xpath://div[@id='control_DE0171C4-DDEA-47BD-A5D5-F4DF639EC9E2']/div/div/input
${SIDoB}                        xpath://div[@id='control_501DB50D-5488-43AF-91D3-B74D77CC09A3']//input
${SIGenderDD}                   xpath://div[@id='control_BC0B3729-5DA7-493E-BA90-653F5C3E6151']//li
${SIGenderMale}                 xpath://a[text()='Male']
${SIGenderFemale}               xpath://a[text()='Female']
${SIIDNumber}                   xpath://div[@id='control_5A680F16-7C29-49C2-9698-68C906C1F35F']/div/div/input
${SINationalityDD}              xpath://div[@id='control_447AC363-4DFF-4821-AB92-6695191EC822']
${SINationalitySearch}          xpath:/html[1]/body[1]/div[1]/div[3]/div[1]/div[2]/div[7]/div[1]/input[1]
${SINationalitySouthAfrican}         xpath:(//ul[@class='select3-results jstree jstree-5 jstree-default jstree-loading'])/ul[@class='jstree-container-ul jstree-children']/li[@title='South African']
${SINationalityAmerican}            xpath:(//a[text()='American'])[1]
${SIWorkTeamDD}                 xpath://div[@id='control_2994DC45-6138-4B50-B88C-4989E62245D4']
${SIWorkTeamB}                  xpath://a[text()='Team B']
${SIPrimaryContactNo}           xpath:(//div[@id='control_E47C7BB6-4A97-41C7-9E5D-C3C6FDA1B25C']//input)[1]
${SISecondaryContactNo}         xpath:(//div[@id='control_A7725878-35E5-4DA9-9D78-18F770172373']//input)[1]
${SIEmailAddress}               xpath:(//div[@id='control_D6050013-0413-45E9-87EB-942CD2CF9BA7']//input)[1]
${SISocialStatusContactYes}         xpath://div[@tooltip='Stakeholder can be contacted']
${SIDoNotContact}               xpath://div[@id='control_75AD2A23-263F-4AE2-9F25-2EB4289FABE3']/div[@class='c-chk']
${SISocialStatusContactNo}          xpath://div[@tooltip='Stakeholder cannot be contacted and alternative contact is avaliable if contact needs to be made']
${SIAlternateContactDD}         xpath://div[@id='control_EF9ED37D-3A57-4C98-9B4C-706C651662D8']//span[@class='select3-chosen']
${SIAlternateContactSelect}         xpath:(//a[text()='David Abel (DA)'])[1]
${SIRelationshipStakeholderDD}        xpath://div[@id='control_72C247C0-E132-44CC-BD6B-1D0509E66942']//span[@class='select3-chosen']
${SIRelationshipStakeholderOther}        xpath://a[text()='Other']
${SIAlternateContactNo}         xpath://div[@id='control_53EA1874-F86E-4399-938E-327B1C909030']//input[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${SIAlternateEmailAddress}      xpath://div[@id='control_F8B44B7B-6FB2-4190-BD96-0D52ADD596F3']//input[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${SIPermanentAddressPanel}      xpath://div[@id='control_763E5982-3E9C-4FAE-9D02-647DF0AB255C']/div[9]/div/span[text()='Permanent Address']
${SIPermanentStreetAddress}     xpath:(//div[@id='control_D4C509F9-312D-4C22-907D-525214E628D6']//input)[1]
${SIPermanentCityTown}          xpath:(//div[@id='control_CC1DA37F-1ED3-41AB-90FC-5E5576C530E8']//input)[1]
${SIPermanentState}             xpath:(//div[@id='control_FBEE74FE-B165-4A6C-BE66-C928CEE1BF70']//input)[1]
${SIPermanentZIP}               xpath://div[@id='control_F8B6B6D6-F042-40C2-8A54-08D8745DB284']/div/div/input
${SIPermanentLocationDD}        xpath://div[@id='control_B9F0F229-C6DB-440C-8E07-5EF10C11442E']//li
${SIPermanentLocationSelect}        xpath://a[text()='American Samoa']
${SIPermanentLatitude}              xpath://div[@id='control_44A782AF-225A-44F5-9434-F4E01DF62B38']//input[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${SIPermanentLongitude}             xpath://div[@id='control_6E079358-9A1C-4480-B174-50B2D8D9097C']//input[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${SICorrespondenceAddressPanel}         xpath://div[@id='control_1D9AAAFD-3ACD-41AA-8464-F9F873C4C183']/div[9]/div/span[text()='Correspondence Address']
${SICorrespondencestreetaddress}        xpath://div[@id='control_FF9D5F80-DE9F-4E19-8250-83448CC41623']//input[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${SICorrespondenceCity}         xpath://div[@id='control_6C0A2CC2-7DE4-4777-93B3-2AF949867D9A']//input[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${CorrespondenceState}          xpath://div[@id='control_1FFA31F0-3381-488E-AFBF-58EC12920A24']//input[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${CorrespondenceZip}            xpath://div[@id='control_20F56E07-C58D-4269-9FD9-14A4A5903615']//input[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${SICorrespondenceLocationDD}            xpath://div[@id='control_C23D5240-D08D-4A52-9348-2C4DB5F2A7DC']//li
${SICorrespondenceLocationSelect}        xpath:(//a[text()='Andorra'])[2]
${SIComments}                   xpath://div[@id='control_9EAB7FD6-BA53-4DAC-8CC9-435444A0C6C4']//textarea
${SISaveBtn}                    xpath://div[@id='btnSave_form_E686D312-3E2F-4E66-9EAD-AC71C09267DD']
${SIMapPanel}                   xpath://div[@id='control_ECA09162-D0C5-4144-88B3-65E3A138939E']/div[9]/div/span[text()='Map']
${SISupportDocsLink}            xpath://div[@id='control_1F0A25D4-9905-4913-BC61-B1EED48CCCC6']//b[@original-title='Link to a document']
${SISavesupportingdocuments}        xpath://div[@id='control_651038F2-3F4F-4AE2-967E-D88EE5A339A1']/div/div[text()='Save supporting documents']
${SISupportDocsLinkAdded}           xpath://div[@class='linkbox-links linkbox-icons']/div/div[text()='Isometrix']
${SIAnalysisTab}                xpath://li[@id='tab_3F5193FE-FB15-460C-9AD5-208966AC8E83']
${SIStakeholderInterestDD}      xpath://div[@id='control_31C7E767-EBB3-4298-91F8-6D2BB2087E27']//li
${SIStakeholderInterestVeryHigh}        xpath://a[text()='Very high']
${SIStakeholderInterestHigh}            xpath://a[text()='High']
${SIStakeholderInterestModerate}        xpath://a[text()='Moderate']
${SIStakeholderInterestLow}             xpath://a[text()='Low']
${SIStakeholderinfluenceDD}             xpath://div[@id='control_1925A4AA-1738-4B62-AEBE-52B8F6C31096']//li
${SIStakeholderinfluenceVeryHigh}       xpath:(//a[text()='Very high'])[2]
${SIStakeholderinfluenceHigh}           xpath:(//a[text()='High'])[2]
${SIStakeholderinfluenceModerate}       xpath:(//a[text()='Moderate'])[2]
${SIStakeholderinfluenceLow}            xpath:(//a[text()='Low'])[2]
${SIAnalysisGuidelines}         xpath://div[@id='control_95CB0DB1-9BE6-4D29-BA59-5C28A28C354E']/div[9]/div/span[text()='Guidelines']
${SIAnalysisEngageStakeholderImage}         xpath://div[@id='control_3881149A-236A-49D1-BD43-3C0D97B6386B']/div/div[2]/img[@src='rest/Storage/File/fff01bdc-0d3a-4875-87eb-bfd944657f27/Image/View/Mid']
${SIAnalysisStakeholderSupportDD}       xpath://div[@id='control_60E6161A-A29E-4010-B97C-EF370B791A18']//li
${SIAnalysisStakeholderSupportNegative}         xpath://a[text()='Negative']
${SIAnalysisStakeholderSupportNeutral}          xpath://a[text()='Neutral']
${SIAnalysisStakeholderSupportPositive}         xpath://a[text()='Positive']
${SIAnalysisStakeholderSupportUnknown}          xpath://a[text()='Unknown']
${SIAnalysisSupportUnknownImage}                xpath://div[@id='control_A9D86646-9FE8-4412-A8CF-67327DE48157']/div/div[2]/img[@src='rest/Storage/File/f508838e-9318-48ba-b671-26ae49199e26/Image/View/Mid']
${SIAnalysisComments}           xpath://div[@id='control_B1285D5A-AE37-4DC8-92F6-4FD64E3807A4']//textarea
${SIAnalysisImpactStakeholderDD}        xpath://div[@id='control_2179B78C-4EDC-41C2-8756-F54C65C1AA12']//li
${SIAnalysisImpactStakeholderExpand1}        xpath:(//div[contains(@class, 'transition visible')]//a[text()='Access control hazards']/../i)[2]
${SIAnalysisImpactStakeholderSelect}         xpath:(//a[text()='Unauthorised access to hazardous areas']/i[1])
${SIAnalysisImpactStakeholderDDArrow}        xpath://div[@id='control_2179B78C-4EDC-41C2-8756-F54C65C1AA12']/div/a/span[2]/b[1]

#*********************************************** FR2 01: Capture Topic / Issue Assessment *********************************************************
${SITopicPanel}                 xpath://span[text()='Topic/Issue Assessment']
${SITopicIssueAddBtn}           xpath://div[@id='control_8FAC1D82-1B08-4953-9147-C9FD2CBDB738']//div[@id='btnAddNew']
${SITopicIssueDD}               xpath://div[@id='control_359049FA-9B56-4D59-A670-93070530E0E4']//li
${SITopicIssueExpand1}          xpath:(//div[contains(@class, 'transition visible')]//a[text()='Access control hazards']/../i)[1]
${SITopicIssueSelect}           xpath://a[text()='Unauthorised access to hazardous areas']
${SITopicInfluenceDD}           xpath://div[@id='control_46284CB6-8E0D-4AF6-BD22-0AF4AA6E7759']//li
${SITopicInfluenceVeryHigh}     xpath:(//a[text()='Very high'])[3]
${SITopicInfluenceHigh}         xpath:(//a[text()='High'])[3]
${SITopicInfluenceModerate}     xpath:(//a[text()='Moderate'])[3]
${SITopicInfluenceLow}          xpath:(//a[text()='Low'])[3]
${SITopicInterestDD}            xpath://div[@id='control_63C66781-07ED-4EB2-8A2F-CAED92ED118C']//li
${SITopicInterestVeryHigh}      xpath:(//a[text()='Very high'])[4]
${SITopicInterestHigh}          xpath:(//a[text()='High'])[4]
${SITopicInterestModerate}      xpath:(//a[text()='Moderate'])[4]
${SITopicInterestLow}           xpath:(//a[text()='Low'])[4]
${SITopicAssessmentKeepInformed}            xpath://div[@id='control_1B31E04C-0302-48B4-A0A8-67090A7E577E']/div[@style='height: 22px; background-color: rgb(244, 172, 28);']/input
${SITopicAssessmentRecordSaveTick}          xpath://tr[@id="formWrapper_0"]/td[1]/div[1]
${SITopicInLineEditText}        xpath:(//div[@id="grid"]/div[4]/div/div[1])[2]
${SITopicInLineEditBtn}         xpath:(//div[@id="grid"]/div[4]/div/div[2]/div[3]/span)[2]
${SITopicAssessmentRecordOpen}              xpath://div[@id="grid"]/div[3]/table/tbody/tr/td[4]/div[text()='Access control hazards -> Unauthorised access to hazardous areas']
${SITopicAssessmentRecordOpened}    xpath:(//div[@id='nav_D22CAEC4-4E35-4B21-8E72-315D7949C049'][text()='Topic/Issue Assessment'])[1]
${SITopicAssessmentRecordPF}        xpath://div[@id='btnProcessFlow_form_D22CAEC4-4E35-4B21-8E72-315D7949C049']
${SITopicAssessmentRecordPFEdit}        xpath:(//div[@id='divProcess_D22CAEC4-4E35-4B21-8E72-315D7949C049'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${SITopicAssessmentRecordClosed}        xpath://div[@id="form_D22CAEC4-4E35-4B21-8E72-315D7949C049"]/div[1]/i[2]

#*********************************************** FR3 01: Capture Related Stakeholders *********************************************************
${SIRelationshipAddBtn}         xpath://div[@id='control_32F8198B-15EA-4936-8A36-E7D8F25335E3']//div[text()='Add']
${SIRelationsCreateNewIndividualBtn}        xpath://div[text()='Create a new individual']
${SIRelationsStakeNameDD}       xpath://div[@id='control_5F245AC7-D951-4043-BC9F-75A1DDEBA4F8']//li
${SIRelationsStakeNameDavidAbel}            xpath://div[contains(@class, 'transition visible')]//a[text()='David Abel (DA)']
${SIRelationsTypeofRelationshipDD}          xpath://div[@id='control_F2DF7289-3CBA-4ED1-8937-8C347D349930']//li
${SIRelationsTypeofRelationshipSpouse}      xpath://div[contains(@class, 'transition visible')]//a[text()='Spouse']
${SIRelationsRecordOpen}              xpath:(//div[@id="grid"]/div[3]/table/tbody)[2]/tr/td[5]/div[text()='David Abel (DA)']
${SIRelationsRecordOpened}            xpath:(//div[@id='form_5EF3D1F9-25BD-4FF5-8F02-75F81739EF36']/div/div/div[3][text()='Related Stakeholders'])[1]
${SIRelationsRecordPF}                xpath://div[@id='btnProcessFlow_form_5EF3D1F9-25BD-4FF5-8F02-75F81739EF36']
${SIRelationsPFEdit}                  xpath:(//div[@id='divProcess_5EF3D1F9-25BD-4FF5-8F02-75F81739EF36'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${SIRelationsRecordClosed}            xpath://div[@id="form_5EF3D1F9-25BD-4FF5-8F02-75F81739EF36"]/div[1]/i[2]
${SIRecordCloseX}                     xpath://div[@id="form_E686D312-3E2F-4E66-9EAD-AC71C09267DD"]/div[1]/i[2]
${SIViewFilterBtn}                    xpath://div[@id='btnActFilter']
${SIFullNameSearch}                   xpath://div[@class='optionsPanel firstPanel primary']/table/tbody/tr[2]/td[5]/input
${SIRecordDavidAbel}                  xpath://div[@id='divContainer']/div/div/div[3]/div[2]/div/div[3]/table/tbody/tr[1]/td[5]/div[text()='David Abel (DA)']
${SIRelatedStakeTest}                 xpath://li[text()='Stake_AS1 First (1) Last Name (1) - AS1 (Test1)']
${SIRelatedStakeTestSpouse}           xpath:(.//li[text()='Stake_AS1 First (1) Last Name (1) - AS1 (Test1)'] | .//li[text()='Spouse'])[2]
${SIRelationsTypeofRelationshipChild}      xpath:(//div[contains(@class, 'transition visible')]//a[text()='Child'])[1]
${SIRelatedSaveBtn}                   xpath://div[@id='btnSaveAll']
${SIRecordStake_AS1}                  xpath://div[@id='divContainer']/div/div/div[3]/div[2]/div/div[3]/table/tbody/tr[1]/td[5]/div[text()='Stake_AS1 First (1) Last Name (1) - AS1 (Test1)']
${SIRelatedStakeDavid}                xpath:(.//li[text()='David Abel (DA)'] | .//li[text()='Parent'])[2]
${SIRelationsStakeNameFR3AS}          xpath://div[contains(@class, 'transition visible')]//a[text()='Stake_FR3AS First (1) Last Name (1) - FR3AS (Test FR3AS)']

#*********************************************** FR4 01: Capture Related Entities *********************************************************
${SIEntitiesCreateNewEntityBtn}       xpath://div[text()='Create a new entity']
${SIEntityAddBtn}                     xpath://div[@id='control_EE0F548B-BD30-4478-B62D-05A394FE49A3']//div[text()='Add']
${SIEntityStakeNameDD}                xpath://div[@id='control_9CC0D6E7-9FCE-48E5-B28D-C1BCDB97281D']//li
${SIEntityNameColtnessIron}           xpath://div[contains(@class, 'transition visible')]//a[text()='Coltness Iron Company Ltd']
${SIEntityStakePositionDD}            xpath://div[@id='control_DE361E8C-B66C-4402-B695-58413A1CA2BA']//li
${SIEntityStakePositionCOO}           xpath:(//div[contains(@class, 'transition visible')]//a[text()='Chief Operating Officer (COO)'])[1]
${SIEntityRecordOpen}                 xpath://div[@id="grid"]/div[3]/table/tbody/tr/td[5]/div[@title='Coltness Iron Company Ltd']
${SIEntityRecordOpened}               xpath:(//div[@id='nav_DF1172BD-686F-4776-A54F-2498D008B515'][text()='Related Entities'])[1]
${SIEntityRecordPF}                   xpath://div[@id='btnProcessFlow_form_DF1172BD-686F-4776-A54F-2498D008B515']
${SIEntityRecordPFEdit}               xpath:(//div[@id='divProcess_DF1172BD-686F-4776-A54F-2498D008B515'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${SIEntityRecordClosed}               xpath://*[@id="form_DF1172BD-686F-4776-A54F-2498D008B515"]/div[1]/i[2]
${SIEntityCloseSIModule}              xpath://*[@id="divSearch"]/div[1]/i[2]
${SIEntitySEModuleBtn}                xpath://div[@id='group_e25a8d53-cdbc-4287-8a1a-b07cb174c8e3']/div[2]/label[text()='Stakeholder Entity']
${SIEntityFullNameSearch}             xpath://div[@class='optionsPanel firstPanel primary']/table/tbody/tr[3]/td[5]/input
${SIEntitySearchRecords}              xpath://div[@id='divContainer']/div/div/div[3]/div[2]/div/div[3]/table/tbody/tr[2]/td[6]/div[text()='Coltness Iron Company Ltd']
${SIEntitySavedRecordNo}              xpath:(//div[@id='form_2D4B7042-3E2E-495C-A77F-1642D10D5F1E']//div[contains(text(),'- Record #')])[1]
${SIEntityProcessFlowBtn}             xpath://div[@id='btnProcessFlow_form_2D4B7042-3E2E-495C-A77F-1642D10D5F1E']
${SIOpenedEntityRecordPFEdit}         xpath:(//div[@id='divProcess_2D4B7042-3E2E-495C-A77F-1642D10D5F1E'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${SIEntityMembersTab}                 xpath://li[@id='tab_027E4E03-C1EF-434A-8CCD-24152EA912D3']/div[text()='Members']
${SIMembersCreateNewIndividualBtn}      xpath://div[@id='control_1F609E28-601C-41B0-A02A-C99C19AB23B1']/div/div[text()='Create a new individual']
${SIEntityMembersStakeTest}           xpath:(.//li[text()='Stake_AS1 First (1) Last Name (1) - AS1 (Test1)'] | .//li[text()=' Chief Operating Officer (COO)'])[2]
${SIEntityMembersPositionCEO}         xpath:(//div[contains(@class, 'transition visible')]//a[text()='Chief Executive Officer (CEO)'])[1]
${SIEntityRecordCloseX}               xpath://*[@id="form_2D4B7042-3E2E-495C-A77F-1642D10D5F1E"]/div[1]/i[2]
${SIEntityCloseSEModule}              xpath://div[@id="divSearch"]/div[1]/i[2]
${SIEntityRelatedColtness}            xpath:(.//li[text()='Coltness Iron Company Ltd'] | .//li[text()=' Chief Executive Officer (CEO)'])[2]
${SIEntityProcessFlowBtn}             xpath://div[@id='btnProcessFlow_form_2D4B7042-3E2E-495C-A77F-1642D10D5F1E']
${SIEntityPFAddPhase}                 xpath:(//div[@id='divProcess_2D4B7042-3E2E-495C-A77F-1642D10D5F1E'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${SIEntityTypeDD}                     xpath://div[@id='control_121C3080-4A13-4AC2-8640-F2380C230CDC']//li
${SIEntityTypeCompanySite}            xpath://div[contains(@class,'transition visible')]//a[text()='Company Site']
${SIEntityName}                       xpath://div[@id='control_6B36E56B-4BD2-4A16-AD58-94FE1883EFE2']/div/div//input
${SIEntityKnownAs}                    xpath://div[@id='control_5126FC78-97E6-49AA-A6D0-327CD4FD2CC5']/div/div//input
${SIEntityIndustryDD}                 xpath://div[@id='control_425BD26A-5DDB-485A-BA7F-E8D2E51C4BEA']
${SIEntityIndustryMining}             xpath://a[text()='Mining']
${SIEntityDescription}                xpath://div[@id='control_4AEFCBE1-7C06-4528-BB6B-CFD298C47AA1']/div/div//textarea
${SIEntityRelationshipOwnerDD}        xpath://div[@id='control_A01F1D1A-45BF-4A6B-B2C2-88046BDAFDA1']
${SIEntityStakeCategoriesCommunity}       xpath:(//a[contains(text(),'Community')]/i)[1]
${SIEntitySaveandContinueBtn}         xpath://div[@id='control_9E597588-6E9E-4EB7-A607-CC0E20503899']/div/div[text()='Save and continue']
${SIEntitySavedRecordNo}              xpath:(//div[@id='form_2D4B7042-3E2E-495C-A77F-1642D10D5F1E']//div[contains(text(),'- Record #')])[1]
${SIEntityPFEditPhase}                xpath:(//div[@id='divProcess_2D4B7042-3E2E-495C-A77F-1642D10D5F1E'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${SIEntityImpactTypeSelectAll}        xpath:(//div[@id='control_962A59FE-78C1-4FCE-B40E-CAC2A8124522']//b)[1]
${SIRelatedEntityNameFR4AS}           xpath:(//div[contains(@class, 'transition visible')]//a[text()='StakeSI_Entity FR4AS1'])[1]

#*********************************************** FR5 01: Capture Update Vulnerability *********************************************************
${SIVulnerabilityConfirmedDD}           xpath://div[@id='control_AEDC9FCF-6D3C-441F-AF04-32727FF4FB69']//li
${SIVulnerabilityConfirmedYes}          xpath://a[text()='Yes']
${SIVulnerabilityConfirmedNo}           xpath://a[text()='No']
${SIVulnerabilityNotVulnerableAreaImage}            xpath://div[@id='control_9BC36637-5542-4093-9FE4-4DE5F406326D']/div/div[2]/img[@src='rest/Storage/File/715f8573-e09e-4689-ba25-8487042492c9/Image/View/Mid']
${SIVulnerabilityInVulnerableAreaImage}             xpath://div[@id='control_D704B60B-03BB-4984-8C8D-9BF57CB20BFC']/div/div[2]/img[@src='rest/Storage/File/c7e058a0-3228-46d1-8738-8368eba70c47/Image/View/Mid']
${SIVulnerabilityCategorizationDD}          xpath://div[@id='control_248B60E1-72E9-469B-82CF-DF61210D6790']//li
${SIVulnerabilityCategorizationIndigenous}          xpath://a[text()='Indigenous']
${SIVulnerabilityCategorizationFederal}             xpath://a[text()='Federal']
${SIVulnerabilityCategorizationProvincial}          xpath://a[text()='Provincial']
${SIVulnerabilityCategorizationRegional}            xpath://a[text()='Regional']
${SIVulnerabilityCategorizationMunicipal}           xpath://a[text()='Municipal']
${SIVulnerabilityTypeElderly}           xpath:(//a[text()='Elderly']/i[1])
${SIVulnerabilityTypeEthnic}            xpath:(//a[text()='Ethnic or religious minority']/i[1])
${SIVulnerabilityDescription}           xpath://div[@id='control_2FAD1C82-911C-4258-B40B-8E3EB9C8B1F2']//textarea

#*********************************************** FR6 01: View Related Assessment **************************************************************
${SIRelatedInspectionsRecord}           xpath://div[@id='control_D89FBDD4-85E9-4E14-BB42-7302BC5CCCA4']/div/div[2]/div[2]/div/div[3]/table/tbody/tr[1]
${SIRelatedInspectionsLinkBtn}          xpath://div[@id="form_D9A8DB93-E3EF-4C40-B3B9-5FE8F6D5AFE2"]/div[1]/i[1]
${SIInspectionsRecordNo}                xpath:(//div[@id='form_D9A8DB93-E3EF-4C40-B3B9-5FE8F6D5AFE2']//div[contains(text(),'- Record #')])[1]
${SIInspectionsProcessFlow}             xpath://div[@id='btnProcessFlow_form_D9A8DB93-E3EF-4C40-B3B9-5FE8F6D5AFE2']
${SIInspectionsPFInProgress}            xpath:(//div[@id='divProcess_D9A8DB93-E3EF-4C40-B3B9-5FE8F6D5AFE2'])[2]/div/div[2]/div/div[@class='step active']//div[text()='In Progress']

#*********************************************** FR7 01: Add/View Engagements  *****************************************************************
${SIPreviousEngagementTab}              xpath://li[@id='tab_3DD46FC0-56A7-4752-8051-48BBE26C77C9']
${SIPreviousEngagementRefresh}          xpath://div[@id='control_D4CEBDAB-4E0D-4289-9F32-1B4D143FF4E1']//div[@id="grid"]/div[4]/a[5]
${SIPreviousEngagementItems}            xpath://div[@id='control_D4CEBDAB-4E0D-4289-9F32-1B4D143FF4E1']//div[@id="grid"]/div[4]/span[2][contains(text(),'items')]
${SIPreviousEngagementRecord}           xpath://div[@id='control_D4CEBDAB-4E0D-4289-9F32-1B4D143FF4E1']/div/div[2]/div[2]/div/div[3]/table/tbody/tr[1]
${SIPreviousEngagementLinkBtn}          xpath://div[@id="form_C5D7993E-A223-4AE0-A15D-119FE22E21DC"]/div[1]/i[1]
${SIPreviousEngagementRecordNo}         xpath:(//div[@id='form_C5D7993E-A223-4AE0-A15D-119FE22E21DC']//div[contains(text(),'- Record #')])[1]
${SIPreviousEngagementProcessFlow}      xpath://div[@id='btnProcessFlow_form_C5D7993E-A223-4AE0-A15D-119FE22E21DC']
${SIPreviousEngagementPFPlanned}        xpath:(//div[@id='divProcess_C5D7993E-A223-4AE0-A15D-119FE22E21DC'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Planned']
${SILoadingMask}                        xpath://div[@class='k-loading-mask']
${SIAddAnEngagementBtn}                 xpath://div[@id='control_B7FD90BD-B7B7-45E8-9010-0F3DA43D264D']/div/div[text()='Add an engagement']
${SIEngagementPF}                       xpath://div[@id='btnProcessFlow_form_C5D7993E-A223-4AE0-A15D-119FE22E21DC']
${SIEngagementPFAdd}                    xpath:(//div[@id='divProcess_C5D7993E-A223-4AE0-A15D-119FE22E21DC'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${SIEngagementTitle}                    xpath:(//div[@id='control_B0DFFFFF-66B3-4CB4-B4E5-23C8E0010864']//input)[1]
${SIEngagementDate}                     xpath://div[@id='control_C6060E39-99D5-417B-90CF-09077C971E5D']//input
${SIEngagementBUDD}                     xpath://div[@id='control_16C9A7FC-3091-4E0D-9B1A-709C8F0AC8B5']
${SIEngagementBUGlobalCompanyExpand}      xpath://a[text()='Global Company']/../i
${SIEngagementBUGlobalCompany}            xpath://a[text()='Global Company']
${SIEngagementBUSouthAfricaExpand}        xpath://a[text()='South Africa']/../i
${SIEngagementBUVictorySite}              xpath://a[text()='Victory Site']
${SIEngagementProjectLink}                xpath://div[@id='control_29AB36D5-E83F-43EF-AFF5-F7353A5353E9']/div[1]
${SIEngagementProjectDD}                  xpath://div[@id='control_963F5190-1317-42C1-AD7A-B277FCBA7101']
${SIEngagementProjectSelect}              xpath://a[text()='Expanding the mine']
${SIEngagementEngagementPurposeDD}        xpath://div[@id='control_0FF334FE-CE57-49BF-BA69-9BE5DA3447CB']//li
${SIEngagementPurposeCompliance}          xpath:(//a[contains(text(),'Compliance')])[2]
${SIEngagementMethodDD}                   xpath://div[@id='control_4A471537-8229-4E54-A86C-DCEB99BA24D0']
${SIEngagementMethodInPersonExpand}       xpath://a[text()='In-person engagements']/../i
${SIEngagementMethodProjectUpdate}        xpath:(//a[contains(text(),'Project Update')])[1]
${SIEngagementResponsiblePersonDD}        xpath://div[@id='control_213251A2-010A-4BBF-A65A-A1FC8C6F7033']
${SIEngagementResponsiblePerson2Manager}         xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'2 Manager')]
${SIEngagementImpactTypeSelectAll}        xpath:(//div[@id='control_18DD1597-B800-4D1B-B063-A2E539BB3B8A']//b)[1]
${SIEngagementAudienceTypeDD}             xpath://div[@id='control_74C6DEB4-AE07-4476-AF24-753B7187F94A']
${SIEngagementAudienceTypeSelect}         xpath://div[contains(@class, 'transition visible')]//a[contains(text(),'Provincial')]
${SIEngagementContactDD}                  xpath://div[@id='control_2D1B5E8D-BBF2-448A-9765-F03FA8C31019']
${SIEngagementContactSelect}              xpath://div[contains(@class, 'transition visible')]//a[contains(text(),'Wetlands')]
${SIEngagementNatureContactInquiry}       xpath://div[@id='control_17640BF1-096D-4917-93DC-398CE4D07B1C']/div/div/input
${SIEngagementLocationDD}                 xpath://div[@id='control_F703A144-D0B6-4D4D-B5E2-D4E186427A43']
${SIEngagementLocationSelect}             xpath://div[contains(@class, 'transition visible')]//a[contains(text(),'South Africa')]
${SIEngagementLongitude}                  xpath://div[@id='control_A5D5CA3A-9002-4FF7-A8B2-EC09C0B951D0']//input[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${SIEngagementLatitude}                   xpath://div[@id='control_DAA4D814-C0FD-417C-A22F-79CADF81F81A']//input[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${SIEngagementDescription}                xpath:(//div[@id='control_1C19AE65-23A1-4ADC-A631-D9273FC0CE9F']//textarea)[1]
${SIEngagementOutcome}                    xpath:(//div[@id='control_180C969D-A1C8-46FF-9F11-EA0457D2F762']//textarea)[1]
${SIEngagementSaveContinueBtn}            xpath://div[@id='control_ED751D41-E936-4042-8E41-FB030CA70377']/div/div[text()='Save and continue']
${SIEngagementPFPlanned}                  xpath:(//div[@id='divProcess_C5D7993E-A223-4AE0-A15D-119FE22E21DC'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Planned']
${SIEngagementAttendeesTab}               xpath://div[@id="control_1586DFB8-D2E7-48C4-AF14-956349DFDB68"]/div[9]/div[1]/div[3]/ul/li[2]/div[text()='Attendees']
${SIEngagementIndividualsTab}             xpath://li[@id='tab_0AF17767-5363-4C4B-8DA5-79B375B8EE01']/div[text()='Individuals']
${SIEngagementIndividualsNoResults}       xpath://div[@id='control_2E2CA02B-9570-4DC8-89A7-8EE214D2F06E']/div/div[2]/div[2]/div/div[3]/div[text()='No results returned']
${SIEngagementIndividualsAddBtn}          xpath://div[@id='control_2E2CA02B-9570-4DC8-89A7-8EE214D2F06E']/div/div/div[2]/div[@id='btnAddNew']
${SIEngagementIndividualsAtendeeNameDD}        xpath://div[@id='control_DA9B0184-991D-4267-B01B-36EF4792AF67']
${SIEngagementIndividualsAtendeeNameDavidAbel}          xpath://div[contains(@class, 'transition visible')]//a[contains(text(),'David Abel (DA)')]
${SIEngagementIndividualsSaveBtn}         xpath://div[@id='control_2E2CA02B-9570-4DC8-89A7-8EE214D2F06E']/div/div/div[2]/div[@id='btnSaveAll']
${SIEngagementIndividualInLineEditText}     xpath:(//div[@id="grid"]/div[4]/div/div[1])[3]
${SIPreviousEngagementRecordNew}            xpath:(//div[@id='control_D4CEBDAB-4E0D-4289-9F32-1B4D143FF4E1']/div/div[2]/div[2]/div/div[3]/table/tbody/tr/td/div[contains(text(),'FR7_01_Add_View Engagements_AlternateScenario')])[1]

#*********************************************** FR8 01: Add/View Engagement Plan  *****************************************************************
${SIEngagementPlanTab}                      xpath://li[@id='tab_33FB5A99-78F6-4DB1-ADDA-7985DDECFA98']
${SIEngagementPlanRefresh}                  xpath://div[@id='control_A19A1235-4486-4EB5-A9E4-EF24634429BF']//div[@id="grid"]/div[4]/a[5]
${SIEngagementPlanItems}                    xpath://div[@id='control_A19A1235-4486-4EB5-A9E4-EF24634429BF']//div[@id="grid"]/div[4]/span[2][contains(text(),'items')]
${SIEngagementPlanRecord}                   xpath://div[@id='control_A19A1235-4486-4EB5-A9E4-EF24634429BF']/div/div[2]/div[2]/div/div[3]/table/tbody/tr[1]
${SIEngagementPlanLinkBtn}                  xpath://div[@id="form_6682D62D-D470-4E11-BA5A-DFC1D1E1D35F"]/div[1]/i[1]
${SIEngagementPlanRecordNo}                 xpath:(//div[@id='form_6682D62D-D470-4E11-BA5A-DFC1D1E1D35F']//div[contains(text(),'- Record #')])[1]
${SIEngagementPlanProcessFlow}              xpath://div[@id='btnProcessFlow_form_6682D62D-D470-4E11-BA5A-DFC1D1E1D35F']
${SIEngagementPlanPFPlanning}               xpath:(//div[@id='divProcess_6682D62D-D470-4E11-BA5A-DFC1D1E1D35F'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Planning phase']
${SIEngagementPlanInLineEditText}           xpath://div[@id='control_A19A1235-4486-4EB5-A9E4-EF24634429BF']//div[@id="grid"]/div[4]/div/div[1]
${SIEngagementPlanAddBtn}                   xpath://div[@id='control_9AE170B5-C31D-4C0C-AAAD-EDC0EB7E230E']
${SIEngagementPlanPFBtn}                    xpath://div[@id='btnProcessFlow_form_6682D62D-D470-4E11-BA5A-DFC1D1E1D35F']
${SIEngagementPlanPFAdd}                    xpath:(//div[@id='divProcess_6682D62D-D470-4E11-BA5A-DFC1D1E1D35F'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${SIEngagementPlanBUDD}                     xpath://div[@id='control_8BE367EF-E449-4165-BC05-74385ECBF771']
${SIEngagementPlanBusUnitExpand1}           xpath://a[text()='Global Company']/../i
${SIEngagementPlanBusUnitExpand2}           xpath://a[text()='South Africa']/../i
${SIEngagementPlanBusUnitVictorySite}       xpath://a[text()='Victory Site']
${SIEngagementPlanTitle}                    xpath:(//div[@id='control_185410E8-D077-4DE6-8958-5772CA36E091']//input)[1]
${SIEngagementPlanProjectLink}              xpath://div[@id='control_DE6A7B48-B355-48A7-AA3E-8475171708AF']/div[1]
${SIEngagementPlanProjectDD}                xpath://div[@id='control_301410A3-9118-4FCA-93B7-4C2A90320266']
${SIEngagementPlanProjectSelect}            xpath://a[text()='Expanding the mine']
${SIEngagementPlanStartDate}                xpath://div[@id='control_90276DFA-A2DD-4A38-8D96-E84491597886']//input[@type='text']
${SIEngagementPlanEndDate}                  xpath://div[@id='control_56848732-729E-4C20-A0FC-1034ACF3D6F4']//input[@type='text']
${SIEngagementPlanFrequencyDD}              xpath://div[@id='control_0189D12C-09E0-4D04-964C-34044E11A982']
${SIEngagementPlanFrequencyWeekly}          xpath://a[text()='Weekly']
${SIEngagementPlanPurposeDD}                xpath://div[@id='control_36951962-3063-4DA2-9846-ED7137AFC783']
${SIEngagementPlanPurposeCompliance}        xpath://div[contains(@class, 'transition visible')]//a[contains(text(),'Compliance')]
${SIEngagementPlanMethodDD}                   xpath://div[@id='control_5D729CA2-07EF-4E0A-B491-1E223A263474']
${SIEngagementPlanMethodInPersonExpand}       xpath://a[text()='In-person engagements']/../i
${SIEngagementPlanMethodProjectUpdate}        xpath:(//a[contains(text(),'Project Update')])[1]
${SIEngagementPlanResponsiblePersonDD}        xpath://div[@id='control_C2B7C6FA-10FC-4593-BD27-6869D1790758']
${SIEngagementPlanResponsiblePerson2Manager}         xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'2 Manager')]
${SIEngagementPlanComments}                 xpath:(//div[@id='control_D0735E60-22C5-4A8B-8AAE-31CE9FA6249A']//textarea)[1]
${SIEngagementPlanSaveContinueBtn}          xpath://div[@id='control_B1893417-CAAD-4DC3-BD27-2EC339FBAE64']/div/div[text()='Save and continue']
${SIEngagementPlanParticipantsTab}          xpath://li[@id='tab_A32B5B7D-4DDE-4AD5-A146-AB8DB138ED8C']/div[text()='Participants']
${SIEngagementPlanStakeholderDavidAbel}        xpath:(//a[text()='David Abel (DA)']/i[1])
${SIEngagementPlanSaveBtn}                  xpath://div[@id='btnSave_form_6682D62D-D470-4E11-BA5A-DFC1D1E1D35F']
${SIEngagementPlanRecordNew}                xpath:(//div[@id='control_A19A1235-4486-4EB5-A9E4-EF24634429BF']/div/div[2]/div[2]/div/div[3]/table/tbody/tr/td/div[contains(text(),'FR8_01_View Engagements Plan_AlternateScenario')])[1]

#*********************************************** FR9 01: View Grievances_MS *****************************************************
${SIGrievancesTab}                          xpath://li[@id='tab_1315A2E7-3411-4E1F-8424-CD79254AC639']/div[text()='Grievances']
${SIGrievancesInLineEditText}               xpath://div[@id='control_26334270-5896-4852-918D-D508124D8B2D']//div[@id="grid"]/div[4]/div/div[1]
${SIGrievancesVGRefresh}                    xpath://div[@id='control_26334270-5896-4852-918D-D508124D8B2D']//div[@id="grid"]/div[4]/a[5]
${SIGrievancesItems}                        xpath://div[@id='control_26334270-5896-4852-918D-D508124D8B2D']//div[@id="grid"]/div[4]/span[2][contains(text(),'items')]
${SIGrievancesRecord}                       xpath://div[@id='control_26334270-5896-4852-918D-D508124D8B2D']/div/div[2]/div[2]/div/div[3]/table/tbody/tr[1]
${SIGrievancesLinkBtn}                      xpath://div[@id="form_A38BD6B3-FAD6-47B5-8124-8F7DBEC01739"]/div[1]/i[1]
${SIGrievancesRecordNo}                     xpath:(//div[@id='form_A38BD6B3-FAD6-47B5-8124-8F7DBEC01739']//div[contains(text(),'- Record #')])[1]
${SIGrievancesProcessFlow}                  xpath://div[@id='btnProcessFlow_form_A38BD6B3-FAD6-47B5-8124-8F7DBEC01739']
${SIGrievancesPFPlanning}                   xpath:(//div[@id='divProcess_A38BD6B3-FAD6-47B5-8124-8F7DBEC01739'])[2]/div/div[2]/div/div[@class='step active']//div[text()='STEP 1 : Registration']
${SIGrievancesOpenImage}                    xpath://div[@id='control_2E28D619-C654-427B-80DA-3AA3529415A4']/div/div[2]/img[@src='rest/Storage/File/c0f009b9-156f-4849-bff6-f3ea811c3d73/Image/View/Mid']

#*********************************************** FR10 01: View Initiatives_MS *****************************************************
${SIInitiativesInLineEditText}              xpath://div[@id='control_50E85B7D-AC6F-4FBD-9745-B4F4583650CD']//div[@id="grid"]/div[4]/div/div[1]
${SIInitiativesVGRefresh}                   xpath://div[@id='control_50E85B7D-AC6F-4FBD-9745-B4F4583650CD']//div[@id="grid"]/div[4]/a[5]
${SIInitiativesItems}                       xpath://div[@id='control_50E85B7D-AC6F-4FBD-9745-B4F4583650CD']//div[@id="grid"]/div[4]/span[2][contains(text(),'items')]
${SIInitiativesRecord}                      xpath://div[@id='control_50E85B7D-AC6F-4FBD-9745-B4F4583650CD']/div/div[2]/div[2]/div/div[3]/table/tbody/tr[1]
${SIInitiativesLinkBtn}                     xpath://div[@id="form_82A4B7AA-AFD3-4DE7-9834-C3E317EE0ACA"]/div[1]/i[1]
${SIInitiativesRecordNo}                    xpath:(//div[@id='form_82A4B7AA-AFD3-4DE7-9834-C3E317EE0ACA']//div[contains(text(),'- Record #')])[1]
${SIInitiativesProcessFlow}                 xpath://div[@id='btnProcessFlow_form_82A4B7AA-AFD3-4DE7-9834-C3E317EE0ACA']
${SIInitiativesPFEdit}                      xpath:(//div[@id='divProcess_82A4B7AA-AFD3-4DE7-9834-C3E317EE0ACA'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${SIInitiativesAddBtn}                      xpath://div[@id='control_553E1A4E-09B8-4A64-8B9D-A631D30F836E']/div/div[text()='Add an initiative']
${SIInitiativesPFAdd}                       xpath:(//div[@id='divProcess_82A4B7AA-AFD3-4DE7-9834-C3E317EE0ACA'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${SIInitiativesBUDD}                        xpath://div[@id='control_1B017CB2-B482-4AE4-AC1E-3E589A354761']//li
${SIInitiativesBUDDArrow}                   xpath://div[@id='control_1B017CB2-B482-4AE4-AC1E-3E589A354761']/div/a/span[2]/b[@class='select3-down drop_click']
${SIInitiativesBusUnitExpand1}              xpath://ul[@class='jstree-container-ul jstree-children']//a[text()='Global Company']/../i
${SIInitiativesBusUnitExpand2}              xpath://ul[@class='jstree-container-ul jstree-children']//a[text()='South Africa']/../i
${SIInitiativesBusUnitVictorySite}          xpath:(//ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'Victory Site')]/i)[1]
${SIInitiativesProjectTitle}                xpath:(//div[@id='control_5CD5C423-3559-4155-A152-86D25E294254']//input)[1]
${SIInitiativesTypeInitiativeDD}            xpath://div[@id='control_2C68539F-B3A7-4844-A919-CCA67BB70A53']//li
${SIInitiativesTypeInitiativeExpand1}       xpath:(//div[contains(@class,'transition visible')]//li[@title='Environmental Initiatives']//i[@class='jstree-icon jstree-ocl'])[1]
${SIInitiativesTypeInitiativeSelect}        xpath://div[contains(@class, 'transition visible')]//a[text()='Pollution Reduction']
${SIInitiativesCommencementDate}            xpath://div[@id='control_A02E4959-B4FD-4733-BFCD-8153C6F7CD70']//input
${SIInitiativesDeliveryDate}                xpath://div[@id='control_FA763176-78D8-437B-8E60-F14EC6FD89D5']//input
${SIInitiativesApprovedBudget}              xpath:(//div[@id='control_5E293AF0-02B6-4085-81A8-839A648886CD']//input)[1]
${SIInitiativesLocationDD}                  xpath://div[@id='control_3A232C9E-B084-4A78-BED5-9FC568351142']//li
${SIInitiativesLocationSA}                  xpath://div[contains(@class, 'transition visible')]//a[contains(text(),'South Africa')][1]
${SIInitiativesResponsiblePersonDD}         xpath://div[@id='control_C1F24402-51E4-4F49-9520-00D62284121D']//li
${SIInitiativesResponsiblePerson2Manager}         xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'2 Manager')]
${SIInitiativesSectorDD}                    xpath://div[@id='control_6EF2C216-A531-46DB-806C-D5A5365021C9']//li
${SIInitiativesSectorEducation}             xpath://div[contains(@class, 'transition visible')]//a[text()='Education']
${SIInitiativesDescription}                 xpath://div[@id='control_0889A1EE-89BA-4E41-B097-67F10CBD9C92']//textarea
${SIInitiativesSaveBtn}                     xpath://div[@id='btnSave_form_82A4B7AA-AFD3-4DE7-9834-C3E317EE0ACA']
${SIInitiativesBeneficiariesTab}            xpath://li[@id='tab_44909D6E-C90A-4FB1-B404-89A68350B2E5']/div[text()='Beneficiaries']
${SIInitiativesSIBeneficiariesPanel}        xpath://div[@id='control_655C8703-7C34-4A50-8F84-B1BA06B1E6F4']/div[9]/div/i
${SIInitiativesSIBeneficiariesAdd}          xpath://div[@id='control_6607FBD8-B7AF-4790-BF76-23119AE7ACA7']/div/div/div[2]/div[@id='btnAddNew']
${SIInitiativesSIBeneficiariesDD}           xpath://div[@id='control_2BA9C0DA-BB2A-4D66-9800-2DB2BD90F7EA']
${SIInitiativesSIBeneficiariesDavidAbel}         xpath://div[contains(@class, 'transition visible')]//a[text()='David Abel (DA)']
${SIInitiativesSIBeneficiariesSave}         xpath://div[@id='control_6607FBD8-B7AF-4790-BF76-23119AE7ACA7']/div/div/div[2]/div[2][@id='btnSaveAll']
${SIInitiativesRecordNew}                   xpath:(//div[@id='control_50E85B7D-AC6F-4FBD-9745-B4F4583650CD']/div/div[2]/div[2]/div/div[3]/table/tbody/tr/td/div[contains(text(),'FR10_01_Add Initiative_AlternateScenario')])[1]

#*********************************************** FR11 01: View Commitments_MS *****************************************************************
${SICommitmentsInLineEditText}              xpath://div[@id='control_6E618AE2-27CC-4038-9A21-7EB7F68D9F0C']//div[@id="grid"]/div[4]/div/div[1]
${SICommitmentsItems}                       xpath://div[@id='control_6E618AE2-27CC-4038-9A21-7EB7F68D9F0C']//div[@id="grid"]/div[4]/span[2][contains(text(),'items')]
${SICommitmentsRecord}                      xpath://div[@id='control_6E618AE2-27CC-4038-9A21-7EB7F68D9F0C']/div/div[2]/div[2]/div/div[3]/table/tbody/tr[1]
${SICommitmentsLinkBtn}                     xpath://div[@id="form_8541B36E-740A-4367-94DC-BF0661305F0E"]/div[1]/i[1]
${SICommitmentsRecordNo}                    xpath:(//div[@id='form_8541B36E-740A-4367-94DC-BF0661305F0E']//div[contains(text(),'- Record #')])[1]
${SICommitmentsProcessFlow}                 xpath://div[@id='btnProcessFlow_form_8541B36E-740A-4367-94DC-BF0661305F0E']
${SICommitmentsPFEdit}                      xpath:(//div[@id='divProcess_8541B36E-740A-4367-94DC-BF0661305F0E'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${SICommitmentsAddBtn}                      xpath://div[@id='control_E679A8FB-562A-4E40-8531-3A1EF7DBC7CA']/div/div[text()='Add a commitment']
${SICommitmentsPFAdd}                       xpath:(//div[@id='divProcess_8541B36E-740A-4367-94DC-BF0661305F0E'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${SICommitmentsBUDD}                        xpath://div[@id='control_1B017CB2-B482-4AE4-AC1E-3E589A354761']//li
${SICommitmentsLinkMeetingDD}               xpath://div[@id='control_E781027E-993C-4140-99E3-9A7B0EBF31C1']//li
${SICommitmentsLinkMeetingSelect}           xpath:(//div[contains(@class, 'transition visible')]//a[contains(text(),'Executive Meeting')][1])[1]
${SICommitmentsSaveBtn}                     xpath://div[@id='btnSave_form_8541B36E-740A-4367-94DC-BF0661305F0E']
${SICommitmentsRecordNo}                    xpath:(//div[@id='form_8541B36E-740A-4367-94DC-BF0661305F0E']//div[contains(text(),'- Record #')])[1]
${SICommitmentsVGRefresh}                   xpath://div[@id='control_6E618AE2-27CC-4038-9A21-7EB7F68D9F0C']//div[@id="grid"]/div[4]/a[5]
${SICommitmentsRecordNew}                   xpath:(//div[@id='control_6E618AE2-27CC-4038-9A21-7EB7F68D9F0C']/div/div[2]/div[2]/div/div[3]/table/tbody/tr/td/div[contains(text(),'FR11_01_Add Commitment_AlternateScenario')])[1]

#*********************************************** FR12 01: View Associated Resettlement_MS *****************************************************
${SIResettlementInLineEditText}             xpath://div[@id='control_E363277C-112F-4470-9D17-394665FEE2D5']//div[@id="grid"]/div[4]/div/div[1]
${SIResettlementItems}                      xpath://div[@id='control_24AAA983-0C6C-48A6-B2E4-C9618B44A376']//div[@id="grid"]/div[4]/span[2][contains(text(),'items')]
${SIResettlementRecord}                     xpath://div[@id='control_24AAA983-0C6C-48A6-B2E4-C9618B44A376']/div/div[2]/div[2]/div/div[3]/table/tbody/tr[1]
${SIResettlementLinkBtn}                    xpath://div[@id="form_EF9A36DA-D4DF-4476-9ED9-93F87B7F798E"]/div[1]/i[1]
${SIResettlementRecordNo}                   xpath:(//div[@id='form_EF9A36DA-D4DF-4476-9ED9-93F87B7F798E']//div[contains(text(),'- Record #')])[1]
${SIResettlementProcessFlow}                xpath://div[@id='btnProcessFlow_form_EF9A36DA-D4DF-4476-9ED9-93F87B7F798E']
${SIResettlementPFEdit}                     xpath:(//div[@id='divProcess_EF9A36DA-D4DF-4476-9ED9-93F87B7F798E'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']

#*********************************************** FR13 01: View Associated Land Contracts_MS *****************************************************
${SILandAccessInLineEditText}               xpath://div[@id='control_E363277C-112F-4470-9D17-394665FEE2D5']//div[@id="grid"]/div[4]/div/div[1]
${SILandAccessItems}                        xpath://div[@id='control_E363277C-112F-4470-9D17-394665FEE2D5']//div[@id="grid"]/div[4]/span[2][contains(text(),'items')]
${SILandAccessRecord}                       xpath://div[@id='control_E363277C-112F-4470-9D17-394665FEE2D5']/div/div[2]/div[2]/div/div[3]/table/tbody/tr[1]
${SILandAccessLinkBtn}                      xpath://div[@id="form_FAEB34B8-7229-49F5-93D3-14CAAEE33E8A"]/div[1]/i[1]
${SILandAccessRecordNo}                     xpath:(//div[@id='form_FAEB34B8-7229-49F5-93D3-14CAAEE33E8A']//div[contains(text(),'- Record #')])[1]
${SILandAccessProcessFlow}                  xpath://div[@id='btnProcessFlow_form_FAEB34B8-7229-49F5-93D3-14CAAEE33E8A']
${SILandAccessPFEdit}                       xpath:(//div[@id='divProcess_FAEB34B8-7229-49F5-93D3-14CAAEE33E8A'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']

#*********************************************** FR14 01: View Training Management_MS **************************************************************
${SITrainingManInLineEditText}              xpath://div[@id='control_C4F320E6-B864-4583-8884-78DE9F0A237F']//div[@id="grid"]/div[4]/div/div[1]
${SITrainingManItems}                       xpath://div[@id='control_C4F320E6-B864-4583-8884-78DE9F0A237F']//div[@id="grid"]/div[4]/span[2][contains(text(),'items')]
${SITrainingManRecord}                      xpath://div[@id='control_C4F320E6-B864-4583-8884-78DE9F0A237F']/div/div[2]/div[2]/div/div[3]/table/tbody/tr[1]
${SITrainingManLinkBtn}                     xpath://div[@id="form_BCB495DA-2EB4-4068-B70C-C0BC3E47BF2C"]/div[1]/i[1]
${SITrainingManRecordNo}                    xpath:(//div[@id='form_BCB495DA-2EB4-4068-B70C-C0BC3E47BF2C']//div[contains(text(),'- Record #')])[1]
${SITrainingManProcessFlow}                 xpath://div[@id='btnProcessFlow_form_BCB495DA-2EB4-4068-B70C-C0BC3E47BF2C']
${SITrainingManPFEdit}                      xpath:(//div[@id='divProcess_BCB495DA-2EB4-4068-B70C-C0BC3E47BF2C'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']

#*********************************************** FR15 01: View Hygiene Monitoring_MS **************************************************************
${SIHygieneMonInLineEditText}               xpath://div[@id='control_11C9D3BC-24DE-47DB-92E6-D24DF3F2010F']//div[@id="grid"]/div[4]/div/div[1]
${SIHygieneMonItems}                        xpath://div[@id='control_11C9D3BC-24DE-47DB-92E6-D24DF3F2010F']//div[@id="grid"]/div[4]/span[2][contains(text(),'items')]
${SIHygieneMonRecord}                       xpath://div[@id='control_11C9D3BC-24DE-47DB-92E6-D24DF3F2010F']/div/div[2]/div[2]/div/div[3]/table/tbody/tr[1]
${SIHygieneMonLinkBtn}                      xpath://div[@id="form_A9AAF0EB-FDEE-4CD9-BA9C-7C16D3C48E1C"]/div[1]/i[1]
${SIHygieneMonRecordNo}                     xpath:(//div[@id='form_A9AAF0EB-FDEE-4CD9-BA9C-7C16D3C48E1C']//div[contains(text(),'- Record #')])[1]
${SIHygieneMonProcessFlow}                  xpath://div[@id='btnProcessFlow_form_A9AAF0EB-FDEE-4CD9-BA9C-7C16D3C48E1C']
${SIHygieneMonPFInProgressPreSample}        xpath:(//div[@id='divProcess_A9AAF0EB-FDEE-4CD9-BA9C-7C16D3C48E1C'])[2]/div/div[2]/div/div[@class='step active']//div[text()='In Progress - Pre-Sample']

#*********************************************** FR16 01: Capture Work History_MS **************************************************************
${SIWorkHistoryExistRecord}                 xpath://div[@id='control_4CC82A9F-308E-4CE2-AC57-E0B26DF8F468']/div/div[2]/div[2]/div/div[3]/table/tbody/tr[1]
${SIWorkHistoryRecordNo}                    xpath:(//div[@id='form_9AABEE75-5E60-48CD-AFD3-E42F607DC50D']//div[contains(text(),'- Record #')])[1]
${SIWorkHistoryAddBtn}                      xpath://div[@id='control_4CC82A9F-308E-4CE2-AC57-E0B26DF8F468']/div/div/div/div[@id='btnAddNew']
${SIWorkHistoryRecordHeader}                xpath:(//div[@id='form_9AABEE75-5E60-48CD-AFD3-E42F607DC50D']/div/div/div[text()='Work History'])[1]
${SIWorkHistoryPF}                          xpath://div[@id='btnProcessFlow_form_9AABEE75-5E60-48CD-AFD3-E42F607DC50D']
${SIWorkHistoryPFEdit}                      xpath:(//div[@id='divProcess_9AABEE75-5E60-48CD-AFD3-E42F607DC50D'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${SIWorkHistoryPFAdd}                       xpath:(//div[@id='divProcess_9AABEE75-5E60-48CD-AFD3-E42F607DC50D'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${SIWorkHistoryCloseBtn}                    xpath://*[@id="form_9AABEE75-5E60-48CD-AFD3-E42F607DC50D"]/div[1]/i[2]
${SIWorkHistoryItems}                       xpath://div[@id='control_4CC82A9F-308E-4CE2-AC57-E0B26DF8F468']//div[@id="grid"]/div[4]/span[2][contains(text(),'items')]
${SIWorkHistoryJobProfileDD}                xpath://div[@id='control_98786101-EED5-435E-80FE-79C026BF43C6']//li
${SIWorkHistoryJobProfileMainGate}          xpath:(//div[contains(@class, 'transition visible')]//a[contains(text(),'Maingate Drive Operator')][1])[1]
${SIWorkHistorySEGDD}                       xpath://div[@id='control_90A502E8-1540-4CCC-AD8B-A85F27F39444']/div/a/span[2]/b[1]
${SIWorkHistorySEGSelect}                   xpath:(//div[contains(@class, 'transition visible')]//a[contains(text(),'SEG 4')]/i[1])[1]
${SIWorkHistoryStartDate}                   xpath://div[@id='control_53CAA00D-89E4-48DC-8D51-7651B7B78CB6']//input
${SIWorkHistorySaveBtn}                     xpath://div[@id='btnSave_form_9AABEE75-5E60-48CD-AFD3-E42F607DC50D']
${SIWorkHistoryNewAddRecord}                xpath:(//div[@id='control_4CC82A9F-308E-4CE2-AC57-E0B26DF8F468']/div/div[2]/div[2]/div/div[3]/table/tbody/tr/td[6]/div[contains(text(),'Maingate Drive Operator')])[1]
${SIWorkHistorySavedRecordPop}              xpath:(//*[@id="txtHeader"])[2]
${SIWorkHistoryOpenRecordLoading}           xpath://div[@id='divWait']/div[text()='Loading permissions']

#*********************************************** FR17 01: Capture Actions_MS **************************************************************
${SIActionsAddBtn}                          xpath://div[@id='control_9C28A74C-46A0-4CA4-9378-F196C193BD8A']//div[text()='Add']
${SIActionsRecordHeader}                    xpath:(//div[@id='form_3FA76381-27A7-4E29-B2EF-9BE41116F069']/div/div/div[text()='Stakeholder Individual Actions'])[1]
${SIActionsPF}                              xpath://div[@id='btnProcessFlow_form_3FA76381-27A7-4E29-B2EF-9BE41116F069']
${SIActionsPFAdd}                           xpath://div[@class='step active']//div[text()='Add action']
${SIActionsDescription}                     xpath://div[@id='control_1255F613-A69C-476A-8B05-4B87E5CA009F']//textarea
${SIActionsDepartmentDD}                    xpath://div[@id='control_34D02E21-7837-484C-844E-BCC8CC077837']//li
${SIActionsGlobalExpand}                    xpath:(//ul[@class='jstree-container-ul jstree-children']//a[text()='Global Company']/../i)[2]
${SIActionsSAExpand}                        xpath:(//ul[@class='jstree-container-ul jstree-children']//a[text()='South Africa']/../i)[3]
${SIActionsVictorySite}                     xpath:(//ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'Victory Site')])[1]
${SIActionsResposnsibleDD}                  xpath://div[@id='control_7854D003-23E6-4A2E-AF2E-357C965FA684']//li
${SIActionsResposnsible2Manager}            xpath:(//a[text()='2 Manager'])[2]
${SIActionsDueDate}                         xpath://div[@id='control_A1A7A250-4916-472D-A6A5-CDA980F5DA52']//input
${SIActionsSaveBtn}                         xpath://div[@id='btnSave_form_3FA76381-27A7-4E29-B2EF-9BE41116F069']
${SIActionsRecordNo}                        xpath:(//div[@id='form_3FA76381-27A7-4E29-B2EF-9BE41116F069']//div[contains(text(),'- Record #')])[1]
${SIActionsPFToBeInitiated}                 xpath://div[@class='step active']//div[text()='To be initiated']
${SIActionsCloseBtn}                        xpath://div[@id='form_3FA76381-27A7-4E29-B2EF-9BE41116F069']//i[@class='close icon cross']
${SIActionsRecordSMC}                       xpath:((//div[@id='control_9C28A74C-46A0-4CA4-9378-F196C193BD8A']//div//table)[3]//tr)[1]

#*********************************************** FR18 01: View Stakeholder Individual Report_MS **************************************************************
${SIRecordReportsBtn}                       xpath://div[@id='btnReports_form_E686D312-3E2F-4E66-9EAD-AC71C09267DD']
${SIRecordReportSITitle}                    xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div/div/div[1]/div[2]/div[1]
${SIRecordReportOpen}                       xpath:(//div[@id="report_304CB37E-9C26-480A-BDAB-853E9B71750B"]/span[2])[2]
${SIReportsPopUpConfirm}                    xpath://div[@id='btnConfirmYes']
${SIReportPDFViewerScreen}                  xpath:/html/body/pdf-viewer
${SIReportsBtn}                             xpath://div[@id='btnReports']
${SIViewReportsBtn}                         xpath:(//div[@id='divSearchReports_E686D312-3E2F-4E66-9EAD-AC71C09267DD']/div/div[2]/div[2]/span[3])[2]
${SIReportsPopUpConfirm}                    xpath://div[@id='btnConfirmYes']
${SIFullReportsBtn}                         xpath://span[@title='Full report ']
${SIViewReportRightArrow}                   xpath://span[@id='viewer_ctl09_ctl00_Next_ctl00_ctl00']
${SIViewReportExportArrow}                  xpath://span[@id='viewer_ctl09_ctl04_ctl00_ButtonImgDown']
${SIViewReportsLoading}                     xpath://*[@id="viewer_AsyncWait_Wait"]/table/tbody/tr/td[2]
${SIViewReportsWord}                        xpath://div[@id="viewer_ctl09_ctl04_ctl00_Menu"]/div[3]/a


#*********************************************** Stakeholder Individual Notifications *********************************************************
${SignInBtn}                        xpath://a[contains(text(),'Sign in')]
${EmailField}                       xpath://input[@type='email']
${EmailNext}                        xpath://input[@value='Next']
${EmailPasswordField}               xpath://input[@type='password']
${EmailSignInBtn}                   xpath://input[@value='Sign in']
${Outlook}                          xpath://a[@id='ShellMail_link']
${SystemMailFolder}                 xpath://span[text()='System Mail']
${SILoggedSubject}                  xpath:(//span[contains(text(),'IsoMetrix Stakeholder Individual')][contains(text(),'has been added')])[1]
