*** Settings ***
Library      SeleniumLibrary
Resource    ../Resourses/DdLoginKeword.robot
Library     DataDriver     ../TestData/DDLogin.xlsx     sheet_name=Sheet1
Suite Setup     opening my browser
Suite Teardown   closeing browser
Test Template    Invalid login

*** Test Cases ***
LoginTestwithExcel using  ${username}   ${password}


*** Keywords ***
Invalid login
     [Arguments]            ${username}          ${password}
     inputting username     ${username}
     inputting password      ${password}
     click loginbutton
     verify user not able to login
