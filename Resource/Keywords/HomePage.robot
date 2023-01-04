*** Settings ***
Library    SeleniumLibrary

Variables    ../Locators/Locators.py
Variables    ../TestData/TestData.py

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

Home Office Hower Over
    Mouse Over    ${homeofficeLocator}

Home Office sekmesinden Desk'e tikla
    Click Link    ${deskLocator}

Living Room Set kategorisinden ilk urune tikla
    Click Element    ${LivingRoomSetIlkUrun}

Sayfanin en altina git
    Execute Javascript    window.scrollTo(0,10000)

Email adresini gir
    Input Text    ${haberBulteniInput}    ${emailStr}
    Press Keys    ${haberBulteniInput}    ENTER
    Sleep    30

Haber bultenine kayit oldugunu dogrula
    ${haberBulteniText}    Get Text    ${haberBulteniDogrulama}
    Should Contain    ${haberBulteniText}    Thanks