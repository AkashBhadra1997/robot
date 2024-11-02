*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  http://49.249.28.218:8888/index.php?action=index&module=Home

*** Test Cases ***
Scrolling
#    open browser    ${url}  ${browser}
    set selenium speed    2s
    LoginV-tiger
#    close browser


*** Keywords ***
LoginV-tiger
    title should be    vtiger CRM 5 - Commercial Open Source CRM
    ${username}     set variable    name:user_name
    element should be visible    ${username}
    element should be enabled    ${username}
    wait until element is visible    ${usern ame}
    input text    ${username}   admin
    sleep    5s
    ${userpassword}     set variable    name:user_password
    element should be visible    ${userpassword}
    element should be enabled    ${userpassword}
    wait until element is visible    ${userpassword}
    input text    ${userpassword}   admin
    click element    id:submitButton
#    log to console    ${userpassword}