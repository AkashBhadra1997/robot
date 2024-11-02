*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}      https://demoapps.qspiders.com/ui/alert?sublist=0
${browser}  chrome


*** Test Cases ***
demo_shop
#    open browser    ${url}      ${browser}
#    set selenium speed    2s
#    alert_demo
    open browser    https://demoapps.qspiders.com/ui/auth?sublist=0     ${browser}
    maximize browser window
    auth
    close browser


*** Keywords ***
alert_demo
    wait until element is visible    xpath://button[text()='Alert Box']     10s
    click element    xpath://button[text()='Alert Box']
    alert should be present
    handle alert    ACCEPT
#    click element    xpath://a[text()='Confirm']
#    wait until element is visible   //button[text()='Confirm Box']
#    click element    xpath://button[text()='Confirm Box']
#    handle alert    DISMISS
auth
    wait until element is visible     //a[text()='Login']
#    click element    //a[text()='Login']
    open browser    https://admin:admin@basic-auth-git-main-shashis-projects-4fa03ca5.vercel.app/   ${browser}

frame
    click element    xpath://section[text()='Frames']
    wait until element is visible    xpath://section[text()='iframes']      10s
    click element    xpath://section[text()='iframes']
    input text    id:username   akashbhadra

