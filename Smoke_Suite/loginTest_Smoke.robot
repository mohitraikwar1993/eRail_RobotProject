*** Settings ***
Library    SeleniumLibrary  
Resource    ../Resources/Resources_eRail.robot
Test Setup    launchApp and maximize    ${url}
Test Teardown    close browser and take screenshot
Force Tags    ALL_TC


*** Variables ***

${url}    https://erail.in/  
@{cityname}  BhopalJn    Bangalore East
&{cname}    from=BhopalJn    to=Bangalore East
 
*** Keywords ***
   

*** Test Cases ***
LoginTOeRail_loginTestSuite
    [Documentation]    verifiying the login functionality of eRail application 
    [Tags]    Smoke    Sanity

    Clear Element Text     id=txtStationFrom
    Input Text    id=txtStationFrom    ${cityname}[0]
    Press Keys    id=txtStationFrom    ENTER
    ${currenturl}=    Get Location
    Log    ${currenturl}    

Test Login
    [Tags]    Smoke
    Clear Element Text     id=txtStationFrom
    Input Text    id=txtStationFrom    ${cityname}[0]
    Press Keys    id=txtStationFrom    ENTER
    ${currenturl}=    Get Location
    Log    ${currenturl}        


    