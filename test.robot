
*** Settings ***
Library    SeleniumLibrary    


*** Variables ***
*** Test Cases ***
login
   Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
   Maximize Browser Window
   Sleep    5s
   Input Text    name=username    Admin
   Input Text    name=password    admin123
   sleep    3s
   Click Button    xpath=//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
   Sleep    3s
   Click Element    xpath=//*[@id="app"]/div[1]/div[1]/aside/nav/div[2]/ul/li[9]/a   
   Sleep    3s 
   Input Text    xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[1]/div/div[2]/div/div/input    ch
   Sleep    3s
   Click Element    xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]//*[contains(text(), "Charlie")]
   Sleep    3s
   Click Element    xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[3]/div/div[2]/div/div/div[2]/i
   Sleep    3s
   Click Element    xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[3]//*[contains(text(), "New York")]
   Sleep    3s
   Click Element    xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[2]/button[2]
   Sleep    3s    
   ${y}    Get Text    xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div/div[2]/div/div/div/p[1]
   Sleep    2s
   Should Be True    """Charlie Carter"""== """${y}"""
   

*** Comments ***