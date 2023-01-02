*** Settings ***
Library    SeleniumLibrary

Variables    ../Locators/Locators.py

*** Keywords ***
Urunun basliginin ayni oldugunu kontrol et
    [Arguments]    ${enUcuzUrununBasligi}
    ${urunBasligiText}    Get Text    ${urunBasligi}
    Should Contain    ${urunBasligiText}    ${enUcuzUrununBasligi}

Add to Cart butonuna tikla
    Click Button    ${addToCartBtn}
    Sleep    2

View my cart butonuna tikla
    Click Link    ${cartLink}
