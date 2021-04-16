*** Settings ***
Library  SikuliLibrary      mode=NEW

*** Variables ***

*** Keywords ***
ViewReports - Word Document
    Start Sikuli Process
    Add Image Path              C:/Users/Delwin.Horsthemke/PycharmProjects/Robot_Audits/Sikuli
    Click                       View Report Word.png
    sleep   3 seconds
    capture page screenshot

ViewReports - Word Document Close
    Start Sikuli Process
    Add Image Path              C:/Users/Delwin.Horsthemke/PycharmProjects/Robot_Audits/Sikuli
    Click                       View Report Word_Close.png
    sleep   3 seconds
    capture page screenshot
    Close Window