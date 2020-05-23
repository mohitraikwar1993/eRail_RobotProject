*** Settings ***
Documentation    This file contains reusable keywords
Library    SeleniumLibrary    
Library    ../python_programs/Locators.py    
              
          

*** Variables ***


*** Keywords ***
launchApp and maximize
    [Documentation]    method or keyword with argument
    [Arguments]    ${url}
    Open Browser    ${url}     chrome
    Maximize Browser Window

close browser and take screenshot
    [Documentation]    close the browser and take the screenshot
    Capture Page Screenshot    ././snapshots/screenshot.png    
    Close All Browsers
    
Read Element Locator
    [Arguments]    ${json_Path}
    ${value}=    read_element_locator_value    ${json_Path}
    [Return]    ${value}