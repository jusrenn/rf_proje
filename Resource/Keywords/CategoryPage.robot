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
    Sleep    3

Urunlerin isimlerini konsola yazdir
    ${urunBaslikList}    Get WebElements    ${urunBasliklari}

    FOR  ${e}  IN  @{urunBaslikList}
        ${eValue}    Get Text    ${e}
        Log To Console    ${eValue}
    END
    