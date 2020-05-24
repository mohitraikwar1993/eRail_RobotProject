*** Settings ***
Library    SeleniumLibrary 
Resource    ../Resources/Resources_eRail.robot
Test Setup    launchApp and maximize    ${url}
Test Teardown    close browser and take screenshot 

*** Variables ***

${url}    https://erail.in/  
@{cityname}  BhopalJn    Bangalore East    123    Mohit
&{cname}    from=BhopalJn    to=Bangalore East
 
*** Keywords ***
    


*** Test Cases ***
LoginTOeRail_RegressionSuite
    [Documentation]    verifiying the login functionality of eRail application 
    [Tags]    Regression
    
    Clear Element Text     id=txtStationFrom
    Input Text    id=txtStationFrom    @{cityname}[0]
    Press Keys    id=txtStationFrom    ENTER 
    Clear Element Text     id=txtStationTo
    Input Text    id=txtStationTo    &{cname}[to]
    Press Keys    id=txtStationTo    ENTER
    Click Button    id=buttonFromTo    
    
    

    #Sleep    8s    
    



    