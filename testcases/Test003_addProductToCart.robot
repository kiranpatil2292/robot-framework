*** Settings ***
Library       SeleniumLibrary
Resource   ../Resourses/LoginKeword.robot
Resource   ../Resourses/CartKeword.robot

*** Variables ***
${siteurl}  https://www.saucedemo.com/
${browser}    headless chrome
${user}     standard_user
${pwd}      secret_sauce
${drp_lst}  2
${Qnt}       3
${cart_pdQnt} 2
*** Test Cases ***
# add product to cart
Tc009 Add Product To Cart
      open my browser   ${siteurl}  ${browser}
      maximize browser window
      Enter Username    ${user}
      Enter Password    ${pwd}
      click signIn
      sleep   3
      click drp_sortProduct     ${drp_lst}
      sleep   2
      click saucelabone
      click backlight
      click saucelabbackpack
      count Qntof product on cart1     ${Qnt}
      close my browser

# should remove product from cart
Tc010 Remove product from cart
      open my browser   ${site_url}  ${browser}
      maximize browser window
      set selenium implicit wait    3 sec
      Enter Username    ${user}
      Enter Password    ${pwd}
      click signIn

      click drp_sortProduct    ${drp_lst}
      click backlight
      click saucelabbackpack
      click saucelabone
      click removeSauceLabOne
      count qntof product on cart1     ${cart_pdQnt}
      close my browser

