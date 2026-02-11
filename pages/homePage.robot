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


Ajouter au panier
    Click Element    id:add-to-cart-sauce-labs-backpack
     
Vérifier le produit dans le panier
    Click Element    id:shopping_cart_container
    Page Should Contain Element      xpath://div[@class='inventory_item_name']



