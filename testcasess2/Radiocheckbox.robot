*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}      https://www.shoppersstack.com/
${fname}    Shilpa
${lname}    Haldar
${password}     Shilpa@2003
${sex}      Female
${sex_value}    FEMALE
${ph_num}   8906786545
${email}    shilpahaldar@gmail.com

*** Test Cases ***
TestRegister
    open browser    ${url}      ${browser}
    set selenium speed    1s
    maximize browser window
#    RegisterInShopperStack
#    sleep    3s
    login_shopperstack
    close window
*** Keywords ***
RegisterInShopperStack
     wait until element is visible    id:loginBtn    10s
    ${loginbutton}      set variable    id:loginBtn
    element should be visible    ${loginbutton}
    element should be enabled    ${loginbutton}
    click element    ${loginbutton}
    wait until element is visible    xpath://span[text()='Create Account']  10s
    click element    xpath://span[text()='Create Account']
    sleep    4s
    input text    id:First Name     ${fname}
    input text    id:Last Name      ${lname}
    select radio button    ${sex}    ${sex_value}
    input text    name:Phone Number     ${ph_num}
    input text    id:Email Address      ${email}
    input text    id:Password       ${password}
    input text    id:Confirm Password   ${password}
    select checkbox    Terms and Conditions
    unselect checkbox    Terms and Conditions
    sleep    3s
    select checkbox    Terms and Conditions
    click element    id:btnDisabled

Login_shopperstack
    wait until element is visible    id:loginBtn    10s
    click element    name:loginBtn
    input text    name:Email    ${email}
    input text    name:Password     ${password}
    click element    xpath://span[text()="Login"]
    wait until element is visible    id:category    10s
    select from list by value    category   men
    click element    name:searchBtn