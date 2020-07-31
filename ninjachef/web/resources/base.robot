***Settings***
Documentation       Estrutura do Projeto

Library     SeleniumLibrary
Library     RequestsLibrary
Library     OperatingSystem

Resource    elements.robot
Resource    kws.robot
Resource    helpers.robot

***Variables***
${base_url}         http://ninjachef-qaninja-io.umbler.net/ 
${api_url}          http://ninjachef-api-qaninja-io.umbler.net

***Keywords***   
##Hooks
Open Session
    Open Browser    abaout:blank     chrome
    Maximize Browser Window

Close Session
    Capture Page Screenshot
    Close Browser