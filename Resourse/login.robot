*** Settings ***
Library    SeleniumLibrary
Variables    C:/Users/akash/PycharmProjects/Rortframework/locator/locatore.py


*** Keywords ***
open my browser register
    [Arguments]    ${url}       ${browser}
    open browser    ${url}      ${browser}
    maximize browser window
    click element    ${register_button}

Enter gender
    click element    ${gender}

Enter fname
    [Arguments]     ${firstname}
    input text    ${fname}      ${firstname}

Enter lname
    [Arguments]    ${lastname}
    input text    ${lname}      ${lastname}

Enter Email
    [Arguments]     ${Email}
    input text    ${email}      ${email}

Enter Passward
    [Arguments]    ${Password}
    input text    ${password}       ${Password}

Enter Confirm_p
    [Arguments]    ${password}
    input text    ${password}   ${Password}

Click Register
    click element    ${register}