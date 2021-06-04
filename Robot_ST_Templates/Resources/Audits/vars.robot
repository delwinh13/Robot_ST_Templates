*** Variables ***
#*********************************************** Common Variables ******************************************************
${BROWSER}                  chrome
#${URL}                      https://ch11.isometrix.net/IsoMetrix_Solutions_QASPTest/login.aspx
${URL}                      https://usazu-pr01.isometrix.net/IsoMetrix.Solutions.QA/default.aspx
#${URL}                      https://ch11.isometrix.net/IsoMetrix.Solutions.QASPTest.Features/default.aspx
#${URL}                      https://ch11.isometrix.net/IsoMetrix.Solutions.Dev/default.aspx
${Error Message Text}       Validation: Please enter value
${Username Value}           Manager
${Password Value}           Manager-2021
#${Username Value}           2Manager
#${Password Value}           Manager@202?
${Username ValueIan}        Ian
${Password ValueIan}        Ian-2021
${Username ValueAdmin}      Admin
${Password ValueAdmin}      Admin@202?
${Officeurl}                https://www.office.com
${outlookusername}          Delwin.Horsthemke@isometrix.com
${outlookpassword}          Metrix@May2021

#*********************************************** Page Elements *********************************************************
${Usernameid}                   id:txtUsername
${Passwordid}                   id:txtPassword
${SubmitButtonid}               id:btnLoginSubmit
${Error Message}                xpath://*[@id="txtUsername_tt_active"]/div[2]
${Sidebarlink}                  xpath://*[@id='default-page']/body/div/div[1]/a/i
${FooterSiteVersion}            xpath://footer
${SiteName}                     xpath://div[@class='iso header item brand']//div[@id=contains(text(),'Solutions Templates - QA')]
${iFrame}                       xpath://iframe[@id='ifrMain']
${SolutionsInterface}           xpath://div[@id="siteNavbar"]/div[2]/span['Solutions']

#*********************************************** Audits Module *********************************************************
${EHSButton}                    xpath://label[text()='Environment, Health & Safety']
${AuditsInterfaceButton}        xpath:(//label[text()='Audits'])[1]
${AuditsModuleButton}           xpath:(//label[text()='Audits'])[2]
${AuditsRecordHeader}           xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[1]/div[1]/div
${AuditsSearchButton}           xpath://div[@id='btnActApplyFilter']/div[text()='Search']
${AuditsRecords}                xpath://div[@id='divContainer']/div/div/div[3]/div[2]/div/div[3]/table/tbody/tr[1]/td[4]/span
${AuditsAddButton}              xpath://div[text()='Add']
${AuditProtocolTab}             xpath://li[@id='tab_AC024900-81BE-4806-8799-EE93B7191475']/div[text()='Audit Protocol']
${AuditSupportDocsTab}          xpath://li[@id='tab_B198706E-E62D-4EE0-B919-DDB49D90ABAD']/div[text()='Supporting Documents']
${AuditIntroAuditObjectivePanel}        xpath://div[@class='c-pnl-heading']//span[contains(text(),'Introduction & Audit Objective')]
${AuditsPFButton}               xpath://div[@id='btnProcessFlow_form_C9BF4B41-F36D-48FC-8F3F-FE6BC39DEE07']
${AuditsPFLoggingAuditActive}       xpath:(//div[@id='divProcess_C9BF4B41-F36D-48FC-8F3F-FE6BC39DEE07'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Logging Audit']
${AuditsBusinessUnitDD}         xpath://div[@id='control_5B60ABCF-0B9E-4AF6-B604-8B8C45008B63']
${AuditsBUGlobalCompanyExpand}      xpath://a[text()='Global Company']/../i
${AuditsBUGlobalCompany}            xpath://a[text()='Global Company']
${AuditsBUSouthAfricaExpand}        xpath://a[text()='South Africa']/../i
${AuditsBUVictorySite}              xpath://a[text()='Victory Site']
${AuditsProjectCheckbox}            xpath://div[@id='control_D5B5BDBE-CBBF-47CD-942C-B9D6ABE9CE60']
${AuditsProjectLabel}               xpath://div[contains(text(),'Project')]
${RelatedStakeholderLabel}          xpath://div[contains(text(),'Related stakeholder')]
${RelatedStakeholderDD}             xpath://div[@id='control_74BC552C-C07A-486B-AC3F-1174C339C5BE']//b[1]
${AuditsProjectDD}                  xpath://div[@id='control_5F3EB691-4CF3-4CA2-891E-734354744DD4']
${AuditsProjectSelect}              xpath://div[@id='divForms']/div[6]//a[text()='Expanding the mine']
${AuditsImpactTypeDD}               xpath://div[@id='control_7333CA9A-96BE-486A-B8F4-DC07A0D58268']
${AuditsImpactTypeSelectAll}        xpath:(//div[@id='control_7333CA9A-96BE-486A-B8F4-DC07A0D58268']//b)[2]
${AuditTitle}                       xpath://div[@id='control_190408A8-3D41-4334-A66F-DE1006C92980']/div/div/input
${AuditScope}                       xpath://div[@id='control_04975551-BEE4-4278-9E47-77224B6CA1AA']//textarea
${AuditTypeDD}                      xpath://div[@id='control_762578C8-DE68-4025-B029-4FC1FAB832B5']
${AuditTypeSelectExternal}          xpath://div[@id='divForms']/div[8]//a[text()='External']
${AuditTypeSelectInternal}          xpath://div[@id='divForms']/div[8]//a[text()='Internal']
${AuditTypeSelectSupplier}          xpath://div[@id='divForms']/div[8]//a[text()='Supplier']
${AuditRelatedStakeholderSearchField}           xpath://body/div[1]/div[3]/div[1]/div[2]/div[9]/div[1]/input[1]
${AuditRS_RegAuth}                  xpath://li[@title='Reg Auth1']/a
${AuditProtocolDD}                  xpath://div[@id='control_464907F1-B84F-4A4F-8228-7BDAF119EE53']
${AuditProtocolSelect}              xpath://div[@id='divForms']/div[10]//a[text()='1. Audit Procedure ']
${AuditProcessActivitySelectAll}              xpath://div[@id='control_EEA456A2-6A09-4F8B-85AB-C2F3E0581B03']/div/a/span[2]/b[1]
${AuditProcessActivityBusAdminExpand}         xpath://body/div[1]/div[3]/div[1]/div[2]/div[2]/div[4]/div[4]/div[9]/div[2]/div[1]/div[1]/div[19]/div[1]/div[1]/ul[1]/ul[1]/li[3]/i[1]
${AuditProcessActivityCommunications}         xpath://*[@id="e193b3d4-40ae-4880-9359-089a18e3741d"]/a//i[1]
${AuditProcessActivitySelected}               xpath://div[@id='control_EEA456A2-6A09-4F8B-85AB-C2F3E0581B03']/div/a/span/ul/li[contains(text(),'Business Administration -> Communications')]
${AuditManagerDD}                   xpath://div[@id='control_D718214C-2A59-46A6-A6E8-7F5FDFBBF85F']
${AuditManager_2Manager}            xpath://div[@id='divForms']/div[11]//a[contains(text(),'2 Manager')]
${AuditManager_1Admin}              xpath://div[@id='divForms']/div[11]//a[contains(text(),'1 Administrator')]
${AuditeeDD}                        xpath://div[@id='control_22098F99-2305-40B1-85C3-860634B5B5F1']
${Auditee_2Manager}                 xpath://div[@id='divForms']/div[12]//a[contains(text(),'2 Manager')]
${PersonConductingAuditDD}          xpath://div[@id='control_44BFB53D-90E8-4FED-84C4-3C4C4A6A1F46']
${PersonConductingAudit_2Manager}          xpath://div[@id='divForms']/div[13]//a[contains(text(),'2 Manager')]
${AuditStartDate}                   xpath://div[@id='control_40752CA7-D6F1-429B-BF6E-ADD0A20A8FC0']//input
${AuditEndDate}                     xpath://div[@id='control_4ACB9871-78C2-4168-B78A-CCF6CD3FB877']//input
${AuditIntroduction}                xpath://div[@id='control_5550C644-1C46-4904-A7F7-01648A0B3674']//textarea
${AuditObjective}                   xpath://div[@id='control_C559A407-5194-4245-83E3-7EDDB7598A8E']//textarea
${AuditSaveandContinue}             xpath://div[contains(text(),'Save and continue')]
${AuditSaveBtn}                     xpath://div[@id='divForms']/div[2]/div[2]//div[text()='Save']
${AuditSubmitBtn}                   xpath://div[@id='control_1F8CB22C-C147-416C-88BD-139A6744FAA8']//div[contains(text(),'Submit audit')]
${AuditSaving}                      xpath:.//div[text()='Saving...']
${RecordSaved}                      xpath://*[@id="txtHeader"]
${AuditsPFPlannedActive}            xpath:(//div[@id='divProcess_C9BF4B41-F36D-48FC-8F3F-FE6BC39DEE07'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Planned']
${AuditsTeamTab}                    xpath://div[@id='control_6D1637B8-FFA4-4A93-B56F-0CEF65B47FE6']/div[9]/div/div[3]//div[text()='Audit Team']
${AuditRisksIncidentsTab}           xpath://div[@id='control_6D1637B8-FFA4-4A93-B56F-0CEF65B47FE6']/div[9]/div/div[3]//div[text()='Risks and Incidents']
${AuditActionsTab}                  xpath://div[@id='control_6D1637B8-FFA4-4A93-B56F-0CEF65B47FE6']/div[9]/div/div[3]//div[text()='Actions']
${AuditPlanningStatus}              xpath://div[@id='control_179D01D9-B34C-4492-8566-CADBDC25C4A3']//li[text()='Planning']
${AuditsSavedRecordNo}              xpath:(//div[@id='form_C9BF4B41-F36D-48FC-8F3F-FE6BC39DEE07']//div[contains(text(),'- Record #')])[1]
${AuditsSearchPageRecord1}          xpath:(//div[@moduleid='E6063B47-94EB-45D6-8183-61ABD2E8D908']/div/table/tbody/tr)[1]
${AuditProposeDatesCheckbox}        xpath://div[@id='control_D8D6E5B8-56D4-4FBC-8723-D67F071BA164']
${AuditSuggestedStartDate}          xpath://div[@id='control_316CCF4D-814A-4538-BA5A-E9245C8FF01C']//input
${AuditDatescanonlybeupdated}       xpath://div[@id='control_059ADDEC-6CBF-4E0F-8A89-FEC5546D7322']/div[contains(text(),'Dates can only be updated when suggested dates are populated')]
${AuditSuggestedEndDate}            xpath://div[@id='control_112EEFA2-F98A-445B-A27F-D0C0EE00008F']//input
${AuditPleasenotethatauditmanager}      xpath://div[@id='control_C701446E-5504-4D2D-8D80-036E519D0546']/div[contains(text(),'Please note that the audit manager must log in to accept the proposed date.')]
${AuditNewProposedDateComments}         xpath://div[@id='control_1CB03513-F3F5-41DA-A672-E27CD1BB069C']//textarea
${AuditSupportDocTab}               xpath://li[@id='tab_B198706E-E62D-4EE0-B919-DDB49D90ABAD']//div[contains(text(),'Supporting Documents')]
${AuditSupportDocLinkDocument}      xpath://div[@id='control_990FE35A-7BC7-4586-BD6B-5B87A3250F32']//b[@original-title='Link to a document']
${AuditSupportDocUrl}               xpath://div[@class='confirm-popup popup']//input[@id='urlValue']
${AuditSupportDocURLTitle}          xpath://div[@class='popup-container']//input[@id='urlTitle']
${AuditSupportDocURLAdd}            xpath://div[@class='popup-container']//div[contains(text(),'Add')]
${AuditProtocolTab}                 xpath://li[@id='tab_AC024900-81BE-4806-8799-EE93B7191475']//div[contains(text(),'Audit Protocol')]
${AuditAdminSearchRecordOpen}       xpath:(//div[@id='grid']/div[3]/table/tbody/tr/td[4]/span[@type='recordnumber'])[1]
${AuditAcceptProposeDatesChckbx}    xpath://div[@id='control_D32D88DD-06DF-4A16-85A3-D64D955BDAE2']
${AuditScheduleApprovedPanel}       xpath://div[@id='control_8219D503-1E1B-4E23-9E1A-C03C681F45E0']//span[text()='Schedule Approved']
${AuditApprovedByDDAdmin}           xpath://div[@id='control_77185B80-A034-4604-96D7-B4ED14CDDC9E']//li[text()='1 Administrator']
${AuditDateApproved}                xpath://div[@id='control_DA58BA11-19D3-4B7D-8214-C6DB5442822E']//input
${AuditStatusScheduled}             xpath://div[@id='control_179D01D9-B34C-4492-8566-CADBDC25C4A3']//li[text()='Scheduled']
${AuditsPFScheduledActive}          xpath:(//div[@id='divProcess_C9BF4B41-F36D-48FC-8F3F-FE6BC39DEE07'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Scheduled']
${AuditSubmitNewDatesBtn}           xpath://div[@id='control_41B0CE6B-15DC-41D5-94C3-B0258BD0FBB3']
${AuditStartAuditBtn}               xpath://div[text()='Start Audit']
${AuditStatusInProgress}            xpath://div[@id='control_179D01D9-B34C-4492-8566-CADBDC25C4A3']//li[text()='In progress']
${AuditPFInProgress_Overdue}        xpath:(//div[@id='divProcess_C9BF4B41-F36D-48FC-8F3F-FE6BC39DEE07'])[2]/div/div[2]/div/div[@class='step active']//div[text()='In Progress or Overdue']

#*********************************************** FR2-01: Capture Audit Team_MS ******************************************************
${AuditTeamTab}                     xpath://div[@id='control_6D1637B8-FFA4-4A93-B56F-0CEF65B47FE6']/div[9]/div/div[3]//div[text()='Audit Team']
${AuditTeamNoResults}               xpath://div[@id="grid"]/div[3]/div[text()='No results returned']
${AuditTeamAddBtn}                  xpath://div[@id='control_6BAFACB3-7AB5-40DA-A504-FFBA016D0981']//div[text()='Add']
${AuditTeamInlineRecord}            xpath:/html[1]/body[1]/div[1]/div[3]/div[1]/div[2]/div[2]/div[4]/div[4]/div[9]/div[2]/div[2]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[3]/table[1]/tbody[1]/tr[1]/td[1]/div[1]
${AuditTeamFullNameDD}              xpath://div[@id='control_74F3ABB3-D328-4733-BFC4-9D151C8478D3']//li
${AuditTeamFullNameSelect}          xpath://a[text()='David Abel (DA)']
${AuditTeamExperienceRole}          xpath://div[@id='control_9D9BAC87-D7A1-4552-A9B0-08F2ACCC4157']/div[1]/div/input
${AuditTeamStartDate}               xpath://div[@id='control_B1A6F86B-56C1-4100-81F6-F9DE01644413']//input
${AuditTeamEndDate}                 xpath://div[@id='control_0957E548-2540-4095-98A0-A8C30DB9FB72']//input
${AuditTeamSaveBtn}                 xpath://div[@id='control_6BAFACB3-7AB5-40DA-A504-FFBA016D0981']//div[text()='Save']
${AuditTeamOpenRecordIcon}          xpath://tbody/tr[@id='formWrapper_0']/td[2]/i[1]
${AuditTeamBreadcrumb}              xpath:(//div[@id='form_A36EC02E-CF25-4185-8369-676F5D7E54A7']//div[contains(text(),'Audit Team')])[1]
${AuditTeamProcessFlow}             xpath://div[@id='btnProcessFlow_form_A36EC02E-CF25-4185-8369-676F5D7E54A7']
${AuditTeamPFEditPhase}             xpath:(//div[@id='divProcess_A36EC02E-CF25-4185-8369-676F5D7E54A7'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${AuditTeamEstimatedHours}          xpath://div[@id='form_A36EC02E-CF25-4185-8369-676F5D7E54A7']//div[@id='control_CEE2D645-02D7-4931-9474-A2D4706B148B']//input[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${AuditTeamEditRecordSave}          xpath://div[@id='btnSave_form_A36EC02E-CF25-4185-8369-676F5D7E54A7']//div[text()='Save']
${AuditTeamCloseBtn}                xpath://div[@id="form_A36EC02E-CF25-4185-8369-676F5D7E54A7"]/div[1]/i[2]
${AuditTeamRecordFullName}          xpath://div[@id='control_74F3ABB3-D328-4733-BFC4-9D151C8478D3']//li[text()='David Abel (DA)']
${AuditTeamRecordSaved}             xpath:(//*[@id="txtHeader"])[2]

#*********************************************** FR4_01_CaptureAuditFindings_MS ******************************************************
${AuditFindingsTab}                 xpath://div[text()='Findings']
${AuditFindingsNoResults}           xpath://div[@id="grid"]/div[3]/div[text()='No results returned']
${AuditFindingsAddBtn}              xpath:(//div[text()='Add'])[2]
${AuditFindingsBreadcrumb}          xpath:(//div[@class='navbar']//div[@id='nav_CEB65E1E-0FE0-410C-9786-1A7C036B69D0'][text()='Audit Findings'])[1]
${AuditFindingsProcessFlow}         xpath://div[@id='btnProcessFlow_form_CEB65E1E-0FE0-410C-9786-1A7C036B69D0']
${AuditFindingsPFAdd}               xpath:(//div[@id='divProcess_CEB65E1E-0FE0-410C-9786-1A7C036B69D0'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${AuditFindingsElementsDD}          xpath://div[@id='control_6690F99C-7292-4FAA-8032-1DEF729FA474']
${AuditFindingsElementExpand1}          xpath://a[text()='1. Audit Procedure ']/../i
${AuditFindingsElementSelect}       xpath://a[text()='Section frontline']
${AuditFindingsElementChkBx}        xpath://div[@id='control_C7F5BCF3-5E39-4926-B839-AC444423B8D8']/div[@class='c-chk']
${AuditFindinsgMoreInfo}            xpath://div[@id='control_8A5CD399-4A9E-4FAC-AE26-44E49C8D7DE8']/div/div/textarea
${AuditFindingsDescription}         xpath://div[@id='control_40ECC722-B08B-48F3-9906-3CFCE527C5CD']/div/div/textarea
${AuditFindingsOwnerDD}             xpath://div[@id='control_434D9128-5EBC-4E25-9836-72A2C4451733']
${AuditFindingsOwner1Admin}         xpath:(//a[contains(text(),'1 Administrator')])[1]
${AuditFindingsRiskSourceDD}        xpath://div[@id='control_E2CBB706-26AB-4373-813A-05D4860FC38F']
${AuditFindingsRiskSourceExpand1}       xpath:(//a[text()='Access control hazards']/../i)[1]
${AuditFindingsRiskSourceSelect}        xpath://a[text()='Access control hazards']/..//a[text()='Unauthorised access to hazardous areas']/i[1]
${AuditFindingsRiskSourceDDArrow}       xpath://div[@id='control_E2CBB706-26AB-4373-813A-05D4860FC38F']/div/a/span[2]/b[1]
${AuditFindingsClassDD}             xpath://div[@id='control_7689E71C-DC7E-41C1-9124-C6312596E956']
${AuditFindingsClassSelect}         xpath:(//a[contains(text(),'Observation')])[1]
${AuditFindingsRiskDD}              xpath://div[@id='control_1D7F3DE4-F9C4-4626-80C9-0E600A0A8FF8']
${AuditFindingsRiskSelect}          xpath://a[text()='Access control: Unauthorised Access to / Incompetent Persons exposed to High Potential Hazards']
${AuditFindingsSupportDocTab}       xpath://li[@id='tab_E3A1B1CF-5B69-453A-9FDB-824EBD012F54']//div[contains(text(),'Supporting Documents')]
${AuditFindingsSupportDocLinkDocument}      xpath://div[@id='control_26D8DE84-DA5D-40D8-A3C5-890D11364B66']//b[@original-title='Link to a document']
${AuditFindingsDetailTab}           xpath://li[@id='tab_95E14398-836C-4843-B45F-1D65A39C9027']//div[contains(text(),'Finding Detail')]
${AuditFindingsSaveContinue}        xpath:(//div[text()='Save and continue'])[2]
${AuditFindingsPFEdit}              xpath:(//div[@id='divProcess_CEB65E1E-0FE0-410C-9786-1A7C036B69D0'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${AuditFindingsRecordNo}            xpath:(//div[@id='form_CEB65E1E-0FE0-410C-9786-1A7C036B69D0']//div[contains(text(),'- Record #')])[1]
${AuditFindingsCloseBtn}            xpath://*[@id="form_CEB65E1E-0FE0-410C-9786-1A7C036B69D0"]/div[1]/i[2]
${AuditFindingsCloseYES}            xpath://div[@id='btnConfirmYes']
${AuditFindingsSearchRecord}        xpath://div[@id='control_FEBCB531-E1C1-414D-8D0C-709F4C3E9F51']/div/div[2]/div[2]/div[@id='grid']/div[3]/table/tbody/tr[1]

#*********************************************** FR5_01_ViewRelatedRisks_MainScenario *********************************************
${AuditRelatedRiskIncidentTab}      xpath://li[@id='tab_156B06A5-B098-4DE8-8E0B-92A0F081C4CA']
${AuditRelatedRiskPanel}            xpath://div[@id='control_49998CE8-FCBD-4D80-8DE1-41F04171D2A0']/div/div/span[text()='Related Risks']
${AuditRelatedRiskVGRecord}         xpath://div[@id='control_81DF9DCE-D909-49AB-B542-610B6CDCBB7E']/div/div[2]/div[2]/div/div[3]/table/tbody/tr[1]
${AuditRelatedRiskRecordNo}         xpath:(//div[@id='form_3AB45051-222E-416C-AAD3-86B2EDA98BED']//div[contains(text(),'- Record #')])[1]
${AuditRelatedRiskRecordPF}         xpath://div[@id='btnProcessFlow_form_3AB45051-222E-416C-AAD3-86B2EDA98BED']

#*********************************************** FR6-View Related Incidents_MainScenario ******************************************
${AuditRelatedIncidentPanel}        xpath://div[@id='control_54D525EB-79D8-4A60-AF08-CCB70E227374']/div/div/span[text()='Related Incidents']
${AuditRelatedIncidentVGRecord}     xpath://div[@id='control_49585CC2-5547-456B-987A-208F91A99183']/div/div[2]/div[2]/div/div[3]/table/tbody/tr[1]
${AuditRelatedIncidentRecordNo}     xpath:(//div[@id='form_B6196CB4-4610-463D-9D54-7B18E614025F']//div[contains(text(),'- Record #')])[1]
${AuditRelatedIncidentRecordPF}     xpath://div[@id='btnProcessFlow_form_B6196CB4-4610-463D-9D54-7B18E614025F']

#*********************************************** FR7_01_AuditOverdue_MainScenario ******************************************
${AuditSearchStatusDD}              xpath://div[@class='optionsPanel firstPanel primary']/table/tbody/tr[6]/td[5]/div/a/span/ul/li[text()='Please select']
${AuditSearchStatusOverdue}         xpath://ul[@class='select3-results jstree jstree-1 jstree-default jstree-checkbox-selection jstree-loading']/ul/li[4]/a/i[1]
${AuditSearchStatusDDArrow}         xpath://div[@class='optionsPanel firstPanel primary']/table/tbody/tr[6]/td[5]/div/a/span[2]/b[1]
${AuditSearchRecordOverdue}         xpath://div[@id='divContainer']/div/div/div[3]/div[2]/div/div[3]/table/tbody/tr[1]/td[9]/div[text()='Overdue']
${AuditRecordStatusOverdue}         xpath://div[@id='control_179D01D9-B34C-4492-8566-CADBDC25C4A3']/div/a/span/ul/li[text()='Overdue']

#*********************************************** FR8_01_CaptureAuditActions_MainScenario ******************************************
${AuditActionsAddBtn}               xpath://div[@id='control_A14067F4-B0D1-468C-B5B8-D0B7BA136E70']//div[text()='Add']
${AuditActionsBreadcrumb}           xpath:(//div[@class='navbar']//div[@id='nav_604E6965-D428-4B3F-897B-DDE2004A50E3'][text()='Audit Actions'])[1]
${AuditActionsPF}                   xpath://div[@id='btnProcessFlow_form_604E6965-D428-4B3F-897B-DDE2004A50E3']
${AuditActionsPFAddActions}         xpath:(//div[@id='divProcess_604E6965-D428-4B3F-897B-DDE2004A50E3'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add action']
${AuditActionsDescription}          xpath://div[@id='control_1255F613-A69C-476A-8B05-4B87E5CA009F']//textarea
${AuditActionDepartResponsDD}       xpath://div[@id='control_34D02E21-7837-484C-844E-BCC8CC077837']//li
${AuditsActionsBUGlobalCompanyExpand}      xpath:(//li/a[text()='Global Company']/../i)[2]
${AuditsActionsBUGlobalCompany}            xpath://a[text()='Global Company']
${AuditsActionsBUSouthAfricaExpand}        xpath:(//li/a[text()='South Africa']/../i)[2]
${AuditsActionsBUVictorySite}              xpath:(//li/a[text()='Victory Site'])[2]
${AuditActionsRespPersonDD}         xpath://div[@id='control_7854D003-23E6-4A2E-AF2E-357C965FA684']//li
${AuditActionsRespPerson2Manager}           xpath:(//a[contains(text(),'2 Manager')])[4]
${AuditActionsDueDate}              xpath://div[@id='control_A1A7A250-4916-472D-A6A5-CDA980F5DA52']//input
${AuditActionsSaveBtn}              xpath://div[@id='btnSave_form_604E6965-D428-4B3F-897B-DDE2004A50E3']//div[text()='Save']
${AuditActionsRecordNo}             xpath:(//div[@id='form_604E6965-D428-4B3F-897B-DDE2004A50E3']//div[contains(text(),'- Record #')])[1]
${AuditActionsCloseBtn}             xpath://*[@id="form_604E6965-D428-4B3F-897B-DDE2004A50E3"]/div[1]/i[2]
${AuditActionsRecordModule}         xpath://div[@id='grid']/div[3]/table/tbody//div[text()='2 Manager']

#*********************************************** FR9_01_AuditAwaitingSignOff_MainScenario ******************************************
${AuditSubmitSignOffBtn}            xpath://div[text()='Submit for sign off']
${AuditPFAwaitingSignOff}           xpath:(//div[@id='divProcess_C9BF4B41-F36D-48FC-8F3F-FE6BC39DEE07'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Awaiting Sign Off']
${AuditProtocolTab}                 xpath://li[@id='tab_AC024900-81BE-4806-8799-EE93B7191475']//div[text()='Audit Protocol']
${AuditStatusAwaitingSignOff}       xpath://div[@id='control_179D01D9-B34C-4492-8566-CADBDC25C4A3']//li[text()='Awaiting sign off']
${AuditSignOffTab}                  xpath://li[@id='tab_006AFF62-D481-4DC3-8668-042C24DAA78C']//div[text()='Sign Off']


#*********************************************** FR10_01_SignOffApproval_MS ************************************************
${AuditSignOffTab}                  xpath://li[@id='tab_006AFF62-D481-4DC3-8668-042C24DAA78C']//div[contains(text(),'Sign Off')]
${AuditRatingDD}                    xpath://div[@id='control_5213D864-F82C-47D4-95B2-61AAEE184219']//li
${AuditRatingSatisfactory}          xpath://a[text()='Satisfactory']
${AuditRatingUnsatisfactory}        xpath://a[text()='Unsatisfactory']
${AuditConclusion}                  xpath://div[@id='control_99523AA3-5DB6-4863-9A06-6D53E3328EDE']//textarea
${AuditSignOffAddBtn}               xpath://div[@id='control_96B9B81E-CE18-4CFD-8F16-1496E3427BDF']//div[contains(text(),'Add')]
${AuditSignOffBreadcrumb}           xpath:(//div[@class='navbar']//div[@id='nav_A52889B0-7739-4666-BA87-CE3F77BAB495'][text()='Audit Sign Off'])[1]
${AuditSignOffPF}                   xpath://div[@id='btnProcessFlow_form_A52889B0-7739-4666-BA87-CE3F77BAB495']
${AuditSignOffPFAddPhase}           xpath:(//div[@id='divProcess_A52889B0-7739-4666-BA87-CE3F77BAB495'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${AuditSignOffPFEditPhase}          xpath:(//div[@id='divProcess_A52889B0-7739-4666-BA87-CE3F77BAB495'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${AuditsSignOffAuditorTypeDD}       xpath://div[@id='control_F8F35C1B-6B3C-4885-9834-C64C5DDA4555']
${AuditsSignOffAuditorTypeManager}        xpath://a[text()='Audit manager']
${AuditsSignOffAuditorTypeSeniorAuditor}        xpath://a[text()='Senior auditor']
${AuditSignOffAuditorDD}            xpath://div[@id='control_DEA38CFE-258E-4507-BE92-180D8536EF89']
${AuditSignOffAuditorAdmin}         xpath:(//a[text()='1 Administrator'])[2]
${AuditSignOffDD}                   xpath://div[@id='control_AC075E37-7F8F-4DEC-8DF0-02DC8D70BDFB']
${AuditSignOffDDYes}                xpath://div[contains(@class, 'transition visible')]//a[contains(text(),'Yes')]
${AuditSignOffDDNo}                 xpath:/html[1]/body[1]/div[1]/div[3]/div[1]/div[2]/div[23]/ul[1]/ul[1]/li[2]/a[1]
${AuditSignOffDate}                 xpath://div[@id='control_F827E5FA-7D43-44C5-867C-2F9A5A283D0A']/div/span/span/input
${AuditSignOffComments}             xpath://div[@id='control_5FC74CF8-0BE4-459D-9599-A35927F43D28']//textarea
${AuditSignOffEmailComments}        xpath://div[contains(@class, 'transition visible')]//a[contains(text(),'2 Manager')]//i[@class='jstree-icon jstree-checkbox']
${AuditSignOffSaveBtn}              xpath:(//div[@id='btnSave_form_A52889B0-7739-4666-BA87-CE3F77BAB495']//div[contains(text(),'Save')])[3]
${AuditSignOffRecordNo}             xpath:(//div[@id='form_A52889B0-7739-4666-BA87-CE3F77BAB495']//div[contains(text(),'- Record #')])[1]
${AuditSignOffPFEditPhase}          xpath:(//div[@id='divProcess_A52889B0-7739-4666-BA87-CE3F77BAB495'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${AuditSignOffCloseBtn}             xpath://*[@id="form_A52889B0-7739-4666-BA87-CE3F77BAB495"]/div[1]/i[2]
${AuditSignOffYesRecord}            xpath://div[@id='control_96B9B81E-CE18-4CFD-8F16-1496E3427BDF']//div[@id='grid']/div[3]/table/tbody/tr/td[8]//div[text()='Yes']
${AuditSignOffNoRecord}             xpath://div[@id='control_96B9B81E-CE18-4CFD-8F16-1496E3427BDF']//div[@id='grid']/div[3]/table/tbody/tr/td[8]//div[text()='No']
${AuditPFCompleted}                 xpath:(//div[@id='divProcess_C9BF4B41-F36D-48FC-8F3F-FE6BC39DEE07'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Completed']
${AuditStatusCompleted}             xpath://div[@id='control_179D01D9-B34C-4492-8566-CADBDC25C4A3']//li[text()='Completed']
${AuditRecordCloseBtn}              xpath://*[@id="form_C9BF4B41-F36D-48FC-8F3F-FE6BC39DEE07"]/div[1]/i[2]
${AuditCloseAlertYes}               xpath://div[@id='divConfirm']/div/div/div[2]/div[2]/div[text()='Yes']
${AuditSearchResultsComplete}       xpath:(//div[@id='grid']/div[3]/table/tbody/tr/td/div[text()='Completed'])[1]
${AuditSearchResultsInProgress}         xpath:(//div[@id='grid']/div[3]/table/tbody/tr/td/div[text()='In progress'])[1]

#*********************************************** FR11_01_ViewPrintAuditReport_MS ************************************************
${AuditsRecordReportBtn}            xpath://div[@id='act_form_right']//div[@id='btnReports_form_C9BF4B41-F36D-48FC-8F3F-FE6BC39DEE07']
${AuditsRecordReportAuditTitle}     xpath://body/div[1]/div[3]/div[1]/div[2]/div[3]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]
${AuditsRecordReportOpen}           xpath:(//div[@id="report_D95F2674-BC30-4EF1-8C33-E552BFE7E03D"]/span[2])[2]



#*********************************************** FR12_01_ViewAuditRegisters_MS ************************************************
${AuditsReportsBtn}                 xpath://div[@id='btnReports']
${AuditsReportAuditTitle}           xpath:(//div[@id='divSearchReports_C9BF4B41-F36D-48FC-8F3F-FE6BC39DEE07']/div/div/div/div[text()='Audit'])[2]
${AuditsViewReportsBtn}             xpath:(//div[@id='divSearchReports_C9BF4B41-F36D-48FC-8F3F-FE6BC39DEE07']/div/div[2]/div[2]/span[3])[2]
${AuditsReportsPopUpConfirm}        xpath://div[@id='btnConfirmYes']
${AuditsViewReportRightArrow}       xpath://span[@id='viewer_ctl09_ctl00_Next_ctl00_ctl00']
${AuditsViewReportExportArrow}      xpath://span[@id='viewer_ctl09_ctl04_ctl00_ButtonImgDown']
${AuditsViewReportExportWord}       xpath://a[contains(text(),'Word')]
${AuditsFullReportsBtn}             xpath://span[@title='Full report ']


#*********************************************** Audits Notifications *********************************************************
${SignInBtn}                        xpath://a[contains(text(),'Sign in')]
${EmailField}                       xpath://input[@type='email']
${EmailNext}                        xpath://input[@value='Next']
${EmailPasswordField}               xpath://input[@type='password']
${EmailSignInBtn}                   xpath://input[@value='Sign in']
${Outlook}                          xpath://a[@id='ShellMail_link']
${SystemMailFolder}                 xpath://span[text()='System Mail']
${AuditLoggedSubject}               xpath:(//span[contains(text(),'IsoMetrix Audit')][contains(text(),'has been logged.')])[1]
${AuditNewDatesProposedSubject}     xpath:(//span[contains(text(),'IsoMetrix Audit')][contains(text(),'new date proposed.')])[1]
${AuditEmailLinkBacktoRecord}       xpath://a[@data-auth='NotApplicable']
${AuditTeamSubject}                 xpath:(//span[contains(text(),'IsoMetrix Audit')][contains(text(),'Team member added.')])[1]
${AuditFindingsSubject}             xpath:(//span[contains(text(),'IsoMetrix Audit Finding')][contains(text(),'has been Added')])[1]
${AuditOverdueSubject}              xpath:(//span[contains(text(),'IsoMetrix Audit')][contains(text(),'is overdue.')])[1]
${AuditActionsSubject}              xpath:(//span[contains(text(),'IsoMetrix Audit Actions')][contains(text(),'has been logged.')])[1]
${AuditAwaitingSignOffSubject}      xpath:(//span[contains(text(),'IsoMetrix Audit')][contains(text(),'is awaiting sign off.')])[1]
${AuditSignedOffSubject}            xpath:(//span[contains(text(),'IsoMetrix Audit')][contains(text(),'signed off.')])[1]
${AuditSignOffRejectedSubject}      xpath:(//span[contains(text(),'IsoMetrix Audit')][contains(text(),'sign off rejected.')])[1]

${AS2Test}                          Audits Enter Details_FR1 01-01: Capture Audit_AS2

