*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}      https://www.flipkart.com/

*** Test Cases ***
practics_scrolling
    open browser    ${url}   ${browser}
    maximize browser window
    set selenium speed    2s
    scroll



*** Keywords ***
scroll
    input text    xpath://input[@class="Pke_EE"]    iphone
    click element   xpath://button[@type="submit"]
    execute javascript      window.scrollTo(0,document.body.scrollHeight)
    execute javascript      window.scrollTo(0,-document.body.scrollHeight)
#    wait until element is visible    xpath://div[text()='Apple iPhone 15 Pro Max (Blue Titanium, 1 TB)']
#    scroll element into view    xpath://div[text()='Apple iPhone 15 Pro Max (Blue Titanium, 1 TB)']
#    execute javascript    window.scrollTo(0,2500)
