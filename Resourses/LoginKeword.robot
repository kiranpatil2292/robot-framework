*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locaters.py

*** Keywords ***
Open my Browser
    [Arguments]    ${siteurl}    ${browser}
    open browser   ${siteurl}     ${browser}


Enter Username
    [Arguments]    ${username}
    input text     ${txt_login_username}  ${username}

Enter Password
   [Arguments]       ${password}
   input password    ${txt_login_password}   ${password}

click signIn
   click button  ${login_sign_In}




verify user successfull Login
   page should contain    Products

verify user unable to login
   page should contain    Epic sadface: Username and password do not match any user in this service
close my browser
   close browser









