*** Settings ***
Library    SeleniumLibrary

Variables    ../Locators/Locators.py

*** Keywords ***
Create linkine tikla
    Click Link    ${createAccountLink}
    
Uyeligi onayla
    Element Should Be Visible    ${logoutBtn}
    