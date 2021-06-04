*** Variables ***
#*********************************************** Ad_Hoc Actions Module *********************************************************
${EHSButton}                    xpath://label[text()='Environment, Health & Safety']
${AdHocActions}                 xpath://label[text()='Ad-Hoc Actions']
${AdHocActionsAddBtn}           xpath://div[@id='btnActAddNew']
${AdHocActionsSearchButton}     xpath://div[@id='btnActApplyFilter']/div[text()='Search']
${AdHocActionsRecords}          xpath://div[@id='divContainer']/div/div/div[3]/div[2]/div/div[3]/table/tbody/tr[1]/td[5]
${AdHocActionsRecordHeader}     xpath:/html/body/div[1]/div[3]/div/div[2]/div[2]/div[1]/div[1]/div
${AdHocActionsSaveContinue}     xpath://div[@id='control_7AD7DA6A-8525-43B0-B87E-02D486AB9AEF']//div[text()='Save and continue']
${iFrame}                       xpath://iframe[@id='ifrMain']
${SESupportDocsLink}            xpath://div[@id='control_BFA08DA7-DF6E-4B10-A435-4EBD13654902']//b[@original-title='Link to a document']
${SESavesupportingdocuments}        xpath://div[@id='control_6810CB58-13EE-4E0C-909D-DAE1B6392594']/div/div[text()='Save supporting documents']
${SESupportDocsLinkAdded}           xpath://div[@class='linkbox-links linkbox-icons']/div/div[text()='Isometrix']
${Officeurl}                    https://www.office.com
${outlookusername}              Delwin.Horsthemke@isometrix.com
${outlookpassword}              Metrix@May2021
${ActionsLoggedSubject}         xpath:(//span[contains(text(),'IsoMetrix Ad-Hoc Actions')][contains(text(),'has been logged.')])[1]
${ActionsPendingSubject}        xpath:(//span[contains(text(),'IsoMetrix')][contains(text(),'is now pending.')])[1]
${DeletecItemsFolder}           xpath:(//span[text()='Deleted Items'])[1]
${ActionsFeedbackSubject}       xpath:(//span[contains(text(),'IsoMetrix Ad-Hoc Actions')][contains(text(),'feedback has been logged.')])[1]
${ActionsFeedbackAwaitingSignOffSubject}       xpath:(//span[contains(text(),'IsoMetrix Ad-Hoc Actions')][contains(text(),'is awaiting sign off.')])[1]
${ActionsExtensionSubject}      xpath:(//span[contains(text(),'IsoMetrix Ad-Hoc Actions')][contains(text(),'received an extension request.')])[1]
${ActionsExtensionApprovedSubject}          xpath:(//span[contains(text(),'Ad-Hoc Actions')][contains(text(),'extension request has been approved.')])[1]
${ActionsExtensionRejectedSubject}          xpath:(//span[contains(text(),'Ad-Hoc Actions')][contains(text(),'extension request has been rejected.')])[1]
${ActionsSignOffAcceptedSubject}            xpath:(//span[contains(text(),'Ad-Hoc Actions')][contains(text(),'has been signed off.')])[1]
${ActionsCompletedSubject}                  xpath:(//span[contains(text(),'Ad-Hoc Actions')][contains(text(),'has been completed.')])[1]
${ActionsSignOffRejectedSubject}            xpath:(//span[contains(text(),'Ad-Hoc Actions')][contains(text(),'sign off has been rejected.')])[1]

#*********************************************** Capture Ad_Hoc Actions *********************************************************
${AdHocActionsPF}               xpath://div[@id='btnProcessFlow_form_94F07C26-6A5F-40E3-959B-BF1732306DFF']
${AdHocActionsPFAddPhase}       xpath:(//div[@id='divProcess_94F07C26-6A5F-40E3-959B-BF1732306DFF'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add phase']
${AdHocActionsPFEditPhase}      xpath:(//div[@id='divProcess_94F07C26-6A5F-40E3-959B-BF1732306DFF'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit phase']
${AdHocActionsBUDD}             xpath://div[@id='control_032851E6-3D2C-4FAC-8D41-FE7AEC9CB297']
${AdHocActionsBUGlobalCompanyExpand}        xpath://a[text()='Global Company']/../i
${AdHocActionsBUSouthAfricaExpand}          xpath://a[text()='South Africa']/../i
${AdHocActionsBUVictorySite}                xpath://a[text()='Victory Site']
${AdHocActionsImpactTypeDD}                 xpath://div[@id='control_EC903E66-92F0-4B86-9871-136D500FE56F']
${AdHocActionsImpactTypeBusRisk}            xpath:(//a[text()='Business Risk']/i)[1]
${AdHocActionsImpactTypeSelectAll}          xpath:(//div[@id='control_EC903E66-92F0-4B86-9871-136D500FE56F']//b)[2]
${AdHocActionsDescription}      xpath://div[@id='control_5FBC4126-ED36-41A8-A92D-255E839A2FCA']//textarea[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${RecordSaved}                  xpath://*[@id="txtHeader"]
${RecordSaved2}                 xpath:(//*[@id="txtHeader"])[2]
${AdHocActionsRecordNo}         xpath:(//div[@id='form_94F07C26-6A5F-40E3-959B-BF1732306DFF']//div[contains(text(),'- Record #')])[1]
${ActionsSubModule}             xpath://div[@id='control_B22AF189-69A7-434C-852F-117C8F1CBD14']/div/div/div[text()='Ad-Hoc Actions']

#*********************************************** FR1-01: Capture Actions_MS ******************************************************
${ActionsAddBtn}                xpath://div[@id='control_B22AF189-69A7-434C-852F-117C8F1CBD14']//div[@id='btnAddNew']
${ActionsCreateActionBtn}       xpath://div[@id='control_BB4A2316-DCD6-439F-9510-BA9460B115B4']/div/div[text()='Create action']
${ActionDetailTab}              xpath://li[@id='tab_3C419243-7BEA-4DFE-BC44-088F3555618A']/div[text()='Action Detail']
${ActionsSupportDocsTab}        xpath://li[@id='tab_C298F1A9-5ACB-4936-9F4B-2F21E3CDC3FE']/div[text()='Supporting Documents']
${ActionsPF}                    xpath://div[@id='btnProcessFlow_form_5C4FFFC4-66A2-4DAA-9B1F-168A37737EF2']
${ActionsPFAddAction}           xpath:(//div[@id='divProcess_5C4FFFC4-66A2-4DAA-9B1F-168A37737EF2'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add action']
${ActionsPFScheduled}           xpath:(//div[@id='divProcess_5C4FFFC4-66A2-4DAA-9B1F-168A37737EF2'])[2]/div/div[2]/div/div[@class='step active']//div[text()='To be initiated/Scheduled']
${ActionsPFInProgress}          xpath:(//div[@id='divProcess_5C4FFFC4-66A2-4DAA-9B1F-168A37737EF2'])[2]/div/div[2]/div/div[@class='step active']//div[text()='In progress/Overdue']
${ActionsPFAwaitSignOff}        xpath:(//div[@id='divProcess_5C4FFFC4-66A2-4DAA-9B1F-168A37737EF2'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Awaiting sign-off']
${ActionsPFClosed}              xpath:(//div[@id='divProcess_5C4FFFC4-66A2-4DAA-9B1F-168A37737EF2'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Closed']
${ActionsBUDD}                  xpath://div[@id='control_34D02E21-7837-484C-844E-BCC8CC077837']
${ActionsBUGlobalCompanyExpand}        xpath:(//a[text()='Global Company']/../i)[2]
${ActionsBUSouthAfricaExpand}          xpath:(//a[text()='South Africa']/../i)[2]
${ActionsBUVictorySite}                xpath:(//a[text()='Victory Site'])[2]
${ActionsAssigneeDD}            xpath://div[@id='control_7854D003-23E6-4A2E-AF2E-357C965FA684']//li
${Actions2Manager}              xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'2 Manager')]
${ActionsOwner2Manager}         xpath://div[@id='control_D7236880-F18D-4E96-A79C-B462B355EF18']/div/a/span/ul/li[@title='2 Manager']
${ActionsDescription}           xpath://div[@id='control_1255F613-A69C-476A-8B05-4B87E5CA009F']//textarea[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${ActionsCategoryDD}            xpath://div[@id='control_A44DB1AB-6DF0-4358-8618-018220C3ED8D']//li
${ActionsCategoryHealthSafety}         xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'Health and Safety')]
${ActionsPriorityDD}            xpath://div[@id='control_F0465175-61B4-4A65-8A5D-8CF1C7446224']//li
${ActionsPriorityDDLow}         xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'Low')]
${ActionsPriorityDDMedium}      xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'Medium')]
${ActionsPriorityDDHigh}        xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'High')]
${ActionsPriorityLowGreen}      xpath://div[@control_background_color='apple green']/div/a/span/ul/li[text()='Low']
${ActionsPriorityHighRed}       xpath://div[@control_background_color='monza']/div/a/span/ul/li[text()='High']
${ActionsPriorityMediumOrange}      xpath://div[@control_background_color='sunglow yellow']/div/a/span/ul/li[text()='Medium']
${ActionsCostDD}                xpath://div[@id='control_ED20204C-476B-48B0-AD45-D930848007C9']//li
${ActionsCostZAR}               xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'ZAR')]
${ActionsCostInput}             xpath://div[@id='control_5090A79C-1A64-4B43-96AB-F22F26FA0868']//input[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${ActionsRecurringActionDDNo}           xpath://div[@id='control_75E03EEF-7485-4945-A6DF-2D347B63C975']/div/a/span/ul/li[text()='No']
${ActionsPendingDaysRequiredDDNo}       xpath://div[@id='control_71280A50-091F-48EC-B151-811D467F7946']/div/a/span/ul/li[text()='No']
${ActionsDueDate}               xpath://div[@id='control_A1A7A250-4916-472D-A6A5-CDA980F5DA52']//input
${ActionsStatusToBeInitiated}           xpath://div[@id='control_FEEDA1FF-BDED-41F2-A970-81E75BE28850']/div/a/span/ul/li[text()='To be initiated']
${ActionsStatusPending}         xpath://div[@id='control_FEEDA1FF-BDED-41F2-A970-81E75BE28850']/div/a/span/ul/li[text()='Pending']
${ActionsSupportDocsTab}        xpath://li[@id='tab_C298F1A9-5ACB-4936-9F4B-2F21E3CDC3FE']/div[text()='Supporting Documents']
${ActionsSupportDocsLink}       xpath://div[@id='control_F335B583-BFA7-4D39-BA63-4DA25CD90131']//b[@original-title='Link to a document']
${ActionsSavesupportingdocuments}        xpath://div[@id='control_6810CB58-13EE-4E0C-909D-DAE1B6392594']/div/div[text()='Save supporting documents']
${ActionsSupportDocsLinkAdded}           xpath://div[@class='linkbox-links linkbox-icons']/div/div[text()='Isometrix']
${ActionsSupportDocUrl}         xpath://div[@class='confirm-popup popup']//input[@id='urlValue']
${ActionsSupportDocURLTitle}    xpath://div[@class='popup-container']//input[@id='urlTitle']
${ActionsSupportDocURLAdd}      xpath://div[@class='popup-container']//div[contains(text(),'Add')]
${ActionsSupportDocsLinkAdded}           xpath://div[@class='linkbox-links linkbox-icons']/div/div[text()='Isometrix']
${ActionsFeedbackTab}           xpath://li[@id='tab_99358277-8A7C-40A1-9ED3-7613E44800C2']/div[text()='Action Feedback']
${ActionsExtensionRequestLogTab}        xpath://li[@id='tab_FBA1283D-2084-4BE8-9BEA-AF10BAF2B0A6']/div[text()='Action Extension Request Log']
${ActionsEscalationDDIanAdmin}          xpath://div[@id='control_9837FA24-F3EE-4463-8BD4-8F1D6038885F']/div/a/span/ul/li[text()='Ian Admin']
${ActionsRequestActionExtensionBtn}     xpath://div[@id='control_A3C5064B-E3A1-49DE-81FA-D171B497D175']/div/div[text()='Request action extension']
${ActionsActionCompleteFeedbackBtn}     xpath://div[@id='control_523DE899-F173-4121-9AFC-0E792D0F9F34']/div/div[text()='Action complete/feedback']
${ActionsRecordNo}              xpath:(//div[@id='form_5C4FFFC4-66A2-4DAA-9B1F-168A37737EF2']//div[contains(text(),'- Record #')])[1]

#*********************************************** FR1-01: Capture Actions_AS1 ******************************************************
${ActionsRecurringActionDD}             xpath://div[@id='control_75E03EEF-7485-4945-A6DF-2D347B63C975']//li
${ActionsRecurringActionDDYes}          xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'Yes')]
${ActionsRecurrenceFrequencyLabel}      xpath://div[@id='control_3A9F1042-86DF-4DA7-861F-1D5D14553E2F']
${ActionsRecurrenceRangeLabel}          xpath://div[@id='control_981D46EE-F945-45FE-874A-4BF8DE3A9926']
${ActionsStatusScheduled}               xpath://div[@id='control_FEEDA1FF-BDED-41F2-A970-81E75BE28850']/div/a/span/ul/li[text()='Scheduled']
${ActionsActionFrequencyInput}          xpath://div[@id='control_E02C86D7-AEE7-4E1A-82D0-4524CBC4EA13']//input
${ActionsActionFrequencyDD}             xpath://div[@id='control_21FDAD46-7E74-425D-8A54-30B06A76D4E7']//li
${ActionsActionFrequencyDays}           xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'Day(s)')]
${ActionsActionFrequencyWeeks}          xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'Week(s)')]
${ActionsActionFrequencyMonths}         xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'Month(s)')]
${ActionsActionFrequencyYears}          xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'Year(s)')]
${ActionsIncludeWeekendsDDNo}           xpath://div[@id='control_0998A696-BC59-42EB-9703-4EC030002FAF']/div/a/span/ul/li[text()='No']
${ActionsStartDueDate}                  xpath://div[@id='control_1DE0A59C-45D5-4BF6-AB63-3C098C050D6E']//input
${ActionsEndDate}                       xpath://div[@id='control_1A16950C-13B3-4B5C-B341-7BCBA9DAEEAA']//input
${ActionsSetNoOccurrencesDDNo}          xpath://div[@id='control_09EC32F0-5A72-4448-876E-961A17898044']/div/a/span/ul/li[text()='No']
${ActionsPendingDays}                   xpath://div[@id='control_5ACD43B1-EA77-4DEB-B91F-4D8400C0C966']//input
${ActionsNotifyInAdvanceDD}             xpath://div[@id='control_77658384-5CAD-4137-9586-12BE4D346441']//li
${ActionsNotifyInAdvanceYes}            xpath:(//ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'Yes')])[2]
${ActionsNotifyInAdvanceNo}             xpath:(//ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'No')])[2]
${ActionsPeriodPreEscalationDD}         xpath://div[@id='control_FDA19BEB-E460-4648-9450-1C090233ABAB']/div/a/span[2]/b[1]
${ActionsPeriodPreEscalation1Day}       xpath:(//ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'1 day')]/i)[1]
${ActionsPeriodPreEscalation3Days}      xpath:(//ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'3 days')]/i)[1]
${ActionsPeriodPreEscalation5Days}      xpath:(//ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'5 days')]/i)[1]
${ActionsPeriodPreEscalation7Days}      xpath:(//ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'7 days')]/i)[1]
${ActionsPeriodPreEscalation14Days}     xpath:(//ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'14 days')]/i)[1]
${ActionsPeriodPreEscalation21Days}     xpath:(//ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'21 days')]/i)[1]
${ActionsPeriodPreEscalation30Days}     xpath:(//ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'30 days')]/i)[1]
${ActionsPeriodPreEscalation60Days}     xpath:(//ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'60 days')]/i)[1]

#*********************************************** FR1-01: Capture Actions_AS2 ******************************************************
${ActionsPendingDaysRequiredDD}         xpath://div[@id='control_71280A50-091F-48EC-B151-811D467F7946']//li
${ActionsPendingDaysRequiredDDYes}      xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'Yes')]
${ActionsPendingDaysLabel}              xpath://div[@id='control_5B106765-45AD-41A3-BAE9-7BDEC698E300']
${ActionsPendingDaysInput}              xpath://div[@id='control_5ACD43B1-EA77-4DEB-B91F-4D8400C0C966']//input[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']

#*********************************************** FR1-01: Capture Actions_AS3 ******************************************************
${ActionsReplicateMultipleUsers}        xpath://div[@id='control_9FB64F38-240A-4D57-8EBF-202D8124CDEE']/div[@class='c-chk']
${ActionsMultipleUsersLabel}            xpath://div[@id='control_6475E8D1-1DB8-4DB9-942A-14B6E5CCD0B7']
${ActionsMultipleUsersCheckbox}         xpath://div[@id='control_B85CC3EF-7F60-4CE6-8F64-E978C40DD033']
${ActionsMultipleUsers3Logger}          xpath:(//a[text()='3 Logger']/i)[1]
${ActionsMultipleUsers4Viewer}          xpath:(//a[text()='4 Viewer']/i)[1]
${ActionsCloseBtn}                      xpath://div[@id='form_5C4FFFC4-66A2-4DAA-9B1F-168A37737EF2']/div[1]/i[2]
${ActionsAdHocActionSubMod}             xpath://div[@id='control_B22AF189-69A7-434C-852F-117C8F1CBD14']/div/div/div[text()='Ad-Hoc Actions']
${ActionsConfirmMessageYes}             xpath://div[@id='btnConfirmYes']
${ActionsReplicatedRecord3Logger}       xpath://div[@id='control_B22AF189-69A7-434C-852F-117C8F1CBD14']/div/div[2]/div[2]/div/div[3]/table/tbody/tr/td[5]/div[text()='3 Logger']
${ActionsReplicatedRecord4Viewer}       xpath://div[@id='control_B22AF189-69A7-434C-852F-117C8F1CBD14']/div/div[2]/div[2]/div/div[3]/table/tbody/tr[2]/td[5]/div[text()='4 Viewer']

#*********************************************** FR1-02: Capture Actions_Recurring_AS2 *********************************************
${ActionsSetNoOccurrencesDD}            xpath://div[@id='control_09EC32F0-5A72-4448-876E-961A17898044']//li
${ActionsSetNoOccurrencesDDYes}         xpath:(//a[contains(text(),'Yes')])[2]
${ActionsEndAfterLabel}                 xpath://div[@id='control_C0B486CC-726B-42DD-9F1C-B19D79EFB19F']
${ActionsRecurrenceEndDateLabel}        xpath://div[@id='control_5D441A89-D4F9-4AF5-A156-B863D3FAB128']
${ActionsEndAfterInput}                 xpath://div[@id='control_F1C1716A-9702-40A7-A872-1D6CCADDC176']//input
${ActionsNotifyInAdvanceYes2}           xpath:(//ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'Yes')])[3]

#*********************************************** FR1-02: Capture Actions_Recurring_AS2.1 *********************************************
${ActionsNotifyInAdvanceYes3}           xpath:(//ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'Yes')])[2]

#*********************************************** FR1-02: Capture Actions_Recurring_AS3 *********************************************
${ActionsRecurEveryLabel}               xpath://div[@id='control_CB550FFE-4715-40CC-B317-EDCAE4E54A8C']
${ActionsRecurEveryDD}                  xpath://div[@id='control_EBB9C7C2-DE73-4C7A-AFBA-6F9BED0135FB']//li
${ActionsRecurEveryMonday}              xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'Monday')]
${ActionsRecurEveryTuesday}             xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'Tuesday')]
${ActionsRecurEveryWednesday}           xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'Wednesday')]
${ActionsRecurEveryThursday}            xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'Thursday')]
${ActionsRecurEveryFriday}              xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'Friday')]
${ActionsRecurEverySaturday}            xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'Saturday')]
${ActionsRecurEverySunday}              xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'Sunday')]

#*********************************************** FR1-02: Capture Actions_Recurring_AS3.1 ******************************************************
${ActionsNotifyInAdvanceYes4}           xpath:(//ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'Yes')])[3]

#*********************************************** FR1-02: Capture Actions_Recurring_AS4 ******************************************************
${ActionsRecurSpecificDayDD}            xpath://div[@id='control_C590B88F-07B5-4FD9-9F71-3511A9F21A4E']//li
${ActionsOnWeekMonthDD}                 xpath://div[@id='control_85C5E8CD-72F2-4476-849E-A7516FD17763']//li
${ActionsOnWeekMonthFirst}              xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'First')]
${ActionsOnWeekMonthSecond}             xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'Second')]
${ActionsOnWeekMonthThird}              xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'Third')]
${ActionsOnWeekMonthFourth}             xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'Fourth')]
${ActionsOnWeekMonthLast}               xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'Last')]
${ActionsRecurSpecificDayYes1}          xpath:(//ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'Yes')])[3]

#*********************************************** FR1-02: Capture Actions_Recurring_AS4.1 ******************************************************
${ActionsRecurSpecificDayNo1}           xpath:(//ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'No')])[2]
${ActionsSetNoOccurrencesDDYes2}        xpath:(//a[contains(text(),'Yes')])[3]
${ActionsNotifyInAdvanceYes5}           xpath:(//ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'Yes')])[4]

#*********************************************** FR1-02: Capture Actions_Recurring_AS4.2 ******************************************************
${ActionsRecurondayLabel}               xpath://div[@id='control_8155120C-F358-494B-8D15-510FF1BACEC0']
${ActionsRecurondayInput}               xpath://div[@id='control_53079902-B012-4DE2-A673-5FC7C4AAC0C6']//input
${ActionsRecurSpecificDayYes2}          xpath:(//ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'Yes')])[2]
${ActionsNotifyInAdvanceYes6}           xpath:(//ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'Yes')])[3]

#*********************************************** FR1-02: Capture Actions_Recurring_AS5 ******************************************************
${ActionsOfMonthYearDD}                 xpath://div[@id='control_9FBFB9F1-5897-4A46-B57B-01406E3950BB']//li
${ActionsMonthYearJan}                  xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'January')]
${ActionsMonthYearFeb}                  xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'February')]
${ActionsMonthYearMar}                  xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'March')]
${ActionsMonthYearApr}                  xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'April')]
${ActionsMonthYearMay}                  xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'May')]
${ActionsMonthYearJune}                 xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'June')]
${ActionsMonthYearJuly}                 xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'July')]
${ActionsMonthYearAug}                  xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'August')]
${ActionsMonthYearSept}                 xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'September')]
${ActionsMonthYearOct}                  xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'October')]
${ActionsMonthYearNov}                  xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'November')]
${ActionsMonthYearDec}                  xpath://ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'December')]

#*********************************************** FR1-02: Capture Actions_Recurring_OS3 ******************************************************
${ActionsIncludeWeekendsDD}             xpath://div[@id='control_0998A696-BC59-42EB-9703-4EC030002FAF']//li
${ActionsIncludeWeekendsDDYes}          xpath:(//ul[@class='jstree-container-ul jstree-children']//a[contains(text(),'Yes')])[2]

#*********************************************** FR2-01: Capture Action Feedback_MS ******************************************************
${ActionsFeedbackAdd}                   xpath://div[@sourceid='DB1AFD7D-40B5-47B3-A866-45A3E2F86848']//div[@id='btnAddNew']
${ActionsFeedbackPF}                    xpath://div[@id='btnProcessFlow_form_DB1AFD7D-40B5-47B3-A866-45A3E2F86848']
${ActionsFeedbackSendFeed2Man}          xpath:(//div[@id='control_4854CDB6-7DB2-48B6-B92F-7F2E008CD5E2']/div/div/ul/ul/li/a[text()='2 Manager']/i)[1]
${ActionsFeedbackSaveCloseBtn}          xpath://div[@id='control_BE9BC577-BF5C-41B3-8556-413E90BA23CE']/div/div[text()='Save and close']
${ActionsFeedbackPFAdd}                 xpath:(//div[@id='divProcess_DB1AFD7D-40B5-47B3-A866-45A3E2F86848'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Add Phase']
${ActionsFeedbackPFEdit}                xpath:(//div[@id='divProcess_DB1AFD7D-40B5-47B3-A866-45A3E2F86848'])[2]/div/div[2]/div/div[@class='step active']//div[text()='Edit Phase']
${ActionsFeedbackText}                  xpath://div[@id='control_B9A4BEF3-B4D1-491D-881A-6021DDE86169']//textarea[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${ActionsFeedbackDD}                    xpath://div[@id='control_40EFC614-1BC1-4F14-934E-928BF0980FF2']//li
${ActionsFeedbackDDNo}                  xpath://div[contains(@class, 'transition visible')]//a[text()='No']
${ActionsFeedbackDDYes}                 xpath://div[contains(@class, 'transition visible')]//a[text()='Yes']
${ActionsFeedbackSendFeed3Logger}       xpath:(//a[text()='3 Logger']/i)[4]
${ActionsFeedbackSendFeed2Manager}      xpath:(//a[text()='2 Manager']/i)[2]
${ActionsFeedbackSaveBtn}               xpath://div[@id='btnSave_form_DB1AFD7D-40B5-47B3-A866-45A3E2F86848']
${RecordSaved3}                         xpath:(//*[@id="txtHeader"])[3]
${ActionsFeedbackRecordNo}              xpath:(//div[@id='form_DB1AFD7D-40B5-47B3-A866-45A3E2F86848']//div[contains(text(),'- Record #')])[1]
${ActionsFeedbackSaveClose}             xpath://div[@id='control_BE9BC577-BF5C-41B3-8556-413E90BA23CE']/div/div[text()='Save and close']
${ActionsFeedbackStatusInProgress}      xpath://div[@id='control_FEEDA1FF-BDED-41F2-A970-81E75BE28850']/div/a/span/ul/li[text()='In progress']
${ActionsFeedbackStatusAwaitingSignOff}      xpath://div[@id='control_FEEDA1FF-BDED-41F2-A970-81E75BE28850']/div/a/span/ul/li[text()='Awaiting sign off']

#*********************************************** FR2-01: Capture Action Feedback_AS1 ******************************************************
${ActionsFeedbackCompleteBtn}           xpath://div[@id='control_523DE899-F173-4121-9AFC-0E792D0F9F34']/div/div[text()='Action complete/feedback']

#*********************************************** FR3-01: Add Action Extension Request_MS ******************************************************
${ActionsExtensionRequestAdd}           xpath://div[@id='control_E48A89DB-3303-4A2A-9ECA-2DBF13FF4B39']/div/div/div/div[@id='btnAddNew']
${ActionsExtensionRequestPF}            xpath://div[@id='btnProcessFlow_form_DB831363-4D19-4988-8DC6-B1885D33EF42']
${ActionsExtensionSaveCloseBtn}         xpath://div[@id='control_8F8BFC42-33FE-4D18-9655-F7693AB2AF0F']/div/div[text()='Save and close']
${ActionsExtensionPFAdd}                xpath:(//div[@id='divProcess_DB831363-4D19-4988-8DC6-B1885D33EF42'])[2]/div/div/div/div[@class='step active']//div[text()='Add Phase']
${ActionsExtensionPFEdit}               xpath:(//div[@id='divProcess_DB831363-4D19-4988-8DC6-B1885D33EF42'])[2]/div/div/div/div[@class='step active']//div[text()='Edit Phase']
${ActionsExtensionPFClosed}             xpath:(//div[@id='divProcess_DB831363-4D19-4988-8DC6-B1885D33EF42'])[2]/div/div/div/div[@class='step active']//div[text()='Closed']
${ActionsExtensionRequestedDate}        xpath://div[@id='control_0CF9B547-BD34-4105-B6DF-35FCD1C4F352']//input
${ActionsExtensionReasonChange}         xpath://div[@id='control_45778101-1ABF-4C83-8EF0-390B59AA0DF2']//textarea[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${ActionsExtensionSaveBtn}              xpath://div[@id='btnSave_form_DB831363-4D19-4988-8DC6-B1885D33EF42']
${ActionsExtensionRecordNo}             xpath:(//div[@id='form_DB831363-4D19-4988-8DC6-B1885D33EF42']//div[contains(text(),'- Record #')])[1]

#*********************************************** FR3-02: Approve Action Extension Request_MS ******************************************************
${ActionsExtensionApproveAdHocRecordSelect}            xpath:(//div[@id='grid']/div[3]/table/tbody/tr)[1]
${ActionsExtensionApproveActionsRecordSelect}          xpath:(//div[@id='control_B22AF189-69A7-434C-852F-117C8F1CBD14']/div/div[2]/div[2]/div/div[3]/table/tbody/tr/td[4]/span[@type='recordnumber'])[1]
${ActionsExtensionApproveChangeRecordOpen}             xpath:(//div[@id='control_E48A89DB-3303-4A2A-9ECA-2DBF13FF4B39']/div/div[2]/div[2]/div/div[3]/table/tbody/tr/td[4])[1]
${ActionsExtensionApproveChangeRecordHeader}           xpath:(//div[@id='form_DB831363-4D19-4988-8DC6-B1885D33EF42']//div[contains(text(),'- Record #')])[1]
${ActionsExtensionApproveApproveRejectDD}              xpath://div[@id='control_9A298684-9162-4A7F-BE76-CC200BB39B52']//li
${ActionsExtensionApproveApproveDDApproved}            xpath://div[contains(@class, 'transition visible')]//a[text()='Approved']
${ActionsExtensionApproveApproveDDRejected}            xpath://div[contains(@class, 'transition visible')]//a[text()='Rejected']
${ActionsExtensionApproveNewDueDateInput}              xpath://div[@id='control_2AF71E0E-B8E9-4980-B7A2-CC48E5C5BF38']//input
${ActionsExtensionApproveCommentsInput}                xpath://div[@id='control_18570E52-A334-4C11-A713-6B9912E8ABE2']//textarea[@language='A50A7F35-56F8-451E-82D9-946BD9ADEDB4']
${ActionsExtensionApproveDDDeselect}                   xpath://div[@id='control_9A298684-9162-4A7F-BE76-CC200BB39B52']/div/a/span[2]/b[2]
${ActionsExtensionApproveCloseBtn}                     xpath://div[@id='form_DB831363-4D19-4988-8DC6-B1885D33EF42']/div[1]/i[2]

#*********************************************** FR4-01: Sign Off an Action_MS ******************************************************
${ActionsSignOffActionsRecordSelect}        xpath:(//div[@id='control_B22AF189-69A7-434C-852F-117C8F1CBD14']/div/div[2]/div[2]/div/div[3]/table/tbody/tr/td[7]/div[@title='Awaiting sign off'])[1]
${ActionsSignOffTab}                        xpath://li[@id='tab_9AC05ECF-DEDC-44FE-A265-F2D1600C2EC9']//div[contains(text(),'Sign Off')]
${ActionsSignOffAddBtn}                     xpath://div[@id='control_76DA08C4-FD33-4D3D-B678-8CBD39CE669E']//div[contains(text(),'Add')]
${ActionsSignOffRecordHeader}               xpath:/html/body/div[1]/div[3]/div/div[2]/div[34]/div[1]/div[1]/div[5]
${ActionsSignOffPF}                         xpath://div[@id='btnProcessFlow_form_0D215556-02DB-4A70-A3A5-300CA7621C8B']
${ActionsSignOffPFAdd}                      xpath:(//div[@id='divProcess_0D215556-02DB-4A70-A3A5-300CA7621C8B'])[2]/div/div/div/div[@class='step active']//div[text()='Add phase']
${ActionsSignOffPFEdit}                     xpath:(//div[@id='divProcess_0D215556-02DB-4A70-A3A5-300CA7621C8B'])[2]/div/div/div/div[@class='step active']//div[text()='Edit phase']
${ActionsSignOffDD}                         xpath://div[@id='control_7EB577FB-3A6B-4CAF-B5E5-1D9E6D8040F0']
${ActionsSignOffDDYes}                      xpath://div[contains(@class, 'transition visible')]//a[text()='Yes']
${ActionsSignOffDDNo}                       xpath://div[contains(@class, 'transition visible')]//a[text()='No']
${ActionsSignOffComments}                   xpath://div[@id='control_55A6635D-1D32-4DB9-953C-3329A76E4F05']//textarea
${ActionsSignOffSendFeedback2Manager}       xpath://div[@id='control_4F603D60-2FD9-460A-9F4F-61FB8074BFA8']/div/div/ul/ul/li[@title='2 Manager']/a/i[1]
${ActionsSignOffSendFeedback3Logger}        xpath://div[@id='control_4F603D60-2FD9-460A-9F4F-61FB8074BFA8']/div/div/ul/ul/li[@title='3 Logger']/a/i[1]
${ActionsSignOffSaveBtn}                    xpath://div[@id='btnSave_form_0D215556-02DB-4A70-A3A5-300CA7621C8B']/div[text()='Save']
${ActionsSignOffSaveCloseBtn}               xpath://div[@id='control_90460CF0-55F0-4A99-A637-8172A5DCC0F6']/div/div[text()='Save and close']
${ActionsSignOffStatusCompleted}            xpath://div[@id='control_FEEDA1FF-BDED-41F2-A970-81E75BE28850']/div/a/span/ul/li[text()='Completed']
${ActionsSignOffStatusInProgress}           xpath://div[@id='control_FEEDA1FF-BDED-41F2-A970-81E75BE28850']/div/a/span/ul/li[text()='In progress']

#*********************************************** FR5-01: View all actions_MS ******************************************************
${CentralActionsModule}                     xpath://label[text()='Central Action Manager']
${CentralActionsSearchButton}               xpath://div[@id='btnActApplyFilter']/div[text()='Search']
${CentralActionsRecordSelect}               xpath:(//div[@id='grid']/div[3]/table/tbody/tr/td[4])[1]

#*********************************************** FR6-01: Actions automatically goes overdue_MS ***************************************
${ActionsOverdueExpandSearch}               xpath://span[@class='advanced-options icon more_horiz transition visible']
${ActionsOverdueOwnerLabel}                 xpath://div[@id='divSearch']/div[3]/div/div[3]/table/tbody/tr[3]/td[text()='Action owner']
${ActionsOverdueStatusDD}                   xpath://div[@id='divSearch']/div[3]/div/div[3]/table/tbody/tr[7]/td[5]/div/a/span[1]/ul
${ActionsOverdueDDStatusOverdue}            xpath:(//a[text()='Overdue']/i[1])
${ActionsOverdueRecordOpen}                 xpath:(//div[@id='grid']/div[3]/table/tbody/tr/td[7]/div[@title='Overdue'])[1]
${ActionsOverdueRecordStatusOverdue}        xpath://div[@id='control_FEEDA1FF-BDED-41F2-A970-81E75BE28850']/div/a/span/ul/li[@title='Overdue']
