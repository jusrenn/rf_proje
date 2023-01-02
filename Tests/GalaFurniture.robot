*** Settings ***
Documentation    GALA FURNITURE projesi
Library    SeleniumLibrary

Resource    ../Resource/Keywords/HomePage.robot
Resource    ../Resource/Keywords/RegisterPage.robot
Resource    ../Resource/Keywords/LoginPage.robot
Resource    ../Resource/Keywords/SearchPage.robot
Resource    ../Resource/Keywords/ProductPage.robot
Resource    ../Resource/Keywords/CategoryPage.robot

Variables    ../Resource/TestData/TestData.py

Test Setup    Open Browser    ${URL}    ${BROWSER}
Test Teardown    Close Browser

*** Test Cases ***
Yeni bir hesap olustur
    Create linkine tikla
    Uyelik formunu doldur
    Logout butonu gorunmeli

Login testi
    [Documentation]    Aktif bir mail adresi ve sifresi ile giris yap
    Login linkine tikla
    Mail ve sifreyi gir    ${emailStr}    ${passwordStr}
    Sigin butonuna tikla
    Logout butonu gorunmeli

Negatif login testi
    [Documentation]    Varolmayan bir mail adresi veya hatali bir sifre ile giris yap
    Login linkine tikla
    Mail ve sifreyi gir    asdasd@asasd.com    123456
    Sigin butonuna tikla
    Girisin basarisiz oldugunu dogrula

Pozitif urun arama testi
    Search butonuna tikla
    Urun aramasi yap    room
    Sonuclarin basariyla gorundugunu kontrol et
    Urun fiyatlarini kucukten buyuge diz
    Urunlerin fiyatlarini konsola yaz
    En ucuz urunun detay sayfasina git
    Urunun basliginin ayni oldugunu kontrol et    Domina Jar

Negatif urun aramasi testi
    Search butonuna tikla
    Urun aramasi yap    yusuf
    Hic sonuc bulunmadigini kontrol et

400 dolardan ucuz Deskleri listele
    Home Office Hower Over
    Home Office sekmesinden Desk'e tikla
    Desk sayfasinda oldugunu onayla
    Fiyat araligi belirle
    Urunlerin isimlerini konsola yazdir