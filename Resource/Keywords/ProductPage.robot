*** Settings ***
Library    SeleniumLibrary

Variables    ../Locators/Locators.py

*** Keywords ***
Urunun basliginin Domina Jar oldugunu teyit et
    ${urunBasligiText}    Get Text    ${urunBasligi}
    Should Contain    ${urunBasligiText}    Domina Jar
