*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary

Variables    ../Locators/Locators.py

*** Keywords ***
Uyelik formunu doldur
    ${FLisim}    FakerLibrary.Name
    Input Text    ${isim}    ${FLisim}