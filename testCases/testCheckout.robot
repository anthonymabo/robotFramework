*** Settings ***
Library    SeleniumLibrary

Resource    ../variables.robot
Resource    ../pages/checkoutPage.robot

*** Test Cases ***
Test checkout
    [Tags]    POEI2-1053

    connexion    standard_user    secret_sauce
    Vérifier l'affichage de la page Product
    Ajouter au panier
    Vérifier le produit dans le panier
    Aller au checkout
    Remplir les infos    firstname    lastname    Zip/Postal Code Name
    Vérifier l'écran de confirmation
