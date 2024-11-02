*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}  https://demo.guru99.com/test/simple_context_menu.html
${browser}  chrome

*** Test Cases ***
click action
    open browser    ${url}  ${browser}
    set selenium speed    1s
    all_link
#    double click the button







*** Keywords ***
links
    open browser    ${url}  ${browser}
    ${links}=    get webelements    xpath://a
    FOR    ${i}    IN   @{links}
    ${href}=     get element attribute    ${i}   href
    log to console   ${href}
    END

right click
    open context menu    //span[text()='right click me']
    wait until element is visible    xpath://*[text()='Copy']   10s
    click element    xpath://*[text()='Copy']
    handle alert    ACCEPT

double click the button
    double click element    xpath://button[text()='Double-Click Me To See Alert']
    handle alert    DISMISS


all_link
    ${links}=    get webelements    xpath://a
    FOR     ${i}    IN      @{links}
    ${href}=    get element attribute    ${i}   href
    log to console    ${href}
    END
