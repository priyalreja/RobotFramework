*** Settings ***
Library     SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      http://the-internet.herokuapp.com/login

*** Test Cases ***
TestingInputBox

    Open browser    ${url}      ${browser}
    maximize browser window
    title should be    The Internet
    ${"username_text"}  set variable    id:username
    element should be visible    ${"username_text"}
    element should be enabled    ${"username_text"}

    input text    ${"username_text"}    johndavid@gmail.com
    sleep    5
    clear element text    ${"username_text"}
    sleep    3
    close browser

*** Keywords ***
