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
    