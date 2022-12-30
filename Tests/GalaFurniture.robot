*** Settings ***
Documentation    GALA FURNITURE projesi
Library    SeleniumLibrary

Resource    ../Resource/Keywords/HomePage.robot
Resource    ../Resource/Keywords/RegisterPage.robot
Resource    ../Resource/Keywords/LoginPage.robot
Resource    ../Resource/Keywords/SearchPage.robot

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
    Room aramasi yapin
    Sonuclarin basariyla gorundugunu kontrol et