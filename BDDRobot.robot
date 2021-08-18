*** Settings ***

Resource  ../Resources/SetnTear.robot
*** Variables ***

*** Test Cases ***
First
   Given Start and maximize Browser
   When Create folder in the run-time  Ram  Steyn
   Then Concatinate two words  Ram  Steyn
