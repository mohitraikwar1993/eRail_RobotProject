*** Settings ***
Library    SeleniumLibrary    
Suite Setup    Before Smoke Suite
Suite Teardown    After Smoke Suite

*** Keywords ***
Before Smoke Suite 
    [Documentation]    Execution of test suite under Smoke Suite folder starts
    Log    Execution of Smoke suite started   
     
    
After Smoke Suite 
    [Documentation]    Execution of test suite under Smoke Suite folder ended
    Log    Execution of Smoke suite ended    
