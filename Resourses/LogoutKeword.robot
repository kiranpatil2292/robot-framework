*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locaters.py


*** Keywords ***

click drp_menu
   click element  ${drp_menu}

click log_outbtn
   click link    ${btn_log_out}

click resetAppstatus
    click link    ${resetApp_status}

verify successfull logout
  title should be    Swag Labs



