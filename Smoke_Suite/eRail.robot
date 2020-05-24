*** Settings ***
Documentation     A test suite with a single test for Indian Railways Enquiry PNR Status Live Status IRCTC Reservation Seats
...               Created by hats' Robotcorder
Library           SeleniumLibrary    timeout=10
Resource    ../Resources/Resources_eRail.robot
Test Setup   launchApp and maximize    ${URL} 
Test Teardown    close browser and take screenshot

*** Variables ***
${BROWSER}    chrome
${URL}    https://erail.in/
${SLEEP}    3

*** Test Cases ***
Indian Railways Enquiry PNR Status Live Status IRCTC Reservation Seats test
    [Tags]    Smoke
    
    Input Text    //input[@id="txtStationFrom"]    Kolkata
    Input Text    //input[@id="txtStationTo"]    Mumbai
    Click Element    xpath=(//div)[88]
    Click Element    //input[@title="Select Departure date for availability"]
    Click Element    xpath=(//td)[887]
    Select From List By Value    //select[@id="selectClassFilter"]    2
    Click Element    //input[@id="buttonFromTo"]
    Click Link    //a[@title="Hazrat Nizamuddin Bandra Terminus GARIB RATH"]
    
    