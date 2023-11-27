*** Settings ***
Library    SeleniumLibrary
Variables  ../PageObjects/Locaters.py

*** Keywords ***

click drp_sortProduct
   [Arguments]    ${drp_lst}
   select from list by index  ${drp_Product_Sort}   ${drp_lst}

click saucelabone
     click element    ${pd_SauceLabOne}

click backlight
     click element    ${pd_backLight}

click saucelabbackpack
     click element    ${pd_sauceLabBackPack}

click cartlink
     click link       ${cart_link}

click removeSauceLabOne
      click element    ${remove_pd_SauceLabOne}

count Qntof product on cart1
      [Arguments]     ${expected_result}
      ${Product_count}  get text    ${cart_Badge}
      should be equal as strings  ${product_count}    ${expected_result}

click continue shopping button
     click element    ${continue_Shopping}

click checkout button
      click element    ${checkout}


verify user nevigate to productPage
    page should contain     Products

verify user nevigate to check cartpage
   page should contain    Checkout: Your Information