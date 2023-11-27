*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locaters.py

*** Variables ***
${siteurl}  https://www.saucedemo.com/
${browser}  chrome

*** Keywords ***
opening my browser
     open browser    ${siteurl}    ${browser}
     maximize browser window


closeing browser
     close all browsers

inputting username
    [Arguments]       ${username}
     input text       ${txt_login_username}    ${username}

inputting password
    [Arguments]       ${password}
     input text       ${txt_login_password}    ${password}

click loginbutton
      click button    ${login_sign_In}

verify user not able to login
     page should contain      Epic sadface: Username and password do not match any user in this service

