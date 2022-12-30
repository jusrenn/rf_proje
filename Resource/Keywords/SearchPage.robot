*** Settings ***
Library    SeleniumLibrary
Library    Collections

Variables    ../Locators/Locators.py

*** Keywords ***
Sonuclarin basariyla gorundugunu kontrol et
    ${resultText}    Get Text    ${searchResult}
    Should Contain    ${resultText}    room
    
Urun fiyatlarini kucukten buyuge diz
    Select From List By Value    ${fiyatDropbox}    price-ascending
    Sleep    2

Urunlerin fiyatlarini listele
    # Liste elemanlarini $ ile veya @ ile tanimlayabilirim
    @{urunListesi}    Get WebElements    ${urunFiyatlariLocator}
    
    # Liste elemanlarini dongulerde mutlaka @ ile cagirmaliyim
    FOR  ${urun}  IN  @{urunListesi}
        ${urunText}    Get Text    ${urun}
        Log To Console    ${urunText}
    END

En ucuz urunun detay sayfasina git
    @{urunLinkleri}    Get WebElements    ${urunlerLinkleriLocator}
    Click Link    ${urunLinkleri}[0]
    Sleep    1
    