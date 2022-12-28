*** Settings ***
Library    SeleniumLibrary

Variables    ../Locators/Locators.py
Variables    ../TestData/TestData.py

*** Keywords ***
Mail ve sifreyi gir
    [Arguments]    ${mailAdresi}    ${sifre}
    Input Text    ${emailInput}    ${mailAdresi}
    Input Password    ${passwordInput}    ${sifre}

Sigin butonuna tikla
    Click Button    ${signUpBtn}

Girisin basarisiz oldugunu dogrula
    ${errorText}    Get Text    ${error}
    Should Be Equal    ${errorText}    Incorrect email or password.