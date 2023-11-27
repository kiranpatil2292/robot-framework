*** Settings ***
Library      SeleniumLibrary
Variables    ../PageObjects/Locaters.py

*** Keywords ***
Enter Firstname
    [Arguments]       ${first_name}
    input text      ${txt_Firstname}    ${first_name}

Enter Lastname
    [Arguments]    ${last_name}
    input text     ${txt_lastname}     ${last_name}

Enter Postalcode
    [Arguments]    ${postal_code}
    input text    ${txt_Postalcode}    ${postal_code}

click continue button
    click button    ${btn_continue}

orderedProductPrice without tax
    [Arguments]    ${productexpected_Price}
    ${product_price}    get text  ${orderedProduct_Price}
    should be equal as strings    ${product_price}    ${productexpected_Price}

orderedProductPrice with tax
    [Arguments]    ${productexpected_Price}
    ${product_price}    get text  ${orderedProduct_Price}
    should be equal as strings    ${product_price}    ${productexpected_Price}

error message display to enter firstname
    page should contain    Error: First Name is required

error message display to enter lastname
    page should contain   Error: Last Name is required

error message display to enter postalcode
    page should contain  Error: Postal Code is required

verify user nevigate to overview checkoutpage
    page should contain     Checkout: Overview

