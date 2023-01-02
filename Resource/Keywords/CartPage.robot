*** Settings ***
Library    SeleniumLibrary

Variables    ../Locators/Locators.py

*** Keywords ***
Remove butonuna tikla
    Click Link    ${removeLink}
    Sleep    2

Sepetin bos oldugunu teyit et
    ${emptyCartText}    Get Text    ${emptyCart}
    Should Contain    ${emptyCartText}    Your cart is empty