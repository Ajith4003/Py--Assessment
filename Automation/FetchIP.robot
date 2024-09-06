*** Settings ***
Library    OperatingSystem

*** Test Cases ***

 Get IP Address
        ${output}=   Run  ipconfig
        Log      ${output}