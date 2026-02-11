*** Settings ***
Library    SeleniumLibrary
Resource    ../variables.robot

*** Keywords ***
connexion
    [Arguments]    ${username}    ${password}
    Open Browser   ${monURL}    chrome    options=add_argument("--incognito")
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

Aller au checkout
    Click Element    id:checkout

Remplir les infos 
    [Arguments]    ${firstname}    ${lastname}    ${Zip/Postal Code Name}
    Input Text    id:first-name    ${firstname}
    Input Text    id:last-name    ${lastname}
    Input Text    id:postal-code    ${Zip/Postal Code Name}
    Click Element  id:continue

Vérifier l'écran de confirmation
    Click Element  id:finish

    