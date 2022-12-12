*** Settings ***
Library    SeleniumLibrary   
Library    classimport.py 

*** Variables ***

*** Test Cases ***
login
   Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
   Maximize Browser Window
   Sleep    2s
   ${x}    Get Text    xpath=//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/div/div/p[1]
   Sleep    2s
   ${val}=    classimport.run    ${x}
   Sleep    2s
   ${y}    Get Text    xpath=//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/div/div/p[2]
   Sleep    2s
   ${val2}    classimport.run    ${y}
   Sleep    2s
   Input Text    name=username    ${val}
   Input Text    name=password    ${val2}
   sleep    2s
   Click Button    xpath=//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
   Sleep    2s
   Click Element    xpath=//*[@id="app"]/div[1]/div[1]/aside/nav/div[2]/ul/li[9]/a   
   Sleep    2s 
   Input Text    xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[1]/div/div[2]/div/div/input    ch
   Sleep    2s
   Click Element    xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]//*[contains(text(), "Charlie")]
   Sleep    2s
   Click Element    xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[3]/div/div[2]/div/div/div[2]/i
   Sleep    2s
   Click Element    xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[3]//*[contains(text(), "New York")]
   Sleep    2s
   Click Element    xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[2]/button[2]
   Sleep    2s    
   ${runs}    Get Text    xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div/div[2]/div/div/div/p[1]
   Sleep    2s
   Should Be True    """Charlie Carter"""== """${runs}"""
