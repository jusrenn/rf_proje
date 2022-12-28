*** Settings ***
Library    SeleniumLibrary

Variables    ../Locators/Locators.py
Variables    ../TestData/TestData.py

*** Keywords ***
Gecerli mail ve sifreyi gir
    Input Text    ${emailInput}    ${emailStr}