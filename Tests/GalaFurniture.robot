*** Settings ***
Documentation    GALA FURNITURE projesi
Library    SeleniumLibrary

Resource    ../Resource/Keywords/HomePage.robot
Resource    ../Resource/Keywords/RegisterPage.robot

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

    