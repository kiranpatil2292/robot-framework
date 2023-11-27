
*** Settings ***
Library     SeleniumLibrary
Resource   ../Resourses/LoginKeword.robot
Resource   ../Resourses/LogoutKeword.robot


*** Variables ***
${siteurl}  https://www.saucedemo.com/
${browser}  chrome
${user}     standard_user
${pwd}      secret_sauce

*** Test Cases ***
Tc008 logoutTest
      open my browser   ${siteurl}  headless ${browser}
      maximize browser window


      Enter Username    ${user}
      Enter Password   ${pwd}
      click signIn
      click drp_menu
      sleep    4s
      click log_outbtn
       sleep    4s
      verify successfull logout
      close my browser
