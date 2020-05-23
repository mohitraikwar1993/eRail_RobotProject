*** Settings ***
Documentation     A test suite with a single test for Indian Railways Enquiry PNR Status Live Status IRCTC Reservation Seats
...               Created by hats' Robotcorder
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}    3

*** Test Cases ***
Indian Railways Enquiry PNR Status Live Status IRCTC Reservation Seats test
    Open Browser    https://erail.in/    ${BROWSER}
    Input Text    //input[@id="txtStationFrom"]    Kolkata
    Input Text    //input[@id="txtStationTo"]    Mumbai
    Click Element    xpath=(//div)[88]
    Click Element    //input[@title="Select Departure date for availability"]
    Click Element    xpath=(//td)[887]
    Select From List By Value    //select[@id="selectClassFilter"]    2
    Click Element    //input[@id="buttonFromTo"]
    Click Link    //a[@title="Hazrat Nizamuddin Bandra Terminus GARIB RATH"]
    
    Close Browser