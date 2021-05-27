*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Audits/vars.robot
Resource    ../../Resources/Actions/Actions_vars.robot
Library     DateTime

*** Keywords ***
#*********************************************** FR1-02: Capture Actions_Recurring_AS2 ******************************************************
Capture Actions_Recurring_AS2
    #Click on Actions Add Button
    Log to Console     Click on Actions Add Button
    Click Element                                   ${ActionsAddBtn}
    Wait Until Element Is Visible                   ${AdHocActionsRecordHeader}                 40 seconds
    #Save and Continue Button
    Element Should Be Visible                       ${ActionsCreateActionBtn}
    Element Should Be Visible                       ${ActionDetailTab}
    Element Should Be Visible                       ${ActionsSupportDocsTab}
    Click Element                                   ${ActionsPF}
    Wait Until Element Is Visible                   ${ActionsPFAddAction}                       40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/New Actions Record Opened - Add Action phase.png
    #Business unit
    Log to Console      Business unit
    Click Element                                   ${ActionsBUDD}
    Wait Until Element Is Visible                   ${ActionsBUGlobalCompanyExpand}              40 seconds
    Click Element                                   ${ActionsBUGlobalCompanyExpand}
    Wait Until Element Is Visible                   ${ActionsBUSouthAfricaExpand}                40 seconds
    Click Element                                   ${ActionsBUSouthAfricaExpand}
    Wait Until Element Is Visible                   ${ActionsBUVictorySite}                      40 seconds
    Click Element                                   ${ActionsBUVictorySite}
    #Action assignee
    Log to Console      Action assignee
    Click Element                                   ${ActionsAssigneeDD}
    Wait Until Element Is Visible                   ${Actions2Manager}                           40 seconds
    Click Element                                   ${Actions2Manager}
    #Action owner
    Log to Console      Action owner
    Element Should Be Visible                       ${ActionsOwner2Manager}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Owner 2 Manager.png
    #Action description
    Log to Console      Action description
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsDescription}                        FR1-02: Capture Actions_Recurring_AS2 ${CurrentDate}
    #Action category
    Log to Console      Action category
    Click Element                                   ${ActionsCategoryDD}
    Wait Until Element Is Visible                   ${ActionsCategoryHealthSafety}               40 seconds
    Click Element                                   ${ActionsCategoryHealthSafety}
    #Action priority
    Log to Console      Action priority
    #Low
    Click Element                                   ${ActionsPriorityDD}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsPriorityDDLow}                      40 seconds
    Click Element                                   ${ActionsPriorityDDLow}
    Element Should Be Visible                       ${ActionsPriorityLowGreen}
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Priority Low Green.png
    #Cost
    Log to Console      Cost
    Click Element                                   ${ActionsCostDD}
    Wait Until Element Is Visible                   ${ActionsCostZAR}                            40 seconds
    Click Element                                   ${ActionsCostZAR}
    Input Text                                      ${ActionsCostInput}                          1234
    #Recurring action?
    Log to Console      Recurring action?
    Click Element                                   ${ActionsRecurringActionDD}
    Wait Until Element Is Visible                   ${ActionsRecurringActionDDYes}               40 seconds
    Click Element                                   ${ActionsRecurringActionDDYes}
    Scroll Element Into View                        ${ActionsCreateActionBtn}
    Sleep       1
    #Recurrence Frequency
    Element Should Be Visible                       ${ActionsRecurrenceFrequencyLabel}
    #Recurrence Range
    Element Should Be Visible                       ${ActionsRecurrenceRangeLabel}
    #Action status
    Log to Console      Action status - Scheduled
    Element Should Be Visible                       ${ActionsStatusScheduled}
    #Pending days required?
    Log to Console      Pending days required?
    Element Should Not Be Visible                   ${ActionsPendingDaysRequiredDDNo}
    #Action due date
    Log to Console      Action due date
    Element Should Not Be Visible                   ${ActionsDueDate}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Fields triggered and removed.png
    #Action Frequency
    Input Text                                      ${ActionsActionFrequencyInput}               14
    Click Element                                   ${ActionsActionFrequencyDD}
    Wait Until Element Is Visible                   ${ActionsActionFrequencyDays}                40 seconds
    Click Element                                   ${ActionsActionFrequencyDays}
    #Include weekends?
    Log to Console      Include weekends? = No
    Element Should Be Visible                       ${ActionsIncludeWeekendsDDNo}
    #Action start/due date
    Log to Console      Action start/due date
    ${CurrentDate}          Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsStartDueDate}                      ${CurrentDate}
    #Recurrence end date
#    Log to Console      Recurrence end date
#    ${EndDate}          Get Current Date            result_format=%d/%m/%Y          increment=+14 day
#    Set Global Variable                             ${EndDate}
#    Input Text                                      ${ActionsEndDate}                            ${EndDate}
    #Set number of occurrences?
    Log to Console      Set number of occurrences?
    Click Element                                   ${ActionsSetNoOccurrencesDD}
    Wait Until Element Is Visible                   ${ActionsSetNoOccurrencesDDYes}              40 seconds
    Click Element                                   ${ActionsSetNoOccurrencesDDYes}
    Element Should Be Visible                       ${ActionsEndAfterLabel}
    Element Should Not Be Visible                   ${ActionsRecurrenceEndDateLabel}
    #End after
    Log to Console      End after
    Input Text                                      ${ActionsEndAfterInput}                      10
    #Pending days
    Log to Console      Pending days
    Input Text                                      ${ActionsPendingDays}                        5
    #Notify in advance?
    Log to Console      Notify in advance?
    Click Element                                   ${ActionsNotifyInAdvanceDD}
    Wait Until Element Is Visible                   ${ActionsNotifyInAdvanceYes2}                40 seconds
    Click Element                                   ${ActionsNotifyInAdvanceYes2}
    #Period of pre-escalation
    Log to Console      Period of pre-escalation
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    Wait Until Element Is Visible                   ${ActionsPeriodPreEscalation7Days}           40 seconds
    Click Element                                   ${ActionsPeriodPreEscalation7Days}
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    #Create Action Button
    Log to Console      Create Action Button
    Click Element                                   ${ActionsCreateActionBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    Element Should Be Visible                       ${ActionsPFScheduled}
    Element Should Be Visible                       ${ActionsFeedbackTab}
    Element Should Be Visible                       ${ActionsExtensionRequestLogTab}
    Element Should Be Visible                       ${ActionsEscalationDDIanAdmin}
    Scroll Element Into View                        ${ActionsRequestActionExtensionBtn}
    Element Should Be Visible                       ${ActionsStatusPending}
    Element Should Be Visible                       ${ActionsActionCompleteFeedbackBtn}
    Element Should Be Visible                       ${ActionsRecordNo}
    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record Saved - To be initiated/Scheduled phase Pending Status.png

#*********************************************** FR1-02: Capture Actions_Recurring_AS2.1 *********************************************
Capture Actions_Recurring_AS2.1
    #Click on Actions Add Button
    Log to Console     Click on Actions Add Button
    Click Element                                   ${ActionsAddBtn}
    Wait Until Element Is Visible                   ${AdHocActionsRecordHeader}                 40 seconds
    #Save and Continue Button
    Element Should Be Visible                       ${ActionsCreateActionBtn}
    Element Should Be Visible                       ${ActionDetailTab}
    Element Should Be Visible                       ${ActionsSupportDocsTab}
    Click Element                                   ${ActionsPF}
    Wait Until Element Is Visible                   ${ActionsPFAddAction}                       40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/New Actions Record Opened - Add Action phase.png
    #Business unit
    Log to Console      Business unit
    Click Element                                   ${ActionsBUDD}
    Wait Until Element Is Visible                   ${ActionsBUGlobalCompanyExpand}              40 seconds
    Click Element                                   ${ActionsBUGlobalCompanyExpand}
    Wait Until Element Is Visible                   ${ActionsBUSouthAfricaExpand}                40 seconds
    Click Element                                   ${ActionsBUSouthAfricaExpand}
    Wait Until Element Is Visible                   ${ActionsBUVictorySite}                      40 seconds
    Click Element                                   ${ActionsBUVictorySite}
    #Action assignee
    Log to Console      Action assignee
    Click Element                                   ${ActionsAssigneeDD}
    Wait Until Element Is Visible                   ${Actions2Manager}                           40 seconds
    Click Element                                   ${Actions2Manager}
    #Action owner
    Log to Console      Action owner
    Element Should Be Visible                       ${ActionsOwner2Manager}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Owner 2 Manager.png
    #Action description
    Log to Console      Action description
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsDescription}                        FR1-02: Capture Actions_Recurring_AS2.1 ${CurrentDate}
    #Action category
    Log to Console      Action category
    Click Element                                   ${ActionsCategoryDD}
    Wait Until Element Is Visible                   ${ActionsCategoryHealthSafety}               40 seconds
    Click Element                                   ${ActionsCategoryHealthSafety}
    #Action priority
    Log to Console      Action priority
    #Low
    Click Element                                   ${ActionsPriorityDD}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsPriorityDDLow}                      40 seconds
    Click Element                                   ${ActionsPriorityDDLow}
    Element Should Be Visible                       ${ActionsPriorityLowGreen}
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Priority Low Green.png
    #Cost
    Log to Console      Cost
    Click Element                                   ${ActionsCostDD}
    Wait Until Element Is Visible                   ${ActionsCostZAR}                            40 seconds
    Click Element                                   ${ActionsCostZAR}
    Input Text                                      ${ActionsCostInput}                          1234
    #Recurring action?
    Log to Console      Recurring action?
    Click Element                                   ${ActionsRecurringActionDD}
    Wait Until Element Is Visible                   ${ActionsRecurringActionDDYes}               40 seconds
    Click Element                                   ${ActionsRecurringActionDDYes}
    Scroll Element Into View                        ${ActionsCreateActionBtn}
    Sleep       1
    #Recurrence Frequency
    Element Should Be Visible                       ${ActionsRecurrenceFrequencyLabel}
    #Recurrence Range
    Element Should Be Visible                       ${ActionsRecurrenceRangeLabel}
    #Action status
    Log to Console      Action status - Scheduled
    Element Should Be Visible                       ${ActionsStatusScheduled}
    #Pending days required?
    Log to Console      Pending days required?
    Element Should Not Be Visible                   ${ActionsPendingDaysRequiredDDNo}
    #Action due date
    Log to Console      Action due date
    Element Should Not Be Visible                   ${ActionsDueDate}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Fields triggered and removed.png
    #Action Frequency
    Input Text                                      ${ActionsActionFrequencyInput}               7
    Click Element                                   ${ActionsActionFrequencyDD}
    Wait Until Element Is Visible                   ${ActionsActionFrequencyDays}                40 seconds
    Click Element                                   ${ActionsActionFrequencyDays}
    #Include weekends?
    Log to Console      Include weekends? = No
    Element Should Be Visible                       ${ActionsIncludeWeekendsDDNo}
    #Action start/due date
    Log to Console      Action start/due date
    ${CurrentDate}          Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsStartDueDate}                      ${CurrentDate}
    #Recurrence end date
#    Log to Console      Recurrence end date
#    ${EndDate}          Get Current Date            result_format=%d/%m/%Y          increment=+14 day
#    Set Global Variable                             ${EndDate}
#    Input Text                                      ${ActionsEndDate}                            ${EndDate}
    #Set number of occurrences?
    Element Should Be Visible                       ${ActionsSetNoOccurrencesDDNo}
#    #End after
#    Log to Console      End after
#    Input Text                                      ${ActionsEndAfterInput}                      10
    #Pending days
    Log to Console      Pending days
    Input Text                                      ${ActionsPendingDays}                        3
    #Notify in advance?
    Log to Console      Notify in advance?
    Click Element                                   ${ActionsNotifyInAdvanceDD}
    Wait Until Element Is Visible                   ${ActionsNotifyInAdvanceYes3}                40 seconds
    Click Element                                   ${ActionsNotifyInAdvanceYes3}
    #Period of pre-escalation
    Log to Console      Period of pre-escalation
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    Wait Until Element Is Visible                   ${ActionsPeriodPreEscalation7Days}           40 seconds
    Click Element                                   ${ActionsPeriodPreEscalation7Days}
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    #Create Action Button
    Log to Console      Create Action Button
    Click Element                                   ${ActionsCreateActionBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    Element Should Be Visible                       ${ActionsPFScheduled}
    Element Should Be Visible                       ${ActionsFeedbackTab}
    Element Should Be Visible                       ${ActionsExtensionRequestLogTab}
    Element Should Be Visible                       ${ActionsEscalationDDIanAdmin}
    Scroll Element Into View                        ${ActionsRequestActionExtensionBtn}
    Element Should Be Visible                       ${ActionsStatusPending}
    Element Should Be Visible                       ${ActionsActionCompleteFeedbackBtn}
    Element Should Be Visible                       ${ActionsRecordNo}
    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record Saved - To be initiated/Scheduled phase Pending Status.png

#*********************************************** FR1-02: Capture Actions_Recurring_AS3 ******************************************************
Capture Actions_Recurring_AS3
    #Click on Actions Add Button
    Log to Console     Click on Actions Add Button
    Click Element                                   ${ActionsAddBtn}
    Wait Until Element Is Visible                   ${AdHocActionsRecordHeader}                 40 seconds
    #Save and Continue Button
    Element Should Be Visible                       ${ActionsCreateActionBtn}
    Element Should Be Visible                       ${ActionDetailTab}
    Element Should Be Visible                       ${ActionsSupportDocsTab}
    Click Element                                   ${ActionsPF}
    Wait Until Element Is Visible                   ${ActionsPFAddAction}                       40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/New Actions Record Opened - Add Action phase.png
    #Business unit
    Log to Console      Business unit
    Click Element                                   ${ActionsBUDD}
    Wait Until Element Is Visible                   ${ActionsBUGlobalCompanyExpand}              40 seconds
    Click Element                                   ${ActionsBUGlobalCompanyExpand}
    Wait Until Element Is Visible                   ${ActionsBUSouthAfricaExpand}                40 seconds
    Click Element                                   ${ActionsBUSouthAfricaExpand}
    Wait Until Element Is Visible                   ${ActionsBUVictorySite}                      40 seconds
    Click Element                                   ${ActionsBUVictorySite}
    #Action assignee
    Log to Console      Action assignee
    Click Element                                   ${ActionsAssigneeDD}
    Wait Until Element Is Visible                   ${Actions2Manager}                           40 seconds
    Click Element                                   ${Actions2Manager}
    #Action owner
    Log to Console      Action owner
    Element Should Be Visible                       ${ActionsOwner2Manager}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Owner 2 Manager.png
    #Action description
    Log to Console      Action description
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsDescription}                        FR1_Capture Actions_AS3 ${CurrentDate}
    #Action category
    Log to Console      Action category
    Click Element                                   ${ActionsCategoryDD}
    Wait Until Element Is Visible                   ${ActionsCategoryHealthSafety}               40 seconds
    Click Element                                   ${ActionsCategoryHealthSafety}
    #Action priority
    Log to Console      Action priority
    #Low
    Click Element                                   ${ActionsPriorityDD}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsPriorityDDLow}                      40 seconds
    Click Element                                   ${ActionsPriorityDDLow}
    Element Should Be Visible                       ${ActionsPriorityLowGreen}
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Priority Low Green.png
    #Cost
    Log to Console      Cost
    Click Element                                   ${ActionsCostDD}
    Wait Until Element Is Visible                   ${ActionsCostZAR}                            40 seconds
    Click Element                                   ${ActionsCostZAR}
    Input Text                                      ${ActionsCostInput}                          1234
    #Recurring action?
    Log to Console      Recurring action?
    Click Element                                   ${ActionsRecurringActionDD}
    Wait Until Element Is Visible                   ${ActionsRecurringActionDDYes}               40 seconds
    Click Element                                   ${ActionsRecurringActionDDYes}
    Scroll Element Into View                        ${ActionsCreateActionBtn}
    Sleep       1
    #Recurrence Frequency
    Element Should Be Visible                       ${ActionsRecurrenceFrequencyLabel}
    #Recurrence Range
    Element Should Be Visible                       ${ActionsRecurrenceRangeLabel}
    #Action status
    Log to Console      Action status - Scheduled
    Element Should Be Visible                       ${ActionsStatusScheduled}
    #Pending days required?
    Log to Console      Pending days required?
    Element Should Not Be Visible                   ${ActionsPendingDaysRequiredDDNo}
    #Action due date
    Log to Console      Action due date
    Element Should Not Be Visible                   ${ActionsDueDate}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Fields triggered and removed.png
    #Action Frequency
    Input Text                                      ${ActionsActionFrequencyInput}                4
    Click Element                                   ${ActionsActionFrequencyDD}
    Wait Until Element Is Visible                   ${ActionsActionFrequencyWeeks}                40 seconds
    Click Element                                   ${ActionsActionFrequencyWeeks}
    #Include weekends?
    Log to Console      Include weekends? = No
    Element Should Be Visible                       ${ActionsIncludeWeekendsDDNo}
    #Recur every
    Log to Console      Recur every
    Element Should Be Visible                       ${ActionsRecurEveryLabel}
    Click Element                                   ${ActionsRecurEveryDD}
    Wait Until Element Is Visible                   ${ActionsRecurEveryMonday}                    40 seconds
    Click Element                                   ${ActionsRecurEveryMonday}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Frequency_Weeks - Recur every triggered.png
    #Action start/due date
    Log to Console      Action start/due date
    ${CurrentDate}          Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsStartDueDate}                      ${CurrentDate}
    #Recurrence end date
    Log to Console      Recurrence end date
    ${EndDate}          Get Current Date            result_format=%d/%m/%Y                         increment=+90 day
    Set Global Variable                             ${EndDate}
    Input Text                                      ${ActionsEndDate}                            ${EndDate}
    #Set number of occurrences?
    Element Should Be Visible                       ${ActionsSetNoOccurrencesDDNo}
    #Pending days
    Log to Console      Pending days
    Input Text                                      ${ActionsPendingDays}                        5
    #Notify in advance?
    Log to Console      Notify in advance?
    Click Element                                   ${ActionsNotifyInAdvanceDD}
    Wait Until Element Is Visible                   ${ActionsNotifyInAdvanceYes}                 40 seconds
    Click Element                                   ${ActionsNotifyInAdvanceYes}
    #Period of pre-escalation
    Log to Console      Period of pre-escalation
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    Wait Until Element Is Visible                   ${ActionsPeriodPreEscalation14Days}           40 seconds
    Click Element                                   ${ActionsPeriodPreEscalation14Days}
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    #Create Action Button
    Log to Console      Create Action Button
    Click Element                                   ${ActionsCreateActionBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    Element Should Be Visible                       ${ActionsPFScheduled}
    Element Should Be Visible                       ${ActionsFeedbackTab}
    Element Should Be Visible                       ${ActionsExtensionRequestLogTab}
    Element Should Be Visible                       ${ActionsEscalationDDIanAdmin}
    Scroll Element Into View                        ${ActionsRequestActionExtensionBtn}
    Element Should Be Visible                       ${ActionsStatusPending}
    Element Should Be Visible                       ${ActionsActionCompleteFeedbackBtn}
    Element Should Be Visible                       ${ActionsRecordNo}
    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record Saved - To be initiated/Scheduled phase Pending Status.png

#*********************************************** FR1-02: Capture Actions_Recurring_AS3.1 ******************************************************
Capture Actions_Recurring_AS3.1
    #Click on Actions Add Button
    Log to Console     Click on Actions Add Button
    Click Element                                   ${ActionsAddBtn}
    Wait Until Element Is Visible                   ${AdHocActionsRecordHeader}                 40 seconds
    #Save and Continue Button
    Element Should Be Visible                       ${ActionsCreateActionBtn}
    Element Should Be Visible                       ${ActionDetailTab}
    Element Should Be Visible                       ${ActionsSupportDocsTab}
    Click Element                                   ${ActionsPF}
    Wait Until Element Is Visible                   ${ActionsPFAddAction}                       40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/New Actions Record Opened - Add Action phase.png
    #Business unit
    Log to Console      Business unit
    Click Element                                   ${ActionsBUDD}
    Wait Until Element Is Visible                   ${ActionsBUGlobalCompanyExpand}              40 seconds
    Click Element                                   ${ActionsBUGlobalCompanyExpand}
    Wait Until Element Is Visible                   ${ActionsBUSouthAfricaExpand}                40 seconds
    Click Element                                   ${ActionsBUSouthAfricaExpand}
    Wait Until Element Is Visible                   ${ActionsBUVictorySite}                      40 seconds
    Click Element                                   ${ActionsBUVictorySite}
    #Action assignee
    Log to Console      Action assignee
    Click Element                                   ${ActionsAssigneeDD}
    Wait Until Element Is Visible                   ${Actions2Manager}                           40 seconds
    Click Element                                   ${Actions2Manager}
    #Action owner
    Log to Console      Action owner
    Element Should Be Visible                       ${ActionsOwner2Manager}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Owner 2 Manager.png
    #Action description
    Log to Console      Action description
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsDescription}                        FR1_Capture Actions_AS3.1 ${CurrentDate}
    #Action category
    Log to Console      Action category
    Click Element                                   ${ActionsCategoryDD}
    Wait Until Element Is Visible                   ${ActionsCategoryHealthSafety}               40 seconds
    Click Element                                   ${ActionsCategoryHealthSafety}
    #Action priority
    Log to Console      Action priority
    #Low
    Click Element                                   ${ActionsPriorityDD}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsPriorityDDHigh}                      40 seconds
    Click Element                                   ${ActionsPriorityDDHigh}
    Element Should Be Visible                       ${ActionsPriorityHighRed}
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Priority High Red.png
    #Cost
    Log to Console      Cost
    Click Element                                   ${ActionsCostDD}
    Wait Until Element Is Visible                   ${ActionsCostZAR}                            40 seconds
    Click Element                                   ${ActionsCostZAR}
    Input Text                                      ${ActionsCostInput}                          1500
    #Recurring action?
    Log to Console      Recurring action?
    Click Element                                   ${ActionsRecurringActionDD}
    Wait Until Element Is Visible                   ${ActionsRecurringActionDDYes}               40 seconds
    Click Element                                   ${ActionsRecurringActionDDYes}
    Scroll Element Into View                        ${ActionsCreateActionBtn}
    Sleep       1
    #Recurrence Frequency
    Element Should Be Visible                       ${ActionsRecurrenceFrequencyLabel}
    #Recurrence Range
    Element Should Be Visible                       ${ActionsRecurrenceRangeLabel}
    #Action status
    Log to Console      Action status - Scheduled
    Element Should Be Visible                       ${ActionsStatusScheduled}
    #Pending days required?
    Log to Console      Pending days required?
    Element Should Not Be Visible                   ${ActionsPendingDaysRequiredDDNo}
    #Action due date
    Log to Console      Action due date
    Element Should Not Be Visible                   ${ActionsDueDate}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Fields triggered and removed.png
    #Action Frequency
    Input Text                                      ${ActionsActionFrequencyInput}                6
    Click Element                                   ${ActionsActionFrequencyDD}
    Wait Until Element Is Visible                   ${ActionsActionFrequencyWeeks}                40 seconds
    Click Element                                   ${ActionsActionFrequencyWeeks}
    #Include weekends?
    Log to Console      Include weekends? = No
    Element Should Be Visible                       ${ActionsIncludeWeekendsDDNo}
    #Recur every
    Log to Console      Recur every
    Element Should Be Visible                       ${ActionsRecurEveryLabel}
    Click Element                                   ${ActionsRecurEveryDD}
    Wait Until Element Is Visible                   ${ActionsRecurEveryTuesday}                    40 seconds
    Click Element                                   ${ActionsRecurEveryTuesday}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Frequency_Weeks - Recur every triggered.png
    #Action start/due date
    Log to Console      Action start/due date
    ${CurrentDate}          Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsStartDueDate}                      ${CurrentDate}
    #Recurrence end date
    Log to Console      Recurrence end date
    ${EndDate}          Get Current Date            result_format=%d/%m/%Y                        increment=+90 day
    Set Global Variable                             ${EndDate}
    Input Text                                      ${ActionsEndDate}                            ${EndDate}
    #Set number of occurrences?
    Log to Console      Set number of occurrences?
    Click Element                                   ${ActionsSetNoOccurrencesDD}
    Wait Until Element Is Visible                   ${ActionsSetNoOccurrencesDDYes}              40 seconds
    Click Element                                   ${ActionsSetNoOccurrencesDDYes}
    Element Should Be Visible                       ${ActionsEndAfterLabel}
    Element Should Not Be Visible                   ${ActionsRecurrenceEndDateLabel}
    #End after
    Log to Console      End after
    Input Text                                      ${ActionsEndAfterInput}                      5
    #Pending days
    Log to Console      Pending days
    Input Text                                      ${ActionsPendingDays}                        30
    #Notify in advance?
    Log to Console      Notify in advance?
    Click Element                                   ${ActionsNotifyInAdvanceDD}
    Wait Until Element Is Visible                   ${ActionsNotifyInAdvanceYes4}                 40 seconds
    Click Element                                   ${ActionsNotifyInAdvanceYes4}
    #Period of pre-escalation
    Log to Console      Period of pre-escalation
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    Wait Until Element Is Visible                   ${ActionsPeriodPreEscalation14Days}           40 seconds
    Click Element                                   ${ActionsPeriodPreEscalation14Days}
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    #Create Action Button
    Log to Console      Create Action Button
    Click Element                                   ${ActionsCreateActionBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    Element Should Be Visible                       ${ActionsPFScheduled}
    Element Should Be Visible                       ${ActionsFeedbackTab}
    Element Should Be Visible                       ${ActionsExtensionRequestLogTab}
    Element Should Be Visible                       ${ActionsEscalationDDIanAdmin}
    Scroll Element Into View                        ${ActionsRequestActionExtensionBtn}
    Element Should Be Visible                       ${ActionsStatusPending}
    Element Should Be Visible                       ${ActionsActionCompleteFeedbackBtn}
    Element Should Be Visible                       ${ActionsRecordNo}
    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record Saved - To be initiated/Scheduled phase Pending Status.png

#*********************************************** FR1-02: Capture Actions_Recurring_AS3.2 ******************************************************
Capture Actions_Recurring_AS3.2
    #Click on Actions Add Button
    Log to Console     Click on Actions Add Button
    Click Element                                   ${ActionsAddBtn}
    Wait Until Element Is Visible                   ${AdHocActionsRecordHeader}                 40 seconds
    #Save and Continue Button
    Element Should Be Visible                       ${ActionsCreateActionBtn}
    Element Should Be Visible                       ${ActionDetailTab}
    Element Should Be Visible                       ${ActionsSupportDocsTab}
    Click Element                                   ${ActionsPF}
    Wait Until Element Is Visible                   ${ActionsPFAddAction}                       40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/New Actions Record Opened - Add Action phase.png
    #Business unit
    Log to Console      Business unit
    Click Element                                   ${ActionsBUDD}
    Wait Until Element Is Visible                   ${ActionsBUGlobalCompanyExpand}              40 seconds
    Click Element                                   ${ActionsBUGlobalCompanyExpand}
    Wait Until Element Is Visible                   ${ActionsBUSouthAfricaExpand}                40 seconds
    Click Element                                   ${ActionsBUSouthAfricaExpand}
    Wait Until Element Is Visible                   ${ActionsBUVictorySite}                      40 seconds
    Click Element                                   ${ActionsBUVictorySite}
    #Action assignee
    Log to Console      Action assignee
    Click Element                                   ${ActionsAssigneeDD}
    Wait Until Element Is Visible                   ${Actions2Manager}                           40 seconds
    Click Element                                   ${Actions2Manager}
    #Action owner
    Log to Console      Action owner
    Element Should Be Visible                       ${ActionsOwner2Manager}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Owner 2 Manager.png
    #Action description
    Log to Console      Action description
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsDescription}                        FR1_Capture Actions_AS3.2 ${CurrentDate}
    #Action category
    Log to Console      Action category
    Click Element                                   ${ActionsCategoryDD}
    Wait Until Element Is Visible                   ${ActionsCategoryHealthSafety}               40 seconds
    Click Element                                   ${ActionsCategoryHealthSafety}
    #Action priority
    Log to Console      Action priority
    #Low
    Click Element                                   ${ActionsPriorityDD}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsPriorityDDHigh}                      40 seconds
    Click Element                                   ${ActionsPriorityDDHigh}
    Element Should Be Visible                       ${ActionsPriorityHighRed}
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Priority High Red.png
    #Cost
    Log to Console      Cost
    Click Element                                   ${ActionsCostDD}
    Wait Until Element Is Visible                   ${ActionsCostZAR}                            40 seconds
    Click Element                                   ${ActionsCostZAR}
    Input Text                                      ${ActionsCostInput}                          1500
    #Recurring action?
    Log to Console      Recurring action?
    Click Element                                   ${ActionsRecurringActionDD}
    Wait Until Element Is Visible                   ${ActionsRecurringActionDDYes}               40 seconds
    Click Element                                   ${ActionsRecurringActionDDYes}
    Scroll Element Into View                        ${ActionsCreateActionBtn}
    Sleep       1
    #Recurrence Frequency
    Element Should Be Visible                       ${ActionsRecurrenceFrequencyLabel}
    #Recurrence Range
    Element Should Be Visible                       ${ActionsRecurrenceRangeLabel}
    #Action status
    Log to Console      Action status - Scheduled
    Element Should Be Visible                       ${ActionsStatusScheduled}
    #Pending days required?
    Log to Console      Pending days required?
    Element Should Not Be Visible                   ${ActionsPendingDaysRequiredDDNo}
    #Action due date
    Log to Console      Action due date
    Element Should Not Be Visible                   ${ActionsDueDate}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Fields triggered and removed.png
    #Action Frequency
    Input Text                                      ${ActionsActionFrequencyInput}                8
    Click Element                                   ${ActionsActionFrequencyDD}
    Wait Until Element Is Visible                   ${ActionsActionFrequencyWeeks}                40 seconds
    Click Element                                   ${ActionsActionFrequencyWeeks}
    #Include weekends?
    Log to Console      Include weekends? = No
    Element Should Be Visible                       ${ActionsIncludeWeekendsDDNo}
    #Recur every
    Log to Console      Recur every
    Element Should Be Visible                       ${ActionsRecurEveryLabel}
    Click Element                                   ${ActionsRecurEveryDD}
    Wait Until Element Is Visible                   ${ActionsRecurEveryWednesday}                    40 seconds
    Click Element                                   ${ActionsRecurEveryWednesday}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Frequency_Weeks - Recur every triggered.png
    #Action start/due date
    Log to Console      Action start/due date
    ${CurrentDate}          Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsStartDueDate}                      ${CurrentDate}
#    #Recurrence end date
#    Log to Console      Recurrence end date
#    ${EndDate}          Get Current Date            result_format=%d/%m/%Y          increment=+90 day
#    Set Global Variable                             ${EndDate}
#    Input Text                                      ${ActionsEndDate}                            ${EndDate}
    #Set number of occurrences?
    Element Should Be Visible                       ${ActionsSetNoOccurrencesDDNo}
    #Pending days
    Log to Console      Pending days
    Input Text                                      ${ActionsPendingDays}                        45
    #Notify in advance?
    Log to Console      Notify in advance?
    Click Element                                   ${ActionsNotifyInAdvanceDD}
    Wait Until Element Is Visible                   ${ActionsNotifyInAdvanceYes3}                 40 seconds
    Click Element                                   ${ActionsNotifyInAdvanceYes3}
    #Period of pre-escalation
    Log to Console      Period of pre-escalation
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    Wait Until Element Is Visible                   ${ActionsPeriodPreEscalation21Days}           40 seconds
    Click Element                                   ${ActionsPeriodPreEscalation21Days}
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    #Create Action Button
    Log to Console      Create Action Button
    Click Element                                   ${ActionsCreateActionBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    Element Should Be Visible                       ${ActionsPFScheduled}
    Element Should Be Visible                       ${ActionsFeedbackTab}
    Element Should Be Visible                       ${ActionsExtensionRequestLogTab}
    Element Should Be Visible                       ${ActionsEscalationDDIanAdmin}
    Scroll Element Into View                        ${ActionsRequestActionExtensionBtn}
    Element Should Be Visible                       ${ActionsStatusPending}
    Element Should Be Visible                       ${ActionsActionCompleteFeedbackBtn}
    Element Should Be Visible                       ${ActionsRecordNo}
    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record Saved - To be initiated/Scheduled phase Pending Status.png

#*********************************************** FR1-02: Capture Actions_Recurring_AS4 ******************************************************
Capture Actions_Recurring_AS4
    #Click on Actions Add Button
    Log to Console     Click on Actions Add Button
    Click Element                                   ${ActionsAddBtn}
    Wait Until Element Is Visible                   ${AdHocActionsRecordHeader}                 40 seconds
    #Save and Continue Button
    Element Should Be Visible                       ${ActionsCreateActionBtn}
    Element Should Be Visible                       ${ActionDetailTab}
    Element Should Be Visible                       ${ActionsSupportDocsTab}
    Click Element                                   ${ActionsPF}
    Wait Until Element Is Visible                   ${ActionsPFAddAction}                       40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/New Actions Record Opened - Add Action phase.png
    #Business unit
    Log to Console      Business unit
    Click Element                                   ${ActionsBUDD}
    Wait Until Element Is Visible                   ${ActionsBUGlobalCompanyExpand}              40 seconds
    Click Element                                   ${ActionsBUGlobalCompanyExpand}
    Wait Until Element Is Visible                   ${ActionsBUSouthAfricaExpand}                40 seconds
    Click Element                                   ${ActionsBUSouthAfricaExpand}
    Wait Until Element Is Visible                   ${ActionsBUVictorySite}                      40 seconds
    Click Element                                   ${ActionsBUVictorySite}
    #Action assignee
    Log to Console      Action assignee
    Click Element                                   ${ActionsAssigneeDD}
    Wait Until Element Is Visible                   ${Actions2Manager}                           40 seconds
    Click Element                                   ${Actions2Manager}
    #Action owner
    Log to Console      Action owner
    Element Should Be Visible                       ${ActionsOwner2Manager}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Owner 2 Manager.png
    #Action description
    Log to Console      Action description
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsDescription}                        FR1_Capture Actions_AS4 ${CurrentDate}
    #Action category
    Log to Console      Action category
    Click Element                                   ${ActionsCategoryDD}
    Wait Until Element Is Visible                   ${ActionsCategoryHealthSafety}               40 seconds
    Click Element                                   ${ActionsCategoryHealthSafety}
    #Action priority
    Log to Console      Action priority
    #Low
    Click Element                                   ${ActionsPriorityDD}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsPriorityDDLow}                      40 seconds
    Click Element                                   ${ActionsPriorityDDLow}
    Element Should Be Visible                       ${ActionsPriorityLowGreen}
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Priority Low Green.png
    #Cost
    Log to Console      Cost
    Click Element                                   ${ActionsCostDD}
    Wait Until Element Is Visible                   ${ActionsCostZAR}                            40 seconds
    Click Element                                   ${ActionsCostZAR}
    Input Text                                      ${ActionsCostInput}                          1234
    #Recurring action?
    Log to Console      Recurring action?
    Click Element                                   ${ActionsRecurringActionDD}
    Wait Until Element Is Visible                   ${ActionsRecurringActionDDYes}               40 seconds
    Click Element                                   ${ActionsRecurringActionDDYes}
    Scroll Element Into View                        ${ActionsCreateActionBtn}
    Sleep       1
    #Recurrence Frequency
    Element Should Be Visible                       ${ActionsRecurrenceFrequencyLabel}
    #Recurrence Range
    Element Should Be Visible                       ${ActionsRecurrenceRangeLabel}
    #Action status
    Log to Console      Action status - Scheduled
    Element Should Be Visible                       ${ActionsStatusScheduled}
    #Pending days required?
    Log to Console      Pending days required?
    Element Should Not Be Visible                   ${ActionsPendingDaysRequiredDDNo}
    #Action due date
    Log to Console      Action due date
    Element Should Not Be Visible                   ${ActionsDueDate}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Fields triggered and removed.png
    #Action Frequency
    Log to Console      Action Frequency - Months
    Input Text                                      ${ActionsActionFrequencyInput}                 6
    Click Element                                   ${ActionsActionFrequencyDD}
    Wait Until Element Is Visible                   ${ActionsActionFrequencyMonths}                40 seconds
    Click Element                                   ${ActionsActionFrequencyMonths}
    #Recur on specific day?
    Element Should Be Visible                       ${ActionsRecurSpecificDayDD}
    #Recur every
    Element Should Be Visible                       ${ActionsRecurEveryDD}
    #On the week of month
    Element Should Be Visible                       ${ActionsOnWeekMonthDD}
    #Include weekends?
    Log to Console      Include weekends? = No
    Element Should Be Visible                       ${ActionsIncludeWeekendsDDNo}
#    #Recur on specific day?
#    Click Element                                   ${ActionsRecurSpecificDayDD}
#    Wait Until Element Is Visible                   ${ActionsRecurSpecificDayYes1}                40 seconds
#    Click Element                                   ${ActionsRecurSpecificDayYes1}
    #Recur every
    Log to Console      Recur every
    Element Should Be Visible                       ${ActionsRecurEveryLabel}
    Click Element                                   ${ActionsRecurEveryDD}
    Wait Until Element Is Visible                   ${ActionsRecurEveryFriday}                    40 seconds
    Click Element                                   ${ActionsRecurEveryFriday}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Frequency_Months - Recur every triggered.png
    #On the week of month
    Click Element                                   ${ActionsOnWeekMonthDD}
    Wait Until Element Is Visible                   ${ActionsOnWeekMonthFirst}                    40 seconds
    Click Element                                   ${ActionsOnWeekMonthFirst}
    #Action start/due date
    Log to Console      Action start/due date
    ${CurrentDate}          Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsStartDueDate}                      ${CurrentDate}
    #Recurrence end date
    Log to Console      Recurrence end date
    ${EndDate}          Get Current Date            result_format=%d/%m/%Y                       increment=+270 day
    Set Global Variable                             ${EndDate}
    Input Text                                      ${ActionsEndDate}                            ${EndDate}
    #Set number of occurrences?
    Element Should Be Visible                       ${ActionsSetNoOccurrencesDDNo}
    #Pending days
    Log to Console      Pending days
    Input Text                                      ${ActionsPendingDays}                        15
    #Notify in advance?
    Log to Console      Notify in advance?
    Click Element                                   ${ActionsNotifyInAdvanceDD}
    Wait Until Element Is Visible                   ${ActionsNotifyInAdvanceYes}                 40 seconds
    Click Element                                   ${ActionsNotifyInAdvanceYes}
    #Period of pre-escalation
    Log to Console      Period of pre-escalation
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    Wait Until Element Is Visible                   ${ActionsPeriodPreEscalation60Days}           40 seconds
    Click Element                                   ${ActionsPeriodPreEscalation60Days}
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    #Create Action Button
    Log to Console      Create Action Button
    Click Element                                   ${ActionsCreateActionBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    Element Should Be Visible                       ${ActionsPFScheduled}
    Element Should Be Visible                       ${ActionsFeedbackTab}
    Element Should Be Visible                       ${ActionsExtensionRequestLogTab}
    Element Should Be Visible                       ${ActionsEscalationDDIanAdmin}
    Scroll Element Into View                        ${ActionsRequestActionExtensionBtn}
    Element Should Be Visible                       ${ActionsStatusPending}
    Element Should Be Visible                       ${ActionsActionCompleteFeedbackBtn}
    Element Should Be Visible                       ${ActionsRecordNo}
    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record Saved - To be initiated/Scheduled phase Pending Status.png

#*********************************************** FR1-02: Capture Actions_Recurring_AS4.1 ******************************************************
Capture Actions_Recurring_AS4.1
    #Click on Actions Add Button
    Log to Console     Click on Actions Add Button
    Click Element                                   ${ActionsAddBtn}
    Sleep       2
    Wait Until Element Is Visible                   ${AdHocActionsRecordHeader}                 40 seconds
    #Save and Continue Button
    Element Should Be Visible                       ${ActionsCreateActionBtn}
    Element Should Be Visible                       ${ActionDetailTab}
    Element Should Be Visible                       ${ActionsSupportDocsTab}
    Click Element                                   ${ActionsPF}
    Wait Until Element Is Visible                   ${ActionsPFAddAction}                       40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/New Actions Record Opened - Add Action phase.png
    #Business unit
    Log to Console      Business unit
    Click Element                                   ${ActionsBUDD}
    Wait Until Element Is Visible                   ${ActionsBUGlobalCompanyExpand}              40 seconds
    Click Element                                   ${ActionsBUGlobalCompanyExpand}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsBUSouthAfricaExpand}                40 seconds
    Click Element                                   ${ActionsBUSouthAfricaExpand}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsBUVictorySite}                      40 seconds
    Click Element                                   ${ActionsBUVictorySite}
    #Action assignee
    Log to Console      Action assignee
    Click Element                                   ${ActionsAssigneeDD}
    Wait Until Element Is Visible                   ${Actions2Manager}                           40 seconds
    Click Element                                   ${Actions2Manager}
    #Action owner
    Log to Console      Action owner
    Element Should Be Visible                       ${ActionsOwner2Manager}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Owner 2 Manager.png
    #Action description
    Log to Console      Action description
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsDescription}                        FR1_Capture Actions_AS4.1 ${CurrentDate}
    #Action category
    Log to Console      Action category
    Click Element                                   ${ActionsCategoryDD}
    Wait Until Element Is Visible                   ${ActionsCategoryHealthSafety}               40 seconds
    Click Element                                   ${ActionsCategoryHealthSafety}
    #Action priority
    Log to Console      Action priority
    #Low
    Click Element                                   ${ActionsPriorityDD}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsPriorityDDLow}                      40 seconds
    Click Element                                   ${ActionsPriorityDDLow}
    Element Should Be Visible                       ${ActionsPriorityLowGreen}
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Priority Low Green.png
    #Cost
    Log to Console      Cost
    Click Element                                   ${ActionsCostDD}
    Wait Until Element Is Visible                   ${ActionsCostZAR}                            40 seconds
    Click Element                                   ${ActionsCostZAR}
    Input Text                                      ${ActionsCostInput}                          1234
    #Recurring action?
    Log to Console      Recurring action?
    Click Element                                   ${ActionsRecurringActionDD}
    Wait Until Element Is Visible                   ${ActionsRecurringActionDDYes}               40 seconds
    Click Element                                   ${ActionsRecurringActionDDYes}
    Scroll Element Into View                        ${ActionsCreateActionBtn}
    Sleep       1
    #Recurrence Frequency
    Element Should Be Visible                       ${ActionsRecurrenceFrequencyLabel}
    #Recurrence Range
    Element Should Be Visible                       ${ActionsRecurrenceRangeLabel}
    #Action status
    Log to Console      Action status - Scheduled
    Element Should Be Visible                       ${ActionsStatusScheduled}
    #Pending days required?
    Log to Console      Pending days required?
    Element Should Not Be Visible                   ${ActionsPendingDaysRequiredDDNo}
    #Action due date
    Log to Console      Action due date
    Element Should Not Be Visible                   ${ActionsDueDate}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Fields triggered and removed.png
    #Action Frequency
    Log to Console      Action Frequency - Months
    Input Text                                      ${ActionsActionFrequencyInput}                 3
    Click Element                                   ${ActionsActionFrequencyDD}
    Wait Until Element Is Visible                   ${ActionsActionFrequencyMonths}                40 seconds
    Click Element                                   ${ActionsActionFrequencyMonths}
    #Recur on specific day?
    Element Should Be Visible                       ${ActionsRecurSpecificDayDD}
    #Recur every
    Element Should Be Visible                       ${ActionsRecurEveryDD}
    #On the week of month
    Element Should Be Visible                       ${ActionsOnWeekMonthDD}
    #Include weekends?
    Log to Console      Include weekends? = No
    Element Should Be Visible                       ${ActionsIncludeWeekendsDDNo}
    #Recur on specific day?
    Click Element                                   ${ActionsRecurSpecificDayDD}
    Wait Until Element Is Visible                   ${ActionsRecurSpecificDayNo1}                40 seconds
    Click Element                                   ${ActionsRecurSpecificDayNo1}
    #Recur every
    Log to Console      Recur every
    Element Should Be Visible                       ${ActionsRecurEveryLabel}
    Click Element                                   ${ActionsRecurEveryDD}
    Wait Until Element Is Visible                   ${ActionsRecurEveryWednesday}                    40 seconds
    Click Element                                   ${ActionsRecurEveryWednesday}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Frequency_Months - Recur every triggered.png
    #On the week of month
    Click Element                                   ${ActionsOnWeekMonthDD}
    Wait Until Element Is Visible                   ${ActionsOnWeekMonthThird}                    40 seconds
    Click Element                                   ${ActionsOnWeekMonthThird}
    #Action start/due date
    Log to Console      Action start/due date
    ${CurrentDate}          Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsStartDueDate}                      ${CurrentDate}
#    #Recurrence end date
#    Log to Console      Recurrence end date
#    ${EndDate}          Get Current Date            result_format=%d/%m/%Y                       increment=+270 day
#    Set Global Variable                             ${EndDate}
#    Input Text                                      ${ActionsEndDate}                            ${EndDate}
    #Set number of occurrences?
    Log to Console      Set number of occurrences?
    Click Element                                   ${ActionsSetNoOccurrencesDD}
    Wait Until Element Is Visible                   ${ActionsSetNoOccurrencesDDYes2}              40 seconds
    Click Element                                   ${ActionsSetNoOccurrencesDDYes2}
    Element Should Be Visible                       ${ActionsEndAfterLabel}
    Element Should Not Be Visible                   ${ActionsRecurrenceEndDateLabel}
    #End after
    Log to Console      End after
    Input Text                                      ${ActionsEndAfterInput}                      3
    #Pending days
    Log to Console      Pending days
    Input Text                                      ${ActionsPendingDays}                        15
    #Notify in advance?
    Log to Console      Notify in advance?
    Click Element                                   ${ActionsNotifyInAdvanceDD}
    Wait Until Element Is Visible                   ${ActionsNotifyInAdvanceYes5}                 40 seconds
    Click Element                                   ${ActionsNotifyInAdvanceYes5}
    #Period of pre-escalation
    Log to Console      Period of pre-escalation
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    Wait Until Element Is Visible                   ${ActionsPeriodPreEscalation60Days}           40 seconds
    Click Element                                   ${ActionsPeriodPreEscalation60Days}
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    #Create Action Button
    Log to Console      Create Action Button
    Click Element                                   ${ActionsCreateActionBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    Element Should Be Visible                       ${ActionsPFScheduled}
    Element Should Be Visible                       ${ActionsFeedbackTab}
    Element Should Be Visible                       ${ActionsExtensionRequestLogTab}
    Element Should Be Visible                       ${ActionsEscalationDDIanAdmin}
    Scroll Element Into View                        ${ActionsRequestActionExtensionBtn}
    Element Should Be Visible                       ${ActionsStatusPending}
    Element Should Be Visible                       ${ActionsActionCompleteFeedbackBtn}
    Element Should Be Visible                       ${ActionsRecordNo}
    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record Saved - To be initiated/Scheduled phase Pending Status.png

#*********************************************** FR1-02: Capture Actions_Recurring_AS4.2 ******************************************************
Capture Actions_Recurring_AS4.2
    #Click on Actions Add Button
    Log to Console     Click on Actions Add Button
    Click Element                                   ${ActionsAddBtn}
    Wait Until Element Is Visible                   ${AdHocActionsRecordHeader}                 40 seconds
    #Save and Continue Button
    Element Should Be Visible                       ${ActionsCreateActionBtn}
    Element Should Be Visible                       ${ActionDetailTab}
    Element Should Be Visible                       ${ActionsSupportDocsTab}
    Click Element                                   ${ActionsPF}
    Wait Until Element Is Visible                   ${ActionsPFAddAction}                       40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/New Actions Record Opened - Add Action phase.png
    #Business unit
    Log to Console      Business unit
    Click Element                                   ${ActionsBUDD}
    Wait Until Element Is Visible                   ${ActionsBUGlobalCompanyExpand}              40 seconds
    Click Element                                   ${ActionsBUGlobalCompanyExpand}
    Wait Until Element Is Visible                   ${ActionsBUSouthAfricaExpand}                40 seconds
    Click Element                                   ${ActionsBUSouthAfricaExpand}
    Wait Until Element Is Visible                   ${ActionsBUVictorySite}                      40 seconds
    Click Element                                   ${ActionsBUVictorySite}
    #Action assignee
    Log to Console      Action assignee
    Click Element                                   ${ActionsAssigneeDD}
    Wait Until Element Is Visible                   ${Actions2Manager}                           40 seconds
    Click Element                                   ${Actions2Manager}
    #Action owner
    Log to Console      Action owner
    Element Should Be Visible                       ${ActionsOwner2Manager}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Owner 2 Manager.png
    #Action description
    Log to Console      Action description
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsDescription}                        FR1_Capture Actions_AS4.2 ${CurrentDate}
    #Action category
    Log to Console      Action category
    Click Element                                   ${ActionsCategoryDD}
    Wait Until Element Is Visible                   ${ActionsCategoryHealthSafety}               40 seconds
    Click Element                                   ${ActionsCategoryHealthSafety}
    #Action priority
    Log to Console      Action priority
    #Low
    Click Element                                   ${ActionsPriorityDD}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsPriorityDDMedium}                      40 seconds
    Click Element                                   ${ActionsPriorityDDMedium}
    Element Should Be Visible                       ${ActionsPriorityMediumOrange}
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Priority Medium Orange.png
    #Cost
    Log to Console      Cost
    Click Element                                   ${ActionsCostDD}
    Wait Until Element Is Visible                   ${ActionsCostZAR}                            40 seconds
    Click Element                                   ${ActionsCostZAR}
    Input Text                                      ${ActionsCostInput}                          1234
    #Recurring action?
    Log to Console      Recurring action?
    Click Element                                   ${ActionsRecurringActionDD}
    Wait Until Element Is Visible                   ${ActionsRecurringActionDDYes}               40 seconds
    Click Element                                   ${ActionsRecurringActionDDYes}
    Scroll Element Into View                        ${ActionsCreateActionBtn}
    Sleep       1
    #Recurrence Frequency
    Element Should Be Visible                       ${ActionsRecurrenceFrequencyLabel}
    #Recurrence Range
    Element Should Be Visible                       ${ActionsRecurrenceRangeLabel}
    #Action status
    Log to Console      Action status - Scheduled
    Element Should Be Visible                       ${ActionsStatusScheduled}
    #Pending days required?
    Log to Console      Pending days required?
    Element Should Not Be Visible                   ${ActionsPendingDaysRequiredDDNo}
    #Action due date
    Log to Console      Action due date
    Element Should Not Be Visible                   ${ActionsDueDate}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Fields triggered and removed.png
    #Action Frequency
    Log to Console      Action Frequency - Months
    Input Text                                      ${ActionsActionFrequencyInput}                 9
    Click Element                                   ${ActionsActionFrequencyDD}
    Wait Until Element Is Visible                   ${ActionsActionFrequencyMonths}                40 seconds
    Click Element                                   ${ActionsActionFrequencyMonths}
    #Recur on specific day?
    Element Should Be Visible                       ${ActionsRecurSpecificDayDD}
    #Recur every
    Element Should Be Visible                       ${ActionsRecurEveryDD}
    #On the week of month
    Element Should Be Visible                       ${ActionsOnWeekMonthDD}
    #Include weekends?
    Log to Console      Include weekends? = No
    Element Should Be Visible                       ${ActionsIncludeWeekendsDDNo}
    #Recur on specific day?
    Click Element                                   ${ActionsRecurSpecificDayDD}
    Wait Until Element Is Visible                   ${ActionsRecurSpecificDayYes2}                40 seconds
    Click Element                                   ${ActionsRecurSpecificDayYes2}
    #Recur on day
    Log to Console      Recur on day
    Element Should Be Visible                       ${ActionsRecurondayLabel}
    Input Text                                      ${ActionsRecurondayInput}                    25
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Frequency_Months - Recur every triggered.png
#    #On the week of month
#    Click Element                                   ${ActionsOnWeekMonthDD}
#    Wait Until Element Is Visible                   ${ActionsOnWeekMonthFirst}                    40 seconds
#    Click Element                                   ${ActionsOnWeekMonthFirst}
    Scroll Element Into View                        ${ActionsCreateActionBtn}
    Sleep       1
    #Action start/due date
    Log to Console      Action start/due date
    ${CurrentDate}          Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsStartDueDate}                      ${CurrentDate}
    #Recurrence end date
    Log to Console      Recurrence end date
    ${EndDate}          Get Current Date            result_format=%d/%m/%Y                       increment=+300 day
    Set Global Variable                             ${EndDate}
    Input Text                                      ${ActionsEndDate}                            ${EndDate}
    #Set number of occurrences?
    Element Should Be Visible                       ${ActionsSetNoOccurrencesDDNo}
    #Pending days
    Log to Console      Pending days
    Input Text                                      ${ActionsPendingDays}                        15
    #Notify in advance?
    Log to Console      Notify in advance?
    Click Element                                   ${ActionsNotifyInAdvanceDD}
    Wait Until Element Is Visible                   ${ActionsNotifyInAdvanceYes6}                 40 seconds
    Click Element                                   ${ActionsNotifyInAdvanceYes6}
    #Period of pre-escalation
    Log to Console      Period of pre-escalation
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    Wait Until Element Is Visible                   ${ActionsPeriodPreEscalation60Days}           40 seconds
    Click Element                                   ${ActionsPeriodPreEscalation60Days}
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    #Create Action Button
    Log to Console      Create Action Button
    Click Element                                   ${ActionsCreateActionBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    Element Should Be Visible                       ${ActionsPFScheduled}
    Element Should Be Visible                       ${ActionsFeedbackTab}
    Element Should Be Visible                       ${ActionsExtensionRequestLogTab}
    Element Should Be Visible                       ${ActionsEscalationDDIanAdmin}
    Scroll Element Into View                        ${ActionsRequestActionExtensionBtn}
    Element Should Be Visible                       ${ActionsStatusPending}
    Element Should Be Visible                       ${ActionsActionCompleteFeedbackBtn}
    Element Should Be Visible                       ${ActionsRecordNo}
    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record Saved - To be initiated/Scheduled phase Pending Status.png

#*********************************************** FR1-02: Capture Actions_Recurring_AS4.3 ******************************************************
Capture Actions_Recurring_AS4.3
    #Click on Actions Add Button
    Log to Console     Click on Actions Add Button
    Click Element                                   ${ActionsAddBtn}
    Wait Until Element Is Visible                   ${AdHocActionsRecordHeader}                 40 seconds
    #Save and Continue Button
    Element Should Be Visible                       ${ActionsCreateActionBtn}
    Element Should Be Visible                       ${ActionDetailTab}
    Element Should Be Visible                       ${ActionsSupportDocsTab}
    Click Element                                   ${ActionsPF}
    Wait Until Element Is Visible                   ${ActionsPFAddAction}                       40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/New Actions Record Opened - Add Action phase.png
    #Business unit
    Log to Console      Business unit
    Click Element                                   ${ActionsBUDD}
    Wait Until Element Is Visible                   ${ActionsBUGlobalCompanyExpand}              40 seconds
    Click Element                                   ${ActionsBUGlobalCompanyExpand}
    Wait Until Element Is Visible                   ${ActionsBUSouthAfricaExpand}                40 seconds
    Click Element                                   ${ActionsBUSouthAfricaExpand}
    Wait Until Element Is Visible                   ${ActionsBUVictorySite}                      40 seconds
    Click Element                                   ${ActionsBUVictorySite}
    #Action assignee
    Log to Console      Action assignee
    Click Element                                   ${ActionsAssigneeDD}
    Wait Until Element Is Visible                   ${Actions2Manager}                           40 seconds
    Click Element                                   ${Actions2Manager}
    #Action owner
    Log to Console      Action owner
    Element Should Be Visible                       ${ActionsOwner2Manager}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Owner 2 Manager.png
    #Action description
    Log to Console      Action description
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsDescription}                        FR1_Capture Actions_AS4.3 ${CurrentDate}
    #Action category
    Log to Console      Action category
    Click Element                                   ${ActionsCategoryDD}
    Wait Until Element Is Visible                   ${ActionsCategoryHealthSafety}               40 seconds
    Click Element                                   ${ActionsCategoryHealthSafety}
    #Action priority
    Log to Console      Action priority
    #Low
    Click Element                                   ${ActionsPriorityDD}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsPriorityDDMedium}                      40 seconds
    Click Element                                   ${ActionsPriorityDDMedium}
    Element Should Be Visible                       ${ActionsPriorityMediumOrange}
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Priority Medium Orange.png
    #Cost
    Log to Console      Cost
    Click Element                                   ${ActionsCostDD}
    Wait Until Element Is Visible                   ${ActionsCostZAR}                            40 seconds
    Click Element                                   ${ActionsCostZAR}
    Input Text                                      ${ActionsCostInput}                          1234
    #Recurring action?
    Log to Console      Recurring action?
    Click Element                                   ${ActionsRecurringActionDD}
    Wait Until Element Is Visible                   ${ActionsRecurringActionDDYes}               40 seconds
    Click Element                                   ${ActionsRecurringActionDDYes}
    Scroll Element Into View                        ${ActionsCreateActionBtn}
    Sleep       1
    #Recurrence Frequency
    Element Should Be Visible                       ${ActionsRecurrenceFrequencyLabel}
    #Recurrence Range
    Element Should Be Visible                       ${ActionsRecurrenceRangeLabel}
    #Action status
    Log to Console      Action status - Scheduled
    Element Should Be Visible                       ${ActionsStatusScheduled}
    #Pending days required?
    Log to Console      Pending days required?
    Element Should Not Be Visible                   ${ActionsPendingDaysRequiredDDNo}
    #Action due date
    Log to Console      Action due date
    Element Should Not Be Visible                   ${ActionsDueDate}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Fields triggered and removed.png
    #Action Frequency
    Log to Console      Action Frequency - Months
    Input Text                                      ${ActionsActionFrequencyInput}                 9
    Click Element                                   ${ActionsActionFrequencyDD}
    Wait Until Element Is Visible                   ${ActionsActionFrequencyMonths}                40 seconds
    Click Element                                   ${ActionsActionFrequencyMonths}
    #Recur on specific day?
    Element Should Be Visible                       ${ActionsRecurSpecificDayDD}
    #Recur every
    Element Should Be Visible                       ${ActionsRecurEveryDD}
    #On the week of month
    Element Should Be Visible                       ${ActionsOnWeekMonthDD}
    #Include weekends?
    Log to Console      Include weekends? = No
    Element Should Be Visible                       ${ActionsIncludeWeekendsDDNo}
    #Recur on specific day?
    Click Element                                   ${ActionsRecurSpecificDayDD}
    Wait Until Element Is Visible                   ${ActionsRecurSpecificDayYes2}                40 seconds
    Click Element                                   ${ActionsRecurSpecificDayYes2}
    #Recur on day
    Log to Console      Recur on day
    Element Should Be Visible                       ${ActionsRecurondayLabel}
    Input Text                                      ${ActionsRecurondayInput}                    1
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Frequency_Months - Recur every triggered.png
#    #On the week of month
#    Click Element                                   ${ActionsOnWeekMonthDD}
#    Wait Until Element Is Visible                   ${ActionsOnWeekMonthFirst}                    40 seconds
#    Click Element                                   ${ActionsOnWeekMonthFirst}
    Scroll Element Into View                        ${ActionsCreateActionBtn}
    Sleep       1
    #Action start/due date
    Log to Console      Action start/due date
    ${CurrentDate}          Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsStartDueDate}                      ${CurrentDate}
#    #Recurrence end date
#    Log to Console      Recurrence end date
#    ${EndDate}          Get Current Date            result_format=%d/%m/%Y                       increment=+300 day
#    Set Global Variable                             ${EndDate}
#    Input Text                                      ${ActionsEndDate}                            ${EndDate}
    #Set number of occurrences?
    Log to Console      Set number of occurrences?
    Click Element                                   ${ActionsSetNoOccurrencesDD}
    Wait Until Element Is Visible                   ${ActionsSetNoOccurrencesDDYes2}              40 seconds
    Click Element                                   ${ActionsSetNoOccurrencesDDYes2}
    Element Should Be Visible                       ${ActionsEndAfterLabel}
    Element Should Not Be Visible                   ${ActionsRecurrenceEndDateLabel}
    #End after
    Log to Console      End after
    Input Text                                      ${ActionsEndAfterInput}                      6
    #Pending days
    Log to Console      Pending days
    Input Text                                      ${ActionsPendingDays}                        5
    #Notify in advance?
    Log to Console      Notify in advance?
    Click Element                                   ${ActionsNotifyInAdvanceDD}
    Wait Until Element Is Visible                   ${ActionsNotifyInAdvanceYes5}                 40 seconds
    Click Element                                   ${ActionsNotifyInAdvanceYes5}
    #Period of pre-escalation
    Log to Console      Period of pre-escalation
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    Wait Until Element Is Visible                   ${ActionsPeriodPreEscalation60Days}           40 seconds
    Click Element                                   ${ActionsPeriodPreEscalation60Days}
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    #Create Action Button
    Log to Console      Create Action Button
    Click Element                                   ${ActionsCreateActionBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    Element Should Be Visible                       ${ActionsPFScheduled}
    Element Should Be Visible                       ${ActionsFeedbackTab}
    Element Should Be Visible                       ${ActionsExtensionRequestLogTab}
    Element Should Be Visible                       ${ActionsEscalationDDIanAdmin}
    Scroll Element Into View                        ${ActionsRequestActionExtensionBtn}
    Element Should Be Visible                       ${ActionsStatusPending}
    Element Should Be Visible                       ${ActionsActionCompleteFeedbackBtn}
    Element Should Be Visible                       ${ActionsRecordNo}
    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record Saved - To be initiated/Scheduled phase Pending Status.png

#*********************************************** FR1-02: Capture Actions_Recurring_AS4.4 ******************************************************
Capture Actions_Recurring_AS4.4
    #Click on Actions Add Button
    Log to Console     Click on Actions Add Button
    Click Element                                   ${ActionsAddBtn}
    Wait Until Element Is Visible                   ${AdHocActionsRecordHeader}                 40 seconds
    #Save and Continue Button
    Element Should Be Visible                       ${ActionsCreateActionBtn}
    Element Should Be Visible                       ${ActionDetailTab}
    Element Should Be Visible                       ${ActionsSupportDocsTab}
    Click Element                                   ${ActionsPF}
    Wait Until Element Is Visible                   ${ActionsPFAddAction}                       40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/New Actions Record Opened - Add Action phase.png
    #Business unit
    Log to Console      Business unit
    Click Element                                   ${ActionsBUDD}
    Wait Until Element Is Visible                   ${ActionsBUGlobalCompanyExpand}              40 seconds
    Click Element                                   ${ActionsBUGlobalCompanyExpand}
    Wait Until Element Is Visible                   ${ActionsBUSouthAfricaExpand}                40 seconds
    Click Element                                   ${ActionsBUSouthAfricaExpand}
    Wait Until Element Is Visible                   ${ActionsBUVictorySite}                      40 seconds
    Click Element                                   ${ActionsBUVictorySite}
    #Action assignee
    Log to Console      Action assignee
    Click Element                                   ${ActionsAssigneeDD}
    Wait Until Element Is Visible                   ${Actions2Manager}                           40 seconds
    Click Element                                   ${Actions2Manager}
    #Action owner
    Log to Console      Action owner
    Element Should Be Visible                       ${ActionsOwner2Manager}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Owner 2 Manager.png
    #Action description
    Log to Console      Action description
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsDescription}                        FR1_Capture Actions_AS4.4 ${CurrentDate}
    #Action category
    Log to Console      Action category
    Click Element                                   ${ActionsCategoryDD}
    Wait Until Element Is Visible                   ${ActionsCategoryHealthSafety}               40 seconds
    Click Element                                   ${ActionsCategoryHealthSafety}
    #Action priority
    Log to Console      Action priority
    #Low
    Click Element                                   ${ActionsPriorityDD}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsPriorityDDLow}                      40 seconds
    Click Element                                   ${ActionsPriorityDDLow}
    Element Should Be Visible                       ${ActionsPriorityLowGreen}
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Priority Low Green.png
    #Cost
    Log to Console      Cost
    Click Element                                   ${ActionsCostDD}
    Wait Until Element Is Visible                   ${ActionsCostZAR}                            40 seconds
    Click Element                                   ${ActionsCostZAR}
    Input Text                                      ${ActionsCostInput}                          1234
    #Recurring action?
    Log to Console      Recurring action?
    Click Element                                   ${ActionsRecurringActionDD}
    Wait Until Element Is Visible                   ${ActionsRecurringActionDDYes}               40 seconds
    Click Element                                   ${ActionsRecurringActionDDYes}
    Scroll Element Into View                        ${ActionsCreateActionBtn}
    Sleep       1
    #Recurrence Frequency
    Element Should Be Visible                       ${ActionsRecurrenceFrequencyLabel}
    #Recurrence Range
    Element Should Be Visible                       ${ActionsRecurrenceRangeLabel}
    #Action status
    Log to Console      Action status - Scheduled
    Element Should Be Visible                       ${ActionsStatusScheduled}
    #Pending days required?
    Log to Console      Pending days required?
    Element Should Not Be Visible                   ${ActionsPendingDaysRequiredDDNo}
    #Action due date
    Log to Console      Action due date
    Element Should Not Be Visible                   ${ActionsDueDate}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Fields triggered and removed.png
    #Action Frequency
    Log to Console      Action Frequency - Months
    Input Text                                      ${ActionsActionFrequencyInput}                 24
    Click Element                                   ${ActionsActionFrequencyDD}
    Wait Until Element Is Visible                   ${ActionsActionFrequencyMonths}                40 seconds
    Click Element                                   ${ActionsActionFrequencyMonths}
    #Recur on specific day?
    Element Should Be Visible                       ${ActionsRecurSpecificDayDD}
    #Recur every
    Element Should Be Visible                       ${ActionsRecurEveryDD}
    #On the week of month
    Element Should Be Visible                       ${ActionsOnWeekMonthDD}
    #Include weekends?
    Log to Console      Include weekends? = No
    Element Should Be Visible                       ${ActionsIncludeWeekendsDDNo}
#    #Recur on specific day?
#    Click Element                                   ${ActionsRecurSpecificDayDD}
#    Wait Until Element Is Visible                   ${ActionsRecurSpecificDayYes1}                40 seconds
#    Click Element                                   ${ActionsRecurSpecificDayYes1}
    #Recur every
    Log to Console      Recur every
    Element Should Be Visible                       ${ActionsRecurEveryLabel}
    Click Element                                   ${ActionsRecurEveryDD}
    Wait Until Element Is Visible                   ${ActionsRecurEveryTuesday}                    40 seconds
    Click Element                                   ${ActionsRecurEveryTuesday}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Frequency_Months - Recur every triggered.png
    #On the week of month
    Click Element                                   ${ActionsOnWeekMonthDD}
    Wait Until Element Is Visible                   ${ActionsOnWeekMonthLast}                    40 seconds
    Click Element                                   ${ActionsOnWeekMonthLast}
    #Action start/due date
    Log to Console      Action start/due date
    ${CurrentDate}          Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsStartDueDate}                      ${CurrentDate}
#    #Recurrence end date
#    Log to Console      Recurrence end date
#    ${EndDate}          Get Current Date            result_format=%d/%m/%Y                       increment=+270 day
#    Set Global Variable                             ${EndDate}
#    Input Text                                      ${ActionsEndDate}                            ${EndDate}
    #Set number of occurrences?
    Element Should Be Visible                       ${ActionsSetNoOccurrencesDDNo}
    #Pending days
    Log to Console      Pending days
    Input Text                                      ${ActionsPendingDays}                        60
    #Notify in advance?
    Log to Console      Notify in advance?
    Click Element                                   ${ActionsNotifyInAdvanceDD}
    Wait Until Element Is Visible                   ${ActionsNotifyInAdvanceYes}                 40 seconds
    Click Element                                   ${ActionsNotifyInAdvanceYes}
    #Period of pre-escalation
    Log to Console      Period of pre-escalation
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    Wait Until Element Is Visible                   ${ActionsPeriodPreEscalation60Days}           40 seconds
    Click Element                                   ${ActionsPeriodPreEscalation60Days}
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    #Create Action Button
    Log to Console      Create Action Button
    Click Element                                   ${ActionsCreateActionBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    Element Should Be Visible                       ${ActionsPFScheduled}
    Element Should Be Visible                       ${ActionsFeedbackTab}
    Element Should Be Visible                       ${ActionsExtensionRequestLogTab}
    Element Should Be Visible                       ${ActionsEscalationDDIanAdmin}
    Scroll Element Into View                        ${ActionsRequestActionExtensionBtn}
    Element Should Be Visible                       ${ActionsStatusPending}
    Element Should Be Visible                       ${ActionsActionCompleteFeedbackBtn}
    Element Should Be Visible                       ${ActionsRecordNo}
    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record Saved - To be initiated/Scheduled phase Pending Status.png

#*********************************************** FR1-02: Capture Actions_Recurring_AS5 ******************************************************
Capture Actions_Recurring_AS5
    #Click on Actions Add Button
    Log to Console     Click on Actions Add Button
    Click Element                                   ${ActionsAddBtn}
    Wait Until Element Is Visible                   ${AdHocActionsRecordHeader}                 40 seconds
    #Save and Continue Button
    Element Should Be Visible                       ${ActionsCreateActionBtn}
    Element Should Be Visible                       ${ActionDetailTab}
    Element Should Be Visible                       ${ActionsSupportDocsTab}
    Click Element                                   ${ActionsPF}
    Wait Until Element Is Visible                   ${ActionsPFAddAction}                       40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/New Actions Record Opened - Add Action phase.png
    #Business unit
    Log to Console      Business unit
    Click Element                                   ${ActionsBUDD}
    Wait Until Element Is Visible                   ${ActionsBUGlobalCompanyExpand}              40 seconds
    Click Element                                   ${ActionsBUGlobalCompanyExpand}
    Wait Until Element Is Visible                   ${ActionsBUSouthAfricaExpand}                40 seconds
    Click Element                                   ${ActionsBUSouthAfricaExpand}
    Wait Until Element Is Visible                   ${ActionsBUVictorySite}                      40 seconds
    Click Element                                   ${ActionsBUVictorySite}
    #Action assignee
    Log to Console      Action assignee
    Click Element                                   ${ActionsAssigneeDD}
    Wait Until Element Is Visible                   ${Actions2Manager}                           40 seconds
    Click Element                                   ${Actions2Manager}
    #Action owner
    Log to Console      Action owner
    Element Should Be Visible                       ${ActionsOwner2Manager}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Owner 2 Manager.png
    #Action description
    Log to Console      Action description
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsDescription}                        FR1_Capture Actions_AS5 ${CurrentDate}
    #Action category
    Log to Console      Action category
    Click Element                                   ${ActionsCategoryDD}
    Wait Until Element Is Visible                   ${ActionsCategoryHealthSafety}               40 seconds
    Click Element                                   ${ActionsCategoryHealthSafety}
    #Action priority
    Log to Console      Action priority
    #Low
    Click Element                                   ${ActionsPriorityDD}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsPriorityDDLow}                      40 seconds
    Click Element                                   ${ActionsPriorityDDLow}
    Element Should Be Visible                       ${ActionsPriorityLowGreen}
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Priority Low Green.png
    #Cost
    Log to Console      Cost
    Click Element                                   ${ActionsCostDD}
    Wait Until Element Is Visible                   ${ActionsCostZAR}                            40 seconds
    Click Element                                   ${ActionsCostZAR}
    Input Text                                      ${ActionsCostInput}                          1234
    #Recurring action?
    Log to Console      Recurring action?
    Click Element                                   ${ActionsRecurringActionDD}
    Wait Until Element Is Visible                   ${ActionsRecurringActionDDYes}               40 seconds
    Click Element                                   ${ActionsRecurringActionDDYes}
    Scroll Element Into View                        ${ActionsCreateActionBtn}
    Sleep       1
    #Recurrence Frequency
    Element Should Be Visible                       ${ActionsRecurrenceFrequencyLabel}
    #Recurrence Range
    Element Should Be Visible                       ${ActionsRecurrenceRangeLabel}
    #Action status
    Log to Console      Action status - Scheduled
    Element Should Be Visible                       ${ActionsStatusScheduled}
    #Pending days required?
    Log to Console      Pending days required?
    Element Should Not Be Visible                   ${ActionsPendingDaysRequiredDDNo}
    #Action due date
    Log to Console      Action due date
    Element Should Not Be Visible                   ${ActionsDueDate}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Fields triggered and removed.png
    #Action Frequency
    Log to Console      Action Frequency - Months
    Input Text                                      ${ActionsActionFrequencyInput}                3
    Click Element                                   ${ActionsActionFrequencyDD}
    Wait Until Element Is Visible                   ${ActionsActionFrequencyYears}                40 seconds
    Click Element                                   ${ActionsActionFrequencyYears}
    #Recur on specific day?
    Element Should Be Visible                       ${ActionsRecurSpecificDayDD}
    #Recur every
    Element Should Be Visible                       ${ActionsRecurEveryDD}
    #On the week of month
    Element Should Be Visible                       ${ActionsOnWeekMonthDD}
    #Of Month of Year
    Element Should Be Visible                       ${ActionsOfMonthYearDD}
    #Include weekends?
    Log to Console      Include weekends? = No
    Element Should Be Visible                       ${ActionsIncludeWeekendsDDNo}
#    #Recur on specific day?
#    Click Element                                   ${ActionsRecurSpecificDayDD}
#    Wait Until Element Is Visible                   ${ActionsRecurSpecificDayYes1}                40 seconds
#    Click Element                                   ${ActionsRecurSpecificDayYes1}
    #Recur every
    Log to Console      Recur every
    Element Should Be Visible                       ${ActionsRecurEveryLabel}
    Click Element                                   ${ActionsRecurEveryDD}
    Wait Until Element Is Visible                   ${ActionsRecurEveryMonday}                    40 seconds
    Click Element                                   ${ActionsRecurEveryMonday}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Frequency_Months - Recur every triggered.png
    #On the week of month
    Click Element                                   ${ActionsOnWeekMonthDD}
    Wait Until Element Is Visible                   ${ActionsOnWeekMonthFirst}                    40 seconds
    Click Element                                   ${ActionsOnWeekMonthFirst}
    #Of Month of Year
    Click Element                                   ${ActionsOfMonthYearDD}
    Wait Until Element Is Visible                   ${ActionsMonthYearJan}                        40 seconds
    Click Element                                   ${ActionsMonthYearJan}
    #Action start/due date
    Log to Console      Action start/due date
    ${CurrentDate}          Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsStartDueDate}                      ${CurrentDate}
    #Recurrence end date
    Log to Console      Recurrence end date
    ${EndDate}          Get Current Date            result_format=%d/%m/%Y                       increment=+1000 day
    Set Global Variable                             ${EndDate}
    Input Text                                      ${ActionsEndDate}                            ${EndDate}
    #Set number of occurrences?
    Element Should Be Visible                       ${ActionsSetNoOccurrencesDDNo}
    #Pending days
    Log to Console      Pending days
    Input Text                                      ${ActionsPendingDays}                        15
    #Notify in advance?
    Log to Console      Notify in advance?
    Click Element                                   ${ActionsNotifyInAdvanceDD}
    Wait Until Element Is Visible                   ${ActionsNotifyInAdvanceYes}                 40 seconds
    Click Element                                   ${ActionsNotifyInAdvanceYes}
    #Period of pre-escalation
    Log to Console      Period of pre-escalation
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    Wait Until Element Is Visible                   ${ActionsPeriodPreEscalation60Days}           40 seconds
    Click Element                                   ${ActionsPeriodPreEscalation60Days}
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    #Create Action Button
    Log to Console      Create Action Button
    Click Element                                   ${ActionsCreateActionBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    Element Should Be Visible                       ${ActionsPFScheduled}
    Element Should Be Visible                       ${ActionsFeedbackTab}
    Element Should Be Visible                       ${ActionsExtensionRequestLogTab}
    Element Should Be Visible                       ${ActionsEscalationDDIanAdmin}
    Scroll Element Into View                        ${ActionsRequestActionExtensionBtn}
    Element Should Be Visible                       ${ActionsStatusPending}
    Element Should Be Visible                       ${ActionsActionCompleteFeedbackBtn}
    Element Should Be Visible                       ${ActionsRecordNo}
    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record Saved - To be initiated/Scheduled phase Pending Status.png

#*********************************************** FR1-02: Capture Actions_Recurring_AS5.1 ******************************************************
Capture Actions_Recurring_AS5.1
    #Click on Actions Add Button
    Log to Console     Click on Actions Add Button
    Click Element                                   ${ActionsAddBtn}
    Wait Until Element Is Visible                   ${AdHocActionsRecordHeader}                 40 seconds
    #Save and Continue Button
    Element Should Be Visible                       ${ActionsCreateActionBtn}
    Element Should Be Visible                       ${ActionDetailTab}
    Element Should Be Visible                       ${ActionsSupportDocsTab}
    Click Element                                   ${ActionsPF}
    Wait Until Element Is Visible                   ${ActionsPFAddAction}                       40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/New Actions Record Opened - Add Action phase.png
    #Business unit
    Log to Console      Business unit
    Click Element                                   ${ActionsBUDD}
    Wait Until Element Is Visible                   ${ActionsBUGlobalCompanyExpand}              40 seconds
    Click Element                                   ${ActionsBUGlobalCompanyExpand}
    Wait Until Element Is Visible                   ${ActionsBUSouthAfricaExpand}                40 seconds
    Click Element                                   ${ActionsBUSouthAfricaExpand}
    Wait Until Element Is Visible                   ${ActionsBUVictorySite}                      40 seconds
    Click Element                                   ${ActionsBUVictorySite}
    #Action assignee
    Log to Console      Action assignee
    Click Element                                   ${ActionsAssigneeDD}
    Wait Until Element Is Visible                   ${Actions2Manager}                           40 seconds
    Click Element                                   ${Actions2Manager}
    #Action owner
    Log to Console      Action owner
    Element Should Be Visible                       ${ActionsOwner2Manager}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Owner 2 Manager.png
    #Action description
    Log to Console      Action description
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsDescription}                        FR1_Capture Actions_AS5.1 ${CurrentDate}
    #Action category
    Log to Console      Action category
    Click Element                                   ${ActionsCategoryDD}
    Wait Until Element Is Visible                   ${ActionsCategoryHealthSafety}               40 seconds
    Click Element                                   ${ActionsCategoryHealthSafety}
    #Action priority
    Log to Console      Action priority
    #Low
    Click Element                                   ${ActionsPriorityDD}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsPriorityDDLow}                      40 seconds
    Click Element                                   ${ActionsPriorityDDLow}
    Element Should Be Visible                       ${ActionsPriorityLowGreen}
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Priority Low Green.png
    #Cost
    Log to Console      Cost
    Click Element                                   ${ActionsCostDD}
    Wait Until Element Is Visible                   ${ActionsCostZAR}                            40 seconds
    Click Element                                   ${ActionsCostZAR}
    Input Text                                      ${ActionsCostInput}                          1234
    #Recurring action?
    Log to Console      Recurring action?
    Click Element                                   ${ActionsRecurringActionDD}
    Wait Until Element Is Visible                   ${ActionsRecurringActionDDYes}               40 seconds
    Click Element                                   ${ActionsRecurringActionDDYes}
    Scroll Element Into View                        ${ActionsCreateActionBtn}
    Sleep       1
    #Recurrence Frequency
    Element Should Be Visible                       ${ActionsRecurrenceFrequencyLabel}
    #Recurrence Range
    Element Should Be Visible                       ${ActionsRecurrenceRangeLabel}
    #Action status
    Log to Console      Action status - Scheduled
    Element Should Be Visible                       ${ActionsStatusScheduled}
    #Pending days required?
    Log to Console      Pending days required?
    Element Should Not Be Visible                   ${ActionsPendingDaysRequiredDDNo}
    #Action due date
    Log to Console      Action due date
    Element Should Not Be Visible                   ${ActionsDueDate}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Fields triggered and removed.png
    #Action Frequency
    Log to Console      Action Frequency - Months
    Input Text                                      ${ActionsActionFrequencyInput}                10
    Click Element                                   ${ActionsActionFrequencyDD}
    Wait Until Element Is Visible                   ${ActionsActionFrequencyYears}                40 seconds
    Click Element                                   ${ActionsActionFrequencyYears}
    #Recur on specific day?
    Element Should Be Visible                       ${ActionsRecurSpecificDayDD}
    #Recur every
    Element Should Be Visible                       ${ActionsRecurEveryDD}
    #On the week of month
    Element Should Be Visible                       ${ActionsOnWeekMonthDD}
    #Of Month of Year
    Element Should Be Visible                       ${ActionsOfMonthYearDD}
    #Include weekends?
    Log to Console      Include weekends? = No
    Element Should Be Visible                       ${ActionsIncludeWeekendsDDNo}
#    #Recur on specific day?
#    Click Element                                   ${ActionsRecurSpecificDayDD}
#    Wait Until Element Is Visible                   ${ActionsRecurSpecificDayYes1}                40 seconds
#    Click Element                                   ${ActionsRecurSpecificDayYes1}
    #Recur every
    Log to Console      Recur every
    Element Should Be Visible                       ${ActionsRecurEveryLabel}
    Click Element                                   ${ActionsRecurEveryDD}
    Wait Until Element Is Visible                   ${ActionsRecurEveryMonday}                    40 seconds
    Click Element                                   ${ActionsRecurEveryMonday}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Frequency_Months - Recur every triggered.png
    #On the week of month
    Click Element                                   ${ActionsOnWeekMonthDD}
    Wait Until Element Is Visible                   ${ActionsOnWeekMonthFirst}                    40 seconds
    Click Element                                   ${ActionsOnWeekMonthFirst}
    #Of Month of Year
    Click Element                                   ${ActionsOfMonthYearDD}
    Wait Until Element Is Visible                   ${ActionsMonthYearJan}                        40 seconds
    Click Element                                   ${ActionsMonthYearJan}
    #Action start/due date
    Log to Console      Action start/due date
    ${CurrentDate}          Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsStartDueDate}                      ${CurrentDate}
#    #Recurrence end date
#    Log to Console      Recurrence end date
#    ${EndDate}          Get Current Date            result_format=%d/%m/%Y                       increment=+600 day
#    Set Global Variable                             ${EndDate}
#    Input Text                                      ${ActionsEndDate}                            ${EndDate}
    #Set number of occurrences?
    Log to Console      Set number of occurrences?
    Click Element                                   ${ActionsSetNoOccurrencesDD}
    Wait Until Element Is Visible                   ${ActionsSetNoOccurrencesDDYes}              40 seconds
    Click Element                                   ${ActionsSetNoOccurrencesDDYes}
    Element Should Be Visible                       ${ActionsEndAfterLabel}
    Element Should Not Be Visible                   ${ActionsRecurrenceEndDateLabel}
    #End after
    Log to Console      End after
    Input Text                                      ${ActionsEndAfterInput}                      10
    #Pending days
    Log to Console      Pending days
    Input Text                                      ${ActionsPendingDays}                        90
    #Notify in advance?
    Log to Console      Notify in advance?
    Click Element                                   ${ActionsNotifyInAdvanceDD}
    Wait Until Element Is Visible                   ${ActionsNotifyInAdvanceYes2}                 40 seconds
    Click Element                                   ${ActionsNotifyInAdvanceYes2}
    #Period of pre-escalation
    Log to Console      Period of pre-escalation
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    Wait Until Element Is Visible                   ${ActionsPeriodPreEscalation60Days}           40 seconds
    Click Element                                   ${ActionsPeriodPreEscalation60Days}
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    #Create Action Button
    Log to Console      Create Action Button
    Click Element                                   ${ActionsCreateActionBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    Element Should Be Visible                       ${ActionsPFScheduled}
    Element Should Be Visible                       ${ActionsFeedbackTab}
    Element Should Be Visible                       ${ActionsExtensionRequestLogTab}
    Element Should Be Visible                       ${ActionsEscalationDDIanAdmin}
    Scroll Element Into View                        ${ActionsRequestActionExtensionBtn}
    Element Should Be Visible                       ${ActionsStatusPending}
    Element Should Be Visible                       ${ActionsActionCompleteFeedbackBtn}
    Element Should Be Visible                       ${ActionsRecordNo}
    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record Saved - To be initiated/Scheduled phase Pending Status.png

#*********************************************** FR1-02: Capture Actions_Recurring_AS5.2 ******************************************************
Capture Actions_Recurring_AS5.2
    #Click on Actions Add Button
    Log to Console     Click on Actions Add Button
    Click Element                                   ${ActionsAddBtn}
    Wait Until Element Is Visible                   ${AdHocActionsRecordHeader}                 40 seconds
    #Save and Continue Button
    Element Should Be Visible                       ${ActionsCreateActionBtn}
    Element Should Be Visible                       ${ActionDetailTab}
    Element Should Be Visible                       ${ActionsSupportDocsTab}
    Click Element                                   ${ActionsPF}
    Wait Until Element Is Visible                   ${ActionsPFAddAction}                       40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/New Actions Record Opened - Add Action phase.png
    #Business unit
    Log to Console      Business unit
    Click Element                                   ${ActionsBUDD}
    Wait Until Element Is Visible                   ${ActionsBUGlobalCompanyExpand}              40 seconds
    Click Element                                   ${ActionsBUGlobalCompanyExpand}
    Wait Until Element Is Visible                   ${ActionsBUSouthAfricaExpand}                40 seconds
    Click Element                                   ${ActionsBUSouthAfricaExpand}
    Wait Until Element Is Visible                   ${ActionsBUVictorySite}                      40 seconds
    Click Element                                   ${ActionsBUVictorySite}
    #Action assignee
    Log to Console      Action assignee
    Click Element                                   ${ActionsAssigneeDD}
    Wait Until Element Is Visible                   ${Actions2Manager}                           40 seconds
    Click Element                                   ${Actions2Manager}
    #Action owner
    Log to Console      Action owner
    Element Should Be Visible                       ${ActionsOwner2Manager}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Owner 2 Manager.png
    #Action description
    Log to Console      Action description
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsDescription}                        FR1_Capture Actions_AS5.2 ${CurrentDate}
    #Action category
    Log to Console      Action category
    Click Element                                   ${ActionsCategoryDD}
    Wait Until Element Is Visible                   ${ActionsCategoryHealthSafety}               40 seconds
    Click Element                                   ${ActionsCategoryHealthSafety}
    #Action priority
    Log to Console      Action priority
    #Low
    Click Element                                   ${ActionsPriorityDD}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsPriorityDDHigh}                      40 seconds
    Click Element                                   ${ActionsPriorityDDHigh}
    Element Should Be Visible                       ${ActionsPriorityHighRed}
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Priority High Red.png
    #Cost
    Log to Console      Cost
    Click Element                                   ${ActionsCostDD}
    Wait Until Element Is Visible                   ${ActionsCostZAR}                            40 seconds
    Click Element                                   ${ActionsCostZAR}
    Input Text                                      ${ActionsCostInput}                          1234
    #Recurring action?
    Log to Console      Recurring action?
    Click Element                                   ${ActionsRecurringActionDD}
    Wait Until Element Is Visible                   ${ActionsRecurringActionDDYes}               40 seconds
    Click Element                                   ${ActionsRecurringActionDDYes}
    Scroll Element Into View                        ${ActionsCreateActionBtn}
    Sleep       1
    #Recurrence Frequency
    Element Should Be Visible                       ${ActionsRecurrenceFrequencyLabel}
    #Recurrence Range
    Element Should Be Visible                       ${ActionsRecurrenceRangeLabel}
    #Action status
    Log to Console      Action status - Scheduled
    Element Should Be Visible                       ${ActionsStatusScheduled}
    #Pending days required?
    Log to Console      Pending days required?
    Element Should Not Be Visible                   ${ActionsPendingDaysRequiredDDNo}
    #Action due date
    Log to Console      Action due date
    Element Should Not Be Visible                   ${ActionsDueDate}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Fields triggered and removed.png
    #Action Frequency
    Log to Console      Action Frequency - Months
    Input Text                                      ${ActionsActionFrequencyInput}                2
    Click Element                                   ${ActionsActionFrequencyDD}
    Wait Until Element Is Visible                   ${ActionsActionFrequencyYears}                40 seconds
    Click Element                                   ${ActionsActionFrequencyYears}
    #Recur on specific day?
    Element Should Be Visible                       ${ActionsRecurSpecificDayDD}
    #Recur every
    Element Should Be Visible                       ${ActionsRecurEveryDD}
    #On the week of month
    Element Should Be Visible                       ${ActionsOnWeekMonthDD}
    #Of Month of Year
    Element Should Be Visible                       ${ActionsOfMonthYearDD}
    #Include weekends?
    Log to Console      Include weekends? = No
    Element Should Be Visible                       ${ActionsIncludeWeekendsDDNo}
    #Recur on specific day?
    Click Element                                   ${ActionsRecurSpecificDayDD}
    Wait Until Element Is Visible                   ${ActionsRecurSpecificDayYes2}                40 seconds
    Click Element                                   ${ActionsRecurSpecificDayYes2}
#    #Recur every
#    Log to Console      Recur every
#    Element Should Be Visible                       ${ActionsRecurEveryLabel}
#    Click Element                                   ${ActionsRecurEveryDD}
#    Wait Until Element Is Visible                   ${ActionsRecurEveryMonday}                    40 seconds
#    Click Element                                   ${ActionsRecurEveryMonday}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Frequency_Months - Recur every triggered.png
#    #On the week of month
#    Click Element                                   ${ActionsOnWeekMonthDD}
#    Wait Until Element Is Visible                   ${ActionsOnWeekMonthFirst}                    40 seconds
#    Click Element                                   ${ActionsOnWeekMonthFirst}
    #Recur on day
    Log to Console      Recur on day
    Element Should Be Visible                       ${ActionsRecurondayLabel}
    Input Text                                      ${ActionsRecurondayInput}                     10
    #Of Month of Year
    Click Element                                   ${ActionsOfMonthYearDD}
    Wait Until Element Is Visible                   ${ActionsMonthYearApr}                        40 seconds
    Click Element                                   ${ActionsMonthYearApr}
    #Action start/due date
    Log to Console      Action start/due date
    ${CurrentDate}          Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsStartDueDate}                      ${CurrentDate}
    #Recurrence end date
    Log to Console      Recurrence end date
    ${EndDate}          Get Current Date            result_format=%d/%m/%Y                       increment=+600 day
    Set Global Variable                             ${EndDate}
    Input Text                                      ${ActionsEndDate}                            ${EndDate}
    #Set number of occurrences?
    Element Should Be Visible                       ${ActionsSetNoOccurrencesDDNo}
    #Pending days
    Log to Console      Pending days
    Input Text                                      ${ActionsPendingDays}                        15
    #Notify in advance?
    Log to Console      Notify in advance?
    Click Element                                   ${ActionsNotifyInAdvanceDD}
    Wait Until Element Is Visible                   ${ActionsNotifyInAdvanceYes2}                 40 seconds
    Click Element                                   ${ActionsNotifyInAdvanceYes2}
    #Period of pre-escalation
    Log to Console      Period of pre-escalation
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    Wait Until Element Is Visible                   ${ActionsPeriodPreEscalation60Days}           40 seconds
    Click Element                                   ${ActionsPeriodPreEscalation60Days}
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    #Create Action Button
    Log to Console      Create Action Button
    Click Element                                   ${ActionsCreateActionBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    Element Should Be Visible                       ${ActionsPFScheduled}
    Element Should Be Visible                       ${ActionsFeedbackTab}
    Element Should Be Visible                       ${ActionsExtensionRequestLogTab}
    Element Should Be Visible                       ${ActionsEscalationDDIanAdmin}
    Scroll Element Into View                        ${ActionsRequestActionExtensionBtn}
    Element Should Be Visible                       ${ActionsStatusPending}
    Element Should Be Visible                       ${ActionsActionCompleteFeedbackBtn}
    Element Should Be Visible                       ${ActionsRecordNo}
    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record Saved - To be initiated/Scheduled phase Pending Status.png

#*********************************************** FR1-02: Capture Actions_Recurring_AS5.3 ******************************************************
Capture Actions_Recurring_AS5.3
    #Click on Actions Add Button
    Log to Console     Click on Actions Add Button
    Click Element                                   ${ActionsAddBtn}
    Wait Until Element Is Visible                   ${AdHocActionsRecordHeader}                 40 seconds
    #Save and Continue Button
    Element Should Be Visible                       ${ActionsCreateActionBtn}
    Element Should Be Visible                       ${ActionDetailTab}
    Element Should Be Visible                       ${ActionsSupportDocsTab}
    Click Element                                   ${ActionsPF}
    Wait Until Element Is Visible                   ${ActionsPFAddAction}                       40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/New Actions Record Opened - Add Action phase.png
    #Business unit
    Log to Console      Business unit
    Click Element                                   ${ActionsBUDD}
    Wait Until Element Is Visible                   ${ActionsBUGlobalCompanyExpand}              40 seconds
    Click Element                                   ${ActionsBUGlobalCompanyExpand}
    Wait Until Element Is Visible                   ${ActionsBUSouthAfricaExpand}                40 seconds
    Click Element                                   ${ActionsBUSouthAfricaExpand}
    Wait Until Element Is Visible                   ${ActionsBUVictorySite}                      40 seconds
    Click Element                                   ${ActionsBUVictorySite}
    #Action assignee
    Log to Console      Action assignee
    Click Element                                   ${ActionsAssigneeDD}
    Wait Until Element Is Visible                   ${Actions2Manager}                           40 seconds
    Click Element                                   ${Actions2Manager}
    #Action owner
    Log to Console      Action owner
    Element Should Be Visible                       ${ActionsOwner2Manager}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Owner 2 Manager.png
    #Action description
    Log to Console      Action description
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsDescription}                        FR1_Capture Actions_AS5.3 ${CurrentDate}
    #Action category
    Log to Console      Action category
    Click Element                                   ${ActionsCategoryDD}
    Wait Until Element Is Visible                   ${ActionsCategoryHealthSafety}               40 seconds
    Click Element                                   ${ActionsCategoryHealthSafety}
    #Action priority
    Log to Console      Action priority
    #Low
    Click Element                                   ${ActionsPriorityDD}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsPriorityDDHigh}                      40 seconds
    Click Element                                   ${ActionsPriorityDDHigh}
    Element Should Be Visible                       ${ActionsPriorityHighRed}
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Priority High Red.png
    #Cost
    Log to Console      Cost
    Click Element                                   ${ActionsCostDD}
    Wait Until Element Is Visible                   ${ActionsCostZAR}                            40 seconds
    Click Element                                   ${ActionsCostZAR}
    Input Text                                      ${ActionsCostInput}                          1234
    #Recurring action?
    Log to Console      Recurring action?
    Click Element                                   ${ActionsRecurringActionDD}
    Wait Until Element Is Visible                   ${ActionsRecurringActionDDYes}               40 seconds
    Click Element                                   ${ActionsRecurringActionDDYes}
    Scroll Element Into View                        ${ActionsCreateActionBtn}
    Sleep       1
    #Recurrence Frequency
    Element Should Be Visible                       ${ActionsRecurrenceFrequencyLabel}
    #Recurrence Range
    Element Should Be Visible                       ${ActionsRecurrenceRangeLabel}
    #Action status
    Log to Console      Action status - Scheduled
    Element Should Be Visible                       ${ActionsStatusScheduled}
    #Pending days required?
    Log to Console      Pending days required?
    Element Should Not Be Visible                   ${ActionsPendingDaysRequiredDDNo}
    #Action due date
    Log to Console      Action due date
    Element Should Not Be Visible                   ${ActionsDueDate}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Fields triggered and removed.png
    #Action Frequency
    Log to Console      Action Frequency - Months
    Input Text                                      ${ActionsActionFrequencyInput}                4
    Click Element                                   ${ActionsActionFrequencyDD}
    Wait Until Element Is Visible                   ${ActionsActionFrequencyYears}                40 seconds
    Click Element                                   ${ActionsActionFrequencyYears}
    #Recur on specific day?
    Element Should Be Visible                       ${ActionsRecurSpecificDayDD}
    #Recur every
    Element Should Be Visible                       ${ActionsRecurEveryDD}
    #On the week of month
    Element Should Be Visible                       ${ActionsOnWeekMonthDD}
    #Of Month of Year
    Element Should Be Visible                       ${ActionsOfMonthYearDD}
    #Include weekends?
    Log to Console      Include weekends? = No
    Element Should Be Visible                       ${ActionsIncludeWeekendsDDNo}
    #Recur on specific day?
    Click Element                                   ${ActionsRecurSpecificDayDD}
    Wait Until Element Is Visible                   ${ActionsRecurSpecificDayYes2}                40 seconds
    Click Element                                   ${ActionsRecurSpecificDayYes2}
#    #Recur every
#    Log to Console      Recur every
#    Element Should Be Visible                       ${ActionsRecurEveryLabel}
#    Click Element                                   ${ActionsRecurEveryDD}
#    Wait Until Element Is Visible                   ${ActionsRecurEveryMonday}                    40 seconds
#    Click Element                                   ${ActionsRecurEveryMonday}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Frequency_Months - Recur every triggered.png
#    #On the week of month
#    Click Element                                   ${ActionsOnWeekMonthDD}
#    Wait Until Element Is Visible                   ${ActionsOnWeekMonthFirst}                    40 seconds
#    Click Element                                   ${ActionsOnWeekMonthFirst}
    #Recur on day
    Log to Console      Recur on day
    Element Should Be Visible                       ${ActionsRecurondayLabel}
    Input Text                                      ${ActionsRecurondayInput}                     5
    #Of Month of Year
    Click Element                                   ${ActionsOfMonthYearDD}
    Wait Until Element Is Visible                   ${ActionsMonthYearApr}                        40 seconds
    Click Element                                   ${ActionsMonthYearApr}
    #Action start/due date
    Log to Console      Action start/due date
    ${CurrentDate}          Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsStartDueDate}                      ${CurrentDate}
#    #Recurrence end date
#    Log to Console      Recurrence end date
#    ${EndDate}          Get Current Date            result_format=%d/%m/%Y                       increment=+600 day
#    Set Global Variable                             ${EndDate}
#    Input Text                                      ${ActionsEndDate}                            ${EndDate}
    #Set number of occurrences?
    Log to Console      Set number of occurrences?
    Click Element                                   ${ActionsSetNoOccurrencesDD}
    Wait Until Element Is Visible                   ${ActionsSetNoOccurrencesDDYes2}              40 seconds
    Click Element                                   ${ActionsSetNoOccurrencesDDYes2}
    Element Should Be Visible                       ${ActionsEndAfterLabel}
    Element Should Not Be Visible                   ${ActionsRecurrenceEndDateLabel}
    #End after
    Log to Console      End after
    Input Text                                      ${ActionsEndAfterInput}                      5
    #Pending days
    Log to Console      Pending days
    Input Text                                      ${ActionsPendingDays}                        15
    #Notify in advance?
    Log to Console      Notify in advance?
    Click Element                                   ${ActionsNotifyInAdvanceDD}
    Wait Until Element Is Visible                   ${ActionsNotifyInAdvanceYes5}                 40 seconds
    Click Element                                   ${ActionsNotifyInAdvanceYes5}
    #Period of pre-escalation
    Log to Console      Period of pre-escalation
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    Wait Until Element Is Visible                   ${ActionsPeriodPreEscalation60Days}           40 seconds
    Click Element                                   ${ActionsPeriodPreEscalation60Days}
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    #Create Action Button
    Log to Console      Create Action Button
    Click Element                                   ${ActionsCreateActionBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    Element Should Be Visible                       ${ActionsPFScheduled}
    Element Should Be Visible                       ${ActionsFeedbackTab}
    Element Should Be Visible                       ${ActionsExtensionRequestLogTab}
    Element Should Be Visible                       ${ActionsEscalationDDIanAdmin}
    Scroll Element Into View                        ${ActionsRequestActionExtensionBtn}
    Element Should Be Visible                       ${ActionsStatusPending}
    Element Should Be Visible                       ${ActionsActionCompleteFeedbackBtn}
    Element Should Be Visible                       ${ActionsRecordNo}
    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record Saved - To be initiated/Scheduled phase Pending Status.png

#*********************************************** FR1-02: Capture Actions_Recurring_AS5.4 ******************************************************
Capture Actions_Recurring_AS5.4
    #Click on Actions Add Button
    Log to Console     Click on Actions Add Button
    Click Element                                   ${ActionsAddBtn}
    Wait Until Element Is Visible                   ${AdHocActionsRecordHeader}                 40 seconds
    #Save and Continue Button
    Element Should Be Visible                       ${ActionsCreateActionBtn}
    Element Should Be Visible                       ${ActionDetailTab}
    Element Should Be Visible                       ${ActionsSupportDocsTab}
    Click Element                                   ${ActionsPF}
    Wait Until Element Is Visible                   ${ActionsPFAddAction}                       40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/New Actions Record Opened - Add Action phase.png
    #Business unit
    Log to Console      Business unit
    Click Element                                   ${ActionsBUDD}
    Wait Until Element Is Visible                   ${ActionsBUGlobalCompanyExpand}              40 seconds
    Click Element                                   ${ActionsBUGlobalCompanyExpand}
    Wait Until Element Is Visible                   ${ActionsBUSouthAfricaExpand}                40 seconds
    Click Element                                   ${ActionsBUSouthAfricaExpand}
    Wait Until Element Is Visible                   ${ActionsBUVictorySite}                      40 seconds
    Click Element                                   ${ActionsBUVictorySite}
    #Action assignee
    Log to Console      Action assignee
    Click Element                                   ${ActionsAssigneeDD}
    Wait Until Element Is Visible                   ${Actions2Manager}                           40 seconds
    Click Element                                   ${Actions2Manager}
    #Action owner
    Log to Console      Action owner
    Element Should Be Visible                       ${ActionsOwner2Manager}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Owner 2 Manager.png
    #Action description
    Log to Console      Action description
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsDescription}                        FR1_Capture Actions_AS5.4 ${CurrentDate}
    #Action category
    Log to Console      Action category
    Click Element                                   ${ActionsCategoryDD}
    Wait Until Element Is Visible                   ${ActionsCategoryHealthSafety}               40 seconds
    Click Element                                   ${ActionsCategoryHealthSafety}
    #Action priority
    Log to Console      Action priority
    #Low
    Click Element                                   ${ActionsPriorityDD}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsPriorityDDHigh}                      40 seconds
    Click Element                                   ${ActionsPriorityDDHigh}
    Element Should Be Visible                       ${ActionsPriorityHighRed}
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Priority High Red.png
    #Cost
    Log to Console      Cost
    Click Element                                   ${ActionsCostDD}
    Wait Until Element Is Visible                   ${ActionsCostZAR}                            40 seconds
    Click Element                                   ${ActionsCostZAR}
    Input Text                                      ${ActionsCostInput}                          1234
    #Recurring action?
    Log to Console      Recurring action?
    Click Element                                   ${ActionsRecurringActionDD}
    Wait Until Element Is Visible                   ${ActionsRecurringActionDDYes}               40 seconds
    Click Element                                   ${ActionsRecurringActionDDYes}
    Scroll Element Into View                        ${ActionsCreateActionBtn}
    Sleep       1
    #Recurrence Frequency
    Element Should Be Visible                       ${ActionsRecurrenceFrequencyLabel}
    #Recurrence Range
    Element Should Be Visible                       ${ActionsRecurrenceRangeLabel}
    #Action status
    Log to Console      Action status - Scheduled
    Element Should Be Visible                       ${ActionsStatusScheduled}
    #Pending days required?
    Log to Console      Pending days required?
    Element Should Not Be Visible                   ${ActionsPendingDaysRequiredDDNo}
    #Action due date
    Log to Console      Action due date
    Element Should Not Be Visible                   ${ActionsDueDate}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Fields triggered and removed.png
    #Action Frequency
    Log to Console      Action Frequency - Months
    Input Text                                      ${ActionsActionFrequencyInput}                10
    Click Element                                   ${ActionsActionFrequencyDD}
    Wait Until Element Is Visible                   ${ActionsActionFrequencyYears}                40 seconds
    Click Element                                   ${ActionsActionFrequencyYears}
    #Recur on specific day?
    Element Should Be Visible                       ${ActionsRecurSpecificDayDD}
    #Recur every
    Element Should Be Visible                       ${ActionsRecurEveryDD}
    #On the week of month
    Element Should Be Visible                       ${ActionsOnWeekMonthDD}
    #Of Month of Year
    Element Should Be Visible                       ${ActionsOfMonthYearDD}
    #Include weekends?
    Log to Console      Include weekends? = No
    Element Should Be Visible                       ${ActionsIncludeWeekendsDDNo}
#    #Recur on specific day?
#    Click Element                                   ${ActionsRecurSpecificDayDD}
#    Wait Until Element Is Visible                   ${ActionsRecurSpecificDayYes1}                40 seconds
#    Click Element                                   ${ActionsRecurSpecificDayYes1}
    #Recur every
    Log to Console      Recur every
    Element Should Be Visible                       ${ActionsRecurEveryLabel}
    Click Element                                   ${ActionsRecurEveryDD}
    Wait Until Element Is Visible                   ${ActionsRecurEveryMonday}                    40 seconds
    Click Element                                   ${ActionsRecurEveryMonday}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Frequency_Months - Recur every triggered.png
    #On the week of month
    Click Element                                   ${ActionsOnWeekMonthDD}
    Wait Until Element Is Visible                   ${ActionsOnWeekMonthFirst}                    40 seconds
    Click Element                                   ${ActionsOnWeekMonthFirst}
    #Of Month of Year
    Click Element                                   ${ActionsOfMonthYearDD}
    Wait Until Element Is Visible                   ${ActionsMonthYearJan}                        40 seconds
    Click Element                                   ${ActionsMonthYearJan}
    #Action start/due date
    Log to Console      Action start/due date
    ${CurrentDate}          Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsStartDueDate}                      ${CurrentDate}
#    #Recurrence end date
#    Log to Console      Recurrence end date
#    ${EndDate}          Get Current Date            result_format=%d/%m/%Y                       increment=+1000 day
#    Set Global Variable                             ${EndDate}
#    Input Text                                      ${ActionsEndDate}                            ${EndDate}
    #Set number of occurrences?
    Element Should Be Visible                       ${ActionsSetNoOccurrencesDDNo}
    #Pending days
    Log to Console      Pending days
    Input Text                                      ${ActionsPendingDays}                        90
    #Notify in advance?
    Log to Console      Notify in advance?
    Click Element                                   ${ActionsNotifyInAdvanceDD}
    Wait Until Element Is Visible                   ${ActionsNotifyInAdvanceYes}                 40 seconds
    Click Element                                   ${ActionsNotifyInAdvanceYes}
    #Period of pre-escalation
    Log to Console      Period of pre-escalation
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    Wait Until Element Is Visible                   ${ActionsPeriodPreEscalation60Days}           40 seconds
    Click Element                                   ${ActionsPeriodPreEscalation60Days}
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    #Create Action Button
    Log to Console      Create Action Button
    Click Element                                   ${ActionsCreateActionBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    Element Should Be Visible                       ${ActionsPFScheduled}
    Element Should Be Visible                       ${ActionsFeedbackTab}
    Element Should Be Visible                       ${ActionsExtensionRequestLogTab}
    Element Should Be Visible                       ${ActionsEscalationDDIanAdmin}
    Scroll Element Into View                        ${ActionsRequestActionExtensionBtn}
    Element Should Be Visible                       ${ActionsStatusPending}
    Element Should Be Visible                       ${ActionsActionCompleteFeedbackBtn}
    Element Should Be Visible                       ${ActionsRecordNo}
    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record Saved - To be initiated/Scheduled phase Pending Status.png

#*********************************************** FR1-02: Capture Actions_Recurring_AS6 ******************************************************
Capture Actions_Recurring_AS6
    #Click on Actions Add Button
    Log to Console     Click on Actions Add Button
    Click Element                                   ${ActionsAddBtn}
    Wait Until Element Is Visible                   ${AdHocActionsRecordHeader}                 40 seconds
    #Save and Continue Button
    Element Should Be Visible                       ${ActionsCreateActionBtn}
    Element Should Be Visible                       ${ActionDetailTab}
    Element Should Be Visible                       ${ActionsSupportDocsTab}
    Click Element                                   ${ActionsPF}
    Wait Until Element Is Visible                   ${ActionsPFAddAction}                       40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/New Actions Record Opened - Add Action phase.png
    #Business unit
    Log to Console      Business unit
    Click Element                                   ${ActionsBUDD}
    Wait Until Element Is Visible                   ${ActionsBUGlobalCompanyExpand}              40 seconds
    Click Element                                   ${ActionsBUGlobalCompanyExpand}
    Wait Until Element Is Visible                   ${ActionsBUSouthAfricaExpand}                40 seconds
    Click Element                                   ${ActionsBUSouthAfricaExpand}
    Wait Until Element Is Visible                   ${ActionsBUVictorySite}                      40 seconds
    Click Element                                   ${ActionsBUVictorySite}
    #Action assignee
    Log to Console      Action assignee
    Click Element                                   ${ActionsAssigneeDD}
    Wait Until Element Is Visible                   ${Actions2Manager}                           40 seconds
    Click Element                                   ${Actions2Manager}
    #Action owner
    Log to Console      Action owner
    Element Should Be Visible                       ${ActionsOwner2Manager}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Owner 2 Manager.png
    #Action description
    Log to Console      Action description
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsDescription}                        FR1_Capture Actions_AS6 ${CurrentDate}
    #Action category
    Log to Console      Action category
    Click Element                                   ${ActionsCategoryDD}
    Wait Until Element Is Visible                   ${ActionsCategoryHealthSafety}               40 seconds
    Click Element                                   ${ActionsCategoryHealthSafety}
    #Action priority
    Log to Console      Action priority
    #Low
    Click Element                                   ${ActionsPriorityDD}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsPriorityDDLow}                      40 seconds
    Click Element                                   ${ActionsPriorityDDLow}
    Element Should Be Visible                       ${ActionsPriorityLowGreen}
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Priority Low Green.png
    #Cost
    Log to Console      Cost
    Click Element                                   ${ActionsCostDD}
    Wait Until Element Is Visible                   ${ActionsCostZAR}                            40 seconds
    Click Element                                   ${ActionsCostZAR}
    Input Text                                      ${ActionsCostInput}                          1234
    #Recurring action?
    Log to Console      Recurring action?
    Click Element                                   ${ActionsRecurringActionDD}
    Wait Until Element Is Visible                   ${ActionsRecurringActionDDYes}               40 seconds
    Click Element                                   ${ActionsRecurringActionDDYes}
    Scroll Element Into View                        ${ActionsCreateActionBtn}
    Sleep       1
    #Recurrence Frequency
    Element Should Be Visible                       ${ActionsRecurrenceFrequencyLabel}
    #Recurrence Range
    Element Should Be Visible                       ${ActionsRecurrenceRangeLabel}
    #Action status
    Log to Console      Action status - Scheduled
    Element Should Be Visible                       ${ActionsStatusScheduled}
    #Pending days required?
    Log to Console      Pending days required?
    Element Should Not Be Visible                   ${ActionsPendingDaysRequiredDDNo}
    #Action due date
    Log to Console      Action due date
    Element Should Not Be Visible                   ${ActionsDueDate}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Fields triggered and removed.png
    #Action Frequency
    Log to Console      Action Frequency - Months
    Input Text                                      ${ActionsActionFrequencyInput}                3
    Click Element                                   ${ActionsActionFrequencyDD}
    Wait Until Element Is Visible                   ${ActionsActionFrequencyYears}                40 seconds
    Click Element                                   ${ActionsActionFrequencyYears}
    #Recur on specific day?
    Element Should Be Visible                       ${ActionsRecurSpecificDayDD}
    #Recur every
    Element Should Be Visible                       ${ActionsRecurEveryDD}
    #On the week of month
    Element Should Be Visible                       ${ActionsOnWeekMonthDD}
    #Of Month of Year
    Element Should Be Visible                       ${ActionsOfMonthYearDD}
    #Include weekends?
    Log to Console      Include weekends? = No
    Element Should Be Visible                       ${ActionsIncludeWeekendsDDNo}
#    #Recur on specific day?
#    Click Element                                   ${ActionsRecurSpecificDayDD}
#    Wait Until Element Is Visible                   ${ActionsRecurSpecificDayYes1}                40 seconds
#    Click Element                                   ${ActionsRecurSpecificDayYes1}
    #Recur every
    Log to Console      Recur every
    Element Should Be Visible                       ${ActionsRecurEveryLabel}
    Click Element                                   ${ActionsRecurEveryDD}
    Wait Until Element Is Visible                   ${ActionsRecurEveryMonday}                    40 seconds
    Click Element                                   ${ActionsRecurEveryMonday}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Frequency_Months - Recur every triggered.png
    #On the week of month
    Click Element                                   ${ActionsOnWeekMonthDD}
    Wait Until Element Is Visible                   ${ActionsOnWeekMonthFirst}                    40 seconds
    Click Element                                   ${ActionsOnWeekMonthFirst}
    #Of Month of Year
    Click Element                                   ${ActionsOfMonthYearDD}
    Wait Until Element Is Visible                   ${ActionsMonthYearJan}                        40 seconds
    Click Element                                   ${ActionsMonthYearJan}
    #Action start/due date
    Log to Console      Action start/due date
    ${CurrentDate}          Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsStartDueDate}                      ${CurrentDate}
    #Recurrence end date
    Log to Console      Recurrence end date
    ${EndDate}          Get Current Date            result_format=%d/%m/%Y                       increment=+1000 day
    Set Global Variable                             ${EndDate}
    Input Text                                      ${ActionsEndDate}                            ${EndDate}
    #Set number of occurrences?
    Element Should Be Visible                       ${ActionsSetNoOccurrencesDDNo}
    #Pending days
    Log to Console      Pending days
    Input Text                                      ${ActionsPendingDays}                        15
    #Notify in advance?
    Log to Console      Notify in advance?
    Click Element                                   ${ActionsNotifyInAdvanceDD}
    Wait Until Element Is Visible                   ${ActionsNotifyInAdvanceYes}                 40 seconds
    Click Element                                   ${ActionsNotifyInAdvanceYes}
    #Period of pre-escalation
    Log to Console      Period of pre-escalation
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    Wait Until Element Is Visible                   ${ActionsPeriodPreEscalation60Days}           40 seconds
    Click Element                                   ${ActionsPeriodPreEscalation60Days}
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    #Replicate this action to multiple users?
    Log to Console      Replicate this action to multiple users?
    Click Element                                   ${ActionsReplicateMultipleUsers}
    Element Should Be Visible                       ${ActionsMultipleUsersLabel}
    Element Should Be Visible                       ${ActionsMultipleUsersCheckbox}
    #Multiple Users Checkbox
    Log to Console      MultipleUsersCheckbox
    Click Element                                   ${ActionsMultipleUsers3Logger}
    Click Element                                   ${ActionsMultipleUsers4Viewer}
    #Create Action Button
    Log to Console      Create Action Button
    Click Element                                   ${ActionsCreateActionBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    Element Should Be Visible                       ${ActionsPFScheduled}
    Element Should Be Visible                       ${ActionsFeedbackTab}
    Element Should Be Visible                       ${ActionsExtensionRequestLogTab}
    Element Should Be Visible                       ${ActionsEscalationDDIanAdmin}
    Scroll Element Into View                        ${ActionsRequestActionExtensionBtn}
    Element Should Be Visible                       ${ActionsStatusPending}
    Element Should Be Visible                       ${ActionsActionCompleteFeedbackBtn}
    Element Should Be Visible                       ${ActionsRecordNo}
    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record Saved - To be initiated/Scheduled phase Pending Status.png
    #Close Actions Record
    Click Element                                   ${ActionsCloseBtn}
    #Confirmation message
    Log to Console      Confirmation message
    Switch Window
    Sleep       1
    Click Element                                   ${ActionsConfirmMessageYes}
    Sleep       1
    Select Frame                                    ${iFrame}
    Sleep       3
    Wait Until Element Is Visible                   ${ActionsAdHocActionSubMod}                      60 seconds
    Element Should Be Visible                       ${ActionsReplicatedRecord3Logger}
    Element Should Be Visible                       ${ActionsReplicatedRecord4Viewer}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record Closed and Additional Records created for Multiple Users.png

#*********************************************** FR1-02: Capture Actions_Recurring_OS1 ******************************************************
Capture Actions_Recurring_OS1
    #Click on Actions Add Button
    Log to Console     Click on Actions Add Button
    Click Element                                   ${ActionsAddBtn}
    Wait Until Element Is Visible                   ${AdHocActionsRecordHeader}                 40 seconds
    #Save and Continue Button
    Element Should Be Visible                       ${ActionsCreateActionBtn}
    Element Should Be Visible                       ${ActionDetailTab}
    Element Should Be Visible                       ${ActionsSupportDocsTab}
    Click Element                                   ${ActionsPF}
    Wait Until Element Is Visible                   ${ActionsPFAddAction}                       40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/New Actions Record Opened - Add Action phase.png
    #Business unit
    Log to Console      Business unit
    Click Element                                   ${ActionsBUDD}
    Wait Until Element Is Visible                   ${ActionsBUGlobalCompanyExpand}              40 seconds
    Click Element                                   ${ActionsBUGlobalCompanyExpand}
    Wait Until Element Is Visible                   ${ActionsBUSouthAfricaExpand}                40 seconds
    Click Element                                   ${ActionsBUSouthAfricaExpand}
    Wait Until Element Is Visible                   ${ActionsBUVictorySite}                      40 seconds
    Click Element                                   ${ActionsBUVictorySite}
    #Action assignee
    Log to Console      Action assignee
    Click Element                                   ${ActionsAssigneeDD}
    Wait Until Element Is Visible                   ${Actions2Manager}                           40 seconds
    Click Element                                   ${Actions2Manager}
    #Action owner
    Log to Console      Action owner
    Element Should Be Visible                       ${ActionsOwner2Manager}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Owner 2 Manager.png
    #Action description
    Log to Console      Action description
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsDescription}                        FR1_Capture Actions_OS1 ${CurrentDate}
    #Action category
    Log to Console      Action category
    Click Element                                   ${ActionsCategoryDD}
    Wait Until Element Is Visible                   ${ActionsCategoryHealthSafety}               40 seconds
    Click Element                                   ${ActionsCategoryHealthSafety}
    #Action priority
    Log to Console      Action priority
    #Low
    Click Element                                   ${ActionsPriorityDD}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsPriorityDDLow}                      40 seconds
    Click Element                                   ${ActionsPriorityDDLow}
    Element Should Be Visible                       ${ActionsPriorityLowGreen}
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Priority Low Green.png
    #Cost
    Log to Console      Cost
    Click Element                                   ${ActionsCostDD}
    Wait Until Element Is Visible                   ${ActionsCostZAR}                            40 seconds
    Click Element                                   ${ActionsCostZAR}
    Input Text                                      ${ActionsCostInput}                          1234
    #Recurring action?
    Log to Console      Recurring action?
    Click Element                                   ${ActionsRecurringActionDD}
    Wait Until Element Is Visible                   ${ActionsRecurringActionDDYes}               40 seconds
    Click Element                                   ${ActionsRecurringActionDDYes}
    Scroll Element Into View                        ${ActionsCreateActionBtn}
    Sleep       1
    #Recurrence Frequency
    Element Should Be Visible                       ${ActionsRecurrenceFrequencyLabel}
    #Recurrence Range
    Element Should Be Visible                       ${ActionsRecurrenceRangeLabel}
    #Action status
    Log to Console      Action status - Scheduled
    Element Should Be Visible                       ${ActionsStatusScheduled}
    #Pending days required?
    Log to Console      Pending days required?
    Element Should Not Be Visible                   ${ActionsPendingDaysRequiredDDNo}
    #Action due date
    Log to Console      Action due date
    Element Should Not Be Visible                   ${ActionsDueDate}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Fields triggered and removed.png
    #Action Frequency
    Log to Console      Action Frequency - Months
    Input Text                                      ${ActionsActionFrequencyInput}                3
    Click Element                                   ${ActionsActionFrequencyDD}
    Wait Until Element Is Visible                   ${ActionsActionFrequencyYears}                40 seconds
    Click Element                                   ${ActionsActionFrequencyYears}
    #Recur on specific day?
    Element Should Be Visible                       ${ActionsRecurSpecificDayDD}
    #Recur every
    Element Should Be Visible                       ${ActionsRecurEveryDD}
    #On the week of month
    Element Should Be Visible                       ${ActionsOnWeekMonthDD}
    #Of Month of Year
    Element Should Be Visible                       ${ActionsOfMonthYearDD}
    #Include weekends?
    Log to Console      Include weekends? = No
    Element Should Be Visible                       ${ActionsIncludeWeekendsDDNo}
#    #Recur on specific day?
#    Click Element                                   ${ActionsRecurSpecificDayDD}
#    Wait Until Element Is Visible                   ${ActionsRecurSpecificDayYes1}                40 seconds
#    Click Element                                   ${ActionsRecurSpecificDayYes1}
    #Recur every
    Log to Console      Recur every
    Element Should Be Visible                       ${ActionsRecurEveryLabel}
    Click Element                                   ${ActionsRecurEveryDD}
    Wait Until Element Is Visible                   ${ActionsRecurEveryMonday}                    40 seconds
    Click Element                                   ${ActionsRecurEveryMonday}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Frequency_Months - Recur every triggered.png
    #On the week of month
    Click Element                                   ${ActionsOnWeekMonthDD}
    Wait Until Element Is Visible                   ${ActionsOnWeekMonthFirst}                    40 seconds
    Click Element                                   ${ActionsOnWeekMonthFirst}
    #Of Month of Year
    Click Element                                   ${ActionsOfMonthYearDD}
    Wait Until Element Is Visible                   ${ActionsMonthYearJan}                        40 seconds
    Click Element                                   ${ActionsMonthYearJan}
    #Action start/due date
    Log to Console      Action start/due date
    ${CurrentDate}          Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsStartDueDate}                      ${CurrentDate}
    #Recurrence end date
    Log to Console      Recurrence end date
    ${EndDate}          Get Current Date            result_format=%d/%m/%Y                       increment=+1000 day
    Set Global Variable                             ${EndDate}
    Input Text                                      ${ActionsEndDate}                            ${EndDate}
    #Set number of occurrences?
    Element Should Be Visible                       ${ActionsSetNoOccurrencesDDNo}
    #Pending days
    Log to Console      Pending days
    Input Text                                      ${ActionsPendingDays}                        15
    #Notify in advance?
    Log to Console      Notify in advance?
    Click Element                                   ${ActionsNotifyInAdvanceDD}
    Wait Until Element Is Visible                   ${ActionsNotifyInAdvanceYes}                 40 seconds
    Click Element                                   ${ActionsNotifyInAdvanceYes}
    #Period of pre-escalation
    Log to Console      Period of pre-escalation
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    Wait Until Element Is Visible                   ${ActionsPeriodPreEscalation60Days}           40 seconds
    Click Element                                   ${ActionsPeriodPreEscalation60Days}
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    #Supporting Documents
    Log to Console      Supporting Documents
    Sleep       1
    Click Element                                   ${ActionsSupportDocsTab}
    Wait Until Element Is Visible                   ${ActionsSupportDocsLink}                       20 seconds
    Click Element                                   ${ActionsSupportDocsLink}
    #Alert should be present
    Switch Window
    sleep       1
    Wait Until Element Is Visible                   ${ActionsSupportDocUrl}                         20 seconds
    Input Text                                      ${ActionsSupportDocUrl}                         www.isomertix.com
    Input Text                                      ${ActionsSupportDocURLTitle}                    Isometrix
    Click Element                                   ${ActionsSupportDocURLAdd}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Supporting Documents Link Added.png
    sleep       1
    Select Frame                                    ${iFrame}
    #Action Details Tab
    Log to Console      Action Details Tab
    Click Element                                   ${ActionDetailTab}
    Sleep       1
    Scroll Element Into View                        ${ActionsCreateActionBtn}
    Sleep       1
    Click Element                                   ${ActionsCreateActionBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    #Supporting Documents Tab
    Log to Console      Supporting Documents Tab
    Click Element                                   ${ActionsSupportDocsTab}
    Wait Until Page Contains Element                ${ActionsSupportDocsLinkAdded}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Supporting Documents Added.png
    #Action Details Tab
    Log to Console      Action Details Tab
    Click Element                                   ${ActionDetailTab}
    Sleep       1
    Element Should Be Visible                       ${ActionsPFScheduled}
    Element Should Be Visible                       ${ActionsFeedbackTab}
    Element Should Be Visible                       ${ActionsExtensionRequestLogTab}
    Element Should Be Visible                       ${ActionsEscalationDDIanAdmin}
    Scroll Element Into View                        ${ActionsRequestActionExtensionBtn}
    Element Should Be Visible                       ${ActionsStatusPending}
    Element Should Be Visible                       ${ActionsActionCompleteFeedbackBtn}
    Element Should Be Visible                       ${ActionsRecordNo}
    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record Saved - To be initiated/Scheduled phase Pending Status.png


#*********************************************** FR1-02: Capture Actions_Recurring_OS2 ******************************************************
#Capture Actions_Recurring_OS2

#*********************************************** FR1-02: Capture Actions_Recurring_OS3 ******************************************************
Capture Actions_Recurring_OS3
    #Click on Actions Add Button
    Log to Console     Click on Actions Add Button
    Click Element                                   ${ActionsAddBtn}
    Wait Until Element Is Visible                   ${AdHocActionsRecordHeader}                 40 seconds
    #Save and Continue Button
    Element Should Be Visible                       ${ActionsCreateActionBtn}
    Element Should Be Visible                       ${ActionDetailTab}
    Element Should Be Visible                       ${ActionsSupportDocsTab}
    Click Element                                   ${ActionsPF}
    Wait Until Element Is Visible                   ${ActionsPFAddAction}                       40 seconds
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/New Actions Record Opened - Add Action phase.png
    #Business unit
    Log to Console      Business unit
    Click Element                                   ${ActionsBUDD}
    Wait Until Element Is Visible                   ${ActionsBUGlobalCompanyExpand}              40 seconds
    Click Element                                   ${ActionsBUGlobalCompanyExpand}
    Wait Until Element Is Visible                   ${ActionsBUSouthAfricaExpand}                40 seconds
    Click Element                                   ${ActionsBUSouthAfricaExpand}
    Wait Until Element Is Visible                   ${ActionsBUVictorySite}                      40 seconds
    Click Element                                   ${ActionsBUVictorySite}
    #Action assignee
    Log to Console      Action assignee
    Click Element                                   ${ActionsAssigneeDD}
    Wait Until Element Is Visible                   ${Actions2Manager}                           40 seconds
    Click Element                                   ${Actions2Manager}
    #Action owner
    Log to Console      Action owner
    Element Should Be Visible                       ${ActionsOwner2Manager}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Owner 2 Manager.png
    #Action description
    Log to Console      Action description
    ${CurrentDate}          Get Current Date        result_format=%Y-%m-%d %H-%M-%S
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsDescription}                        FR1_Capture Actions_OS3 ${CurrentDate}
    #Action category
    Log to Console      Action category
    Click Element                                   ${ActionsCategoryDD}
    Wait Until Element Is Visible                   ${ActionsCategoryHealthSafety}               40 seconds
    Click Element                                   ${ActionsCategoryHealthSafety}
    #Action priority
    Log to Console      Action priority
    #Low
    Click Element                                   ${ActionsPriorityDD}
    Sleep       0.5
    Wait Until Element Is Visible                   ${ActionsPriorityDDLow}                      40 seconds
    Click Element                                   ${ActionsPriorityDDLow}
    Element Should Be Visible                       ${ActionsPriorityLowGreen}
    Sleep       1
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record - Priority Low Green.png
    #Cost
    Log to Console      Cost
    Click Element                                   ${ActionsCostDD}
    Wait Until Element Is Visible                   ${ActionsCostZAR}                            40 seconds
    Click Element                                   ${ActionsCostZAR}
    Input Text                                      ${ActionsCostInput}                          1234
    #Recurring action?
    Log to Console      Recurring action?
    Click Element                                   ${ActionsRecurringActionDD}
    Wait Until Element Is Visible                   ${ActionsRecurringActionDDYes}               40 seconds
    Click Element                                   ${ActionsRecurringActionDDYes}
    Scroll Element Into View                        ${ActionsCreateActionBtn}
    Sleep       1
    #Recurrence Frequency
    Element Should Be Visible                       ${ActionsRecurrenceFrequencyLabel}
    #Recurrence Range
    Element Should Be Visible                       ${ActionsRecurrenceRangeLabel}
    #Action status
    Log to Console      Action status - Scheduled
    Element Should Be Visible                       ${ActionsStatusScheduled}
    #Pending days required?
    Log to Console      Pending days required?
    Element Should Not Be Visible                   ${ActionsPendingDaysRequiredDDNo}
    #Action due date
    Log to Console      Action due date
    Element Should Not Be Visible                   ${ActionsDueDate}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Fields triggered and removed.png
    #Action Frequency
    Log to Console      Action Frequency - Months
    Input Text                                      ${ActionsActionFrequencyInput}                3
    Click Element                                   ${ActionsActionFrequencyDD}
    Wait Until Element Is Visible                   ${ActionsActionFrequencyYears}                40 seconds
    Click Element                                   ${ActionsActionFrequencyYears}
    #Recur on specific day?
    Element Should Be Visible                       ${ActionsRecurSpecificDayDD}
    #Recur every
    Element Should Be Visible                       ${ActionsRecurEveryDD}
    #On the week of month
    Element Should Be Visible                       ${ActionsOnWeekMonthDD}
    #Of Month of Year
    Element Should Be Visible                       ${ActionsOfMonthYearDD}
    #Include weekends?
    Log to Console      Include weekends? = No
    Click Element                                   ${ActionsIncludeWeekendsDD}
    Wait Until Element Is Visible                   ${ActionsIncludeWeekendsDDYes}                    40 seconds
    Click Element                                   ${ActionsIncludeWeekendsDDYes}
#    #Recur on specific day?
#    Click Element                                   ${ActionsRecurSpecificDayDD}
#    Wait Until Element Is Visible                   ${ActionsRecurSpecificDayYes1}                40 seconds
#    Click Element                                   ${ActionsRecurSpecificDayYes1}
    #Recur every
    Log to Console      Recur every
    Element Should Be Visible                       ${ActionsRecurEveryLabel}
    Click Element                                   ${ActionsRecurEveryDD}
    Wait Until Element Is Visible                   ${ActionsRecurEveryMonday}                    40 seconds
    Click Element                                   ${ActionsRecurEveryMonday}
    ${file0} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Recurring Action_Yes - Frequency_Months - Recur every triggered.png
    #On the week of month
    Click Element                                   ${ActionsOnWeekMonthDD}
    Wait Until Element Is Visible                   ${ActionsOnWeekMonthFirst}                    40 seconds
    Click Element                                   ${ActionsOnWeekMonthFirst}
    #Of Month of Year
    Click Element                                   ${ActionsOfMonthYearDD}
    Wait Until Element Is Visible                   ${ActionsMonthYearJan}                        40 seconds
    Click Element                                   ${ActionsMonthYearJan}
    #Action start/due date
    Log to Console      Action start/due date
    ${CurrentDate}          Get Current Date        result_format=%d/%m/%Y
    Set Global Variable                             ${CurrentDate}
    Input Text                                      ${ActionsStartDueDate}                      ${CurrentDate}
    #Recurrence end date
    Log to Console      Recurrence end date
    ${EndDate}          Get Current Date            result_format=%d/%m/%Y                       increment=+1000 day
    Set Global Variable                             ${EndDate}
    Input Text                                      ${ActionsEndDate}                            ${EndDate}
    #Set number of occurrences?
    Element Should Be Visible                       ${ActionsSetNoOccurrencesDDNo}
    #Pending days
    Log to Console      Pending days
    Input Text                                      ${ActionsPendingDays}                        15
    #Notify in advance?
    Log to Console      Notify in advance?
    Click Element                                   ${ActionsNotifyInAdvanceDD}
    Wait Until Element Is Visible                   ${ActionsNotifyInAdvanceYes2}                 40 seconds
    Click Element                                   ${ActionsNotifyInAdvanceYes2}
    #Period of pre-escalation
    Log to Console      Period of pre-escalation
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    Wait Until Element Is Visible                   ${ActionsPeriodPreEscalation60Days}           40 seconds
    Click Element                                   ${ActionsPeriodPreEscalation60Days}
    Click Element                                   ${ActionsPeriodPreEscalationDD}
    #Create Action Button
    Log to Console      Create Action Button
    Click Element                                   ${ActionsCreateActionBtn}
    Wait Until Element Is Visible                   ${RecordSaved2}                                  60 seconds
    Element Should Be Visible                       ${ActionsPFScheduled}
    Element Should Be Visible                       ${ActionsFeedbackTab}
    Element Should Be Visible                       ${ActionsExtensionRequestLogTab}
    Element Should Be Visible                       ${ActionsEscalationDDIanAdmin}
    Scroll Element Into View                        ${ActionsRequestActionExtensionBtn}
    Element Should Be Visible                       ${ActionsStatusPending}
    Element Should Be Visible                       ${ActionsActionCompleteFeedbackBtn}
    Element Should Be Visible                       ${ActionsRecordNo}
    ${recordnumber}=    SeleniumLibrary.Get Text    ${ActionsRecordNo}
    log    ${recordnumber}
    ${file1} =    Capture Page Screenshot    ${OUTPUTDIR}/Results/Actions Record Saved - To be initiated/Scheduled phase Pending Status.png











