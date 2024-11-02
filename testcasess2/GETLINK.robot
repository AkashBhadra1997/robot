*** Settings ***
Library    SeleniumLibrary
Suite Setup    OPEN
Suite Teardown    CLOSE


*** Test Cases ***
get_links
    all_links
    link_text



*** Keywords ***
link_text
    set selenium speed    2s
    ${all_links}=   get element count    xpath://a
    log to console    ${all_links}

#    FOR     ${I}    IN RANGE    1   ${all_links}+1
#    ${link_text}=   get text    xpath:(//a)[${I}]
#    log to console    ${link_text}
#    END

all_links
   ${links}     get webelements    xpath://a
   FOR    ${link}   IN    @{Links}
   ${href}=     get element attribute    xpath://a      href
   ${text}=     get text    xpath://a
   log to console    ${href}
   log to console    ${text}
   END

OPEN
    log to console    start
    open browser    https://www.semrush.com/      chrome
    maximize browser window
CLOSE
    close browser
    log to console    end