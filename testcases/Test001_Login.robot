*** Settings ***
Library     SeleniumLibrary
Resource   ../Resourses/LoginKeword.robot

*** Variables ***
${siteurl}  https://www.saucedemo.com/
${browser}  chrome
${user}     standard_user
${pwd}      secret_sauce

*** Test Cases ***
# testwith valid userName & password
[Tags] positive
Tc001 cLogintest
      open my browser   ${siteurl}  ${browser}
      Enter Username    ${user}
      Enter Password    ${pwd}
      click signIn
      verify user successfull Login
      close my browser

# test with  valid username & invalid password
[Tags] negative
TC002 Logintest
    open my browser  ${siteurl}  ${browser}
    Enter username   ${ user}
    Enter password   abcdf
    click signIn
    verify user unable to login
    close my browser

# test with invalid username & valid password
[Tags] negative
TC003 Logintest
   open my browser  ${siteurl}   ${browser}
   Enter username   aewrwtw
   Enter password   ${pwd}
   click signIn
   verify user unable to login
   close my browser

# test with invalid username & invalid password
[Tags] negative
Tc004 Logintest
  open my browser  ${siteurl}   ${browser}
  Enter username    kiran
  Enter password    patil
  click signIn
  verify user unable to login
  close my browser

#test with valid username and blank password
[Tags] negative
Tc005 Logintest005
   open my browser  ${siteurl}   ${browser}
   Enter Username   ${user}
   Enter password   ${empty}
   click signIn
   verify user unable to login
   close my browser

#test with  blank username and  valid password
[Tags] negative
Tc006 Logintest
   open my browser  ${siteurl}   ${browser}
   Enter username   ${empty}
   Enter password   ${pwd}
   click signIn
   verify user unable to login
   close my browser

# test login with valid credentials but suddenly refresh browser
[Tags] negative
Tc007 Logintest
   open my browser  ${siteurl}  ${browser}
   Enter username   ${user}
   Enter password   ${pwd}
   click signIn
   go back
   verify user unable to login
   close my browser


