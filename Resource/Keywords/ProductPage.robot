*** Settings ***
Library    SeleniumLibrary

Variables    ../Locators/Locators.py

*** Keywords ***
Urunun basliginin ayni oldugunu kontrol et
    [Arguments]    ${enUcuzUrununBasligi}
    ${urunBasligiText}    Get Text    ${urunBasligi}
    Should Contain    ${urunBasligiText}    ${enUcuzUrununBasligi}
