*** Settings ***
Library    SeleniumLibrary

Variables    ../Locators/Locators.py

*** Keywords ***
Sonuclarin basariyla gorundugunu kontrol et
    ${resultText}    Get Text    ${searchResult}
    Log To Console    ${resultText}