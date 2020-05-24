*** Settings ***
Library    SeleniumLibrary    
Suite Setup    Before Regression Suite
Suite Teardown    After Regression Suite

*** Keywords ***
Before Regression Suite 
    [Documentation]    Execution of test suite under Regression Suite folder starts
    Log    Execution of Regression suite started    
    
After Regression Suite 
    [Documentation]    Execution of test suite under Regression Suite folder ended
    Log    Execution of Regression suite ended    
