*** Settings ***
Library    SeleniumLibrary

Resource    ../variables.robot
Resource    ../pages/homePage.robot



*** Test Cases ***
Test de connexion 1 OK
        connexion    standard_user    secret_sauce
        Vérifier l'affichage de la page Product
        Ajouter au panier
        Vérifier le produit dans le panier