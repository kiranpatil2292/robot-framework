*** Settings ***
Library       SeleniumLibrary
Resource   ../Resourses/LoginKeword.robot
Resource   ../Resourses/CartKeword.robot

*** Variables ***
${siteurl}  https://www.saucedemo.com/
${browser}  chrome
${user}     standard_user
${pwd}      secret_sauce
${drp_lst}  2
${Qnt}       3
*** Test Cases ***

# verify continueShopping Functinality
Tc011 continueShopping Functinality
      open my browser   ${site_url}  ${browser}
      maximize browser window
      Enter Username    ${user}
      Enter Password    ${pwd}
      click signIn
      click drp_sortProduct    ${drp_lst}
      click backlight

      click saucelabone
      click removeSauceLabOne
      click cartlink
      click continue shopping button
      verify user nevigate to productPage

# verify checkout functanality
Tc012 checkout functionality
      open my browser    ${siteurl}    ${browser}
      maximize browser window
      set selenium implicit wait    4s
      Enter Username    ${user}
      Enter Password    ${pwd}
      click signIn
      click saucelabone
      click backlight
      click cartlink
      click checkout button
      verify user nevigate to check cartpage