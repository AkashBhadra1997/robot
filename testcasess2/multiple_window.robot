*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}      http://49.249.28.218:8888/index.php?action=index&module=Home
${url1}     https://www.google.com/
*** Test Cases ***
multiplewindow
    set selenium implicit wait    10s
    open browser    ${url1}  ${browser}
    ${loc}=    get location
    log to console    ${loc}
    sleep    5s
    go to    http://49.249.28.218:8888/index.php?module=Accounts&action=EditView&return_action=DetailView&parenttab=Marketing
    mul_window
    ${loc}=    get location
    log to console    ${loc}
    sleep    5s
    go back
    ${loc}=    get location
    log to console    ${loc}
#    maximize browser window
#    open browser      ${url}      ${browser}
#    maximize browser window
#
#    mul_window
*** Keywords ***
mul_window
    input text    name:user_name    admin
    input text    name:user_password    admin
    click element    id:submitButton
    click element    xpath://a[text()='Organizations']
    click element    xpath://img[@title="Create Organization..."]
    input text    name:accountname  LIC
    select from list by value    industry    Consulting
    select from list by value    accounttype     Competitor
    click element    xpath://img[@title="Select"]
    sleep  5s
    ${handels}  get window handles
    switch window    ${handels[1]}
    wait until element is visible    xpath://a[text()='faceBook_4275']
    click element    xpath://a[text()='faceBook_4275']
    handle alert    ACCEPT
    switch window    ${handels[0]}
    select checkbox    emailoptout
    select radio button    assigntype   T
    input text    class:detailedViewTextBox     mandu
    input text    id:email1     bhadrawe@gmail.com
    select from list by value    rating     Active
    click element    xpath:(//input[@class="crmbutton small save"])[1]

#switch
#    open browser