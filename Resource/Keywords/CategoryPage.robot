*** Settings ***
Library    SeleniumLibrary

Variables    ../Locators/Locators.py

*** Keywords ***
Desk sayfasinda oldugunu onayla
    ${actualURL}    Get Location
    Should Contain    ${actualURL}    desk

Fiyat araligi belirle
    Click Element    ${priceSekmesi}
    Input Text    ${maxFiyatInput}    400