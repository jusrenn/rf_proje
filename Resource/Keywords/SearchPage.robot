*** Settings ***
Library    SeleniumLibrary
Library    String

Variables    ../Locators/Locators.py

*** Keywords ***
Sonuclarin basariyla gorundugunu kontrol et
    ${resultText}    Get Text    ${searchResult}
    ${strArray}    Split String    ${resultText}
    Should Be True    ${strArray}[0]>0

Urun fiyatlarini kucukten buyuge diz
    Select From List By Value    ${fiyatDropbox}    price-ascending
    Sleep    2

Urunlerin fiyatlarini konsola yaz
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

Hic sonuc bulunmadigini kontrol et
    ${resultText}    Get Text    ${searchResult}
    Should Contain    ${resultText}    No results