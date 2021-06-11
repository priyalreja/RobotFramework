*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}  Chrome
${url}  http://the-internet.herokuapp.com/login

*** Test Cases ***
LoginTest
    Open Browser    ${url}      ${browser}
    close browser

*** Keywords ***
loginToApplication
    input text      id:username     tomsmith
    input text      id:password     SuperSecretPassword!
    click element   xpath://*[@id="login"]/button/i