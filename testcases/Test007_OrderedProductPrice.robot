*** Settings ***
Library       SeleniumLibrary
Resource    ../Resourses/CheckoutKeword.robot
Resource    ../Resourses/LoginKeword.robot
Resource    ../Resourses/CartKeword.robot


*** Variables ***
${siteurl}     https://www.sauceDemo.com
${browser}     chrome
${user}        standard_user
${pwd}         secret_sauce
${firstName}    kiran
${lastName}     patil
${postalcode}      1235
${NoproductPrice}    Item total: $0
${pdPricewithNoTax}  Item total: $37.98
${pdpriceWithTax}    Total: $41.02
*** Test Cases ***
Tc017 verify price of product without adding product to cart
    open my browser    ${siteurl}      ${browser}
    Enter Username     ${user}
    Enter Password     ${pwd}
    click signIn
    click drp_sortProduct    2
    click cartlink
    click checkout button
    Enter Firstname      ${firstName}
    Enter Lastname       ${lastName}
    Enter Postalcode     ${postalcode}
    click continue button
    orderedProductPrice without tax    ${NoproductPrice}
    close my browser

Tc018 verify price of product with adding product to cart
    open my browser    ${siteurl}      ${browser}
    Enter Username     ${user}
    Enter Password     ${pwd}
    click signIn
    click drp_sortProduct    2
    click saucelabone
    click saucelabbackpack
    click cartlink
    click checkout button
    Enter Firstname      ${firstName}
    Enter Lastname       ${lastName}
    Enter Postalcode     ${postalcode}
    click continue button
    orderedProductPrice without tax    ${pdPricewithNoTax}
    close my browser

