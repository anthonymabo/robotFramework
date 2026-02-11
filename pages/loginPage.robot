*** Settings ***
Library    SeleniumLibrary

Resource    ../variables.robot



*** Keywords ***
connexion
    [Arguments]    ${username}    ${password}
    Open Browser   ${monURL}    chrome
    Input Text    id:user-name    ${username}
    Input Text    id:password    ${password}
    Click Button  id:login-button


Vérifier l'affichage de la page Product
    Page Should Contain Element      xpath://div[normalize-space()='Sauce Labs Backpack']

Vérifier le message d erreur
    Page Should Contain Element     xpath://h3[@data-test='error']




