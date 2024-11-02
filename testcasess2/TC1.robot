*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://www.goibibo.com/

*** Test Cases ***
LoginTest
#    create webdriver    chrome  executable-path="C:\Users\akash\PycharmProjects\chromedriver-win64"
    open browser        ${url}  ${browser}
    maximize browser window
    SearchFlights
    close browser

*** Keywords ***
SearchFlights
    click element    xpath://span[@class="logSprite icClose"]
    click element    xpath:(//div[@class="sc-12foipm-2 eTBlJr fswFld "])[1]
    input text    xpath://span[text()='From']/..//input     Kolkata
    wait until element is visible    xpath://p[text()='Netaji Subhash Chandra Bose International ...']/../../../..  10s
    click element    xpath://p[text()='Netaji Subhash Chandra Bose International ...']/../../../..
    click element    xpath:(//div[@class="sc-12foipm-91 biWUTl"])[1]
    sleep   2s
    click element    xpath:(//div[@class="sc-12foipm-2 eTBlJr fswFld "])[2]
    wait until element is visible    xpath://span[text()='To']/..//input    10s
    input text    xpath://span[text()='To']/..//input   Bnengaluru
    sleep   1s
    click element    xpath://p[text()='Bengaluru International Airport']/../..
    click element    xpath://span[@class="sc-12foipm-8 eXKWBG fswDownArrow"]
    set selenium implicit wait    3s
    click element    xpath://div[text()="November 2024"]/../..//p[text()='22']
    click element    xpath://span[@class="sc-12foipm-72 ezNmSh"]


