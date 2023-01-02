*** Settings ***
Library    SeleniumLibrary

Variables    ../Locators/Locators.py

*** Keywords ***
Create linkine tikla
    Click Link    ${createAccountLink}
    
Logout butonu gorunmeli
    Element Should Be Visible    ${logoutBtn}

Login linkine tikla
    Click Link    ${loginLink}

Search butonuna tikla
    Click Button    ${searchBtn}
    Sleep     1

Urun aramasi yap
    [Arguments]    ${aranacakKelime}
    Input Text    ${searchBoxInput}    ${aranacakKelime}
    Press Keys    ${searchBoxInput}    ENTER
    Sleep    2