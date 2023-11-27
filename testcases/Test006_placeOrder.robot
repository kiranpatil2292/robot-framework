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

*** Test Cases ***
Tc013 placeOrder without firstName
    open my browser    ${siteurl}      ${browser}
    Enter Username     ${user}
    Enter Password     ${pwd}
    click signIn
    click drp_sortProduct    2
    click saucelabone
    click backlight
    click cartlink
    click checkout button
    Enter Firstname      ${Empty}
    Enter Lastname       ${lastName}
    Enter Postalcode     ${postalcode}
    click continue button
    error message display to enter firstname


Tc014 placeOrder without lastName
    open my browser    ${siteurl}      ${browser}
    Enter Username     ${user}
    Enter Password     ${pwd}
    click signIn
    click drp_sortProduct    2
    click saucelabone
    click backlight
    click cartlink
    click checkout button
    Enter Firstname      ${firstName}
    Enter Lastname       ${Empty}
    Enter Postalcode     ${postalcode}
    click continue button
    error message display to enter lastname

Tc015 placeOrder without postalcode
    open my browser    ${siteurl}      ${browser}
    Enter Username     ${user}
    Enter Password     ${pwd}
    click signIn
    click drp_sortProduct    2
    click saucelabone
    click backlight
    click cartlink
    click checkout button
    Enter Firstname      ${firstName}
    Enter Lastname       ${lastName}
    Enter Postalcode     ${EMPTY}
    click continue button
    error message display to enter postalcode

Tc016 place order with valid address detail
    open my browser    ${siteurl}      ${browser}
    Enter Username     ${user}
    Enter Password     ${pwd}
    click signIn
    click drp_sortProduct    2
    click saucelabone
    click backlight
    click cartlink
    click checkout button
    Enter Firstname      ${firstName}
    Enter Lastname       ${lastName}
    Enter Postalcode     ${postalcode}
    click continue button
    verify user nevigate to overview checkoutpage
