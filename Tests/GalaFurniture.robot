*** Settings ***
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
    Uyeligi onayla