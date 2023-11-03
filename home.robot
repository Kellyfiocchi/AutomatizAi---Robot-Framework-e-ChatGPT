*** Settings ***
Documentation   Suíte de testes da aplicação WalkDog

Library         SeleniumLibrary

*** Test Cases ***
Webapp deve estar online
   Open Browser            https://walkdog.vercel.app   edge
   Title Should Be         Walkdog by Papito
   Page Should Contain     Cuidado e diversão em cada passo

   Sleep                   5s
   Close Browser 