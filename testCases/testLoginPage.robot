*** Settings ***
Library    SeleniumLibrary

Resource    ../variables.robot
Resource    ../pages/loginPage.robot

*** Test Cases ***
Test de connexion 1 OK
        connexion    standard_user    secret_sauce
        Vérifier l'affichage de la page Product

Test de connexion 2 Fail
        connexion    standard_user    mauvais_mdp
        Vérifier le message d erreur