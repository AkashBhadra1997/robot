*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${browser}      chrome
${url}      https://demoapps.qspiders.com/ui/dropdown?sublist=0


*** Test Cases ***
DemoShop
    open browser    ${url}      ${browser}
    set selenium speed   1s
    maximize browser window
    Single_select
    close window




*** Keywords ***
Single_select
    set selenium implicit wait    10s
    select from list by label    select1    +91
    input text    name:ph       7001050187
    select from list by index    select2    1
    select from list by label    select3    India
    select from list by label    select5    West Bengal
    select from list by label    xpath://label[text()='City']/..//select    Bankura
    select from list by label    select7    3
    click element    xpath://button[text()='Continue']