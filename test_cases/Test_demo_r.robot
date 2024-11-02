*** Settings ***
Library    SeleniumLibrary
Resource    C:/Users/akash/PycharmProjects/Rortframework/Resourse/login.robot

*** Variables ***
${url}  https://demowebshop.tricentis.com
${browser}      chrome
${Fname}    Akash
${Lname}    Bhadra
${Email}    bhadraariku@gmail.com
${Password}     Akash@1997


*** Test Cases ***
testregister
    set selenium implicit wait    10s
    open my browser register    ${url}      ${browser}
    Enter gender
    Enter fname    ${Fname}
    Enter lname    ${Lname}
    Enter Email    ${Email}
    Enter Passward    ${Password}
    Enter Confirm_p    ${Password}
    close window