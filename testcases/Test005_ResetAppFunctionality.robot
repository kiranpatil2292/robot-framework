*** Settings ***
Library      SeleniumLibrary
Resource    ../PageObjects/Locaters.py
Resource    ../Resourses/LoginKeword.robot
Resource    ../Resourses/CartKeword.robot
Resource    ../Resourses/LogoutKeword.robot
*** Variables ***
${site_url}    https://www.saucedemo.com/
${browser}     chrome
${user}     standard_user
${pwd}      secret_sauce
${sort_index}    2
${cart_countpd}    0
*** Test Cases ***
Tc015 ResetAppFunctionality
    open my browser    ${site_url}    ${browser}
    Enter Username      ${user}
    Enter Password     ${pwd}
    click signIn
    click drp_sortProduct  ${sort_index}
    click backlight
    click saucelabone
    click drp_menu
    click resetAppstatus
    count Qntof product on cart1  ${cart_countpd}
    close my browser

