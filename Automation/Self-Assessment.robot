*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URl}    https://qutrix.io    # test website url link
${xpath- Company}      //a[.//text()= "Company"]    #company element x-path
${xpath- Career}      //a[.//text()= "Career"]     #career element x-path
${xpath-click}      //span[.//text()= "Click here"]  #Click here element x-path
*** Test Cases ***
Self-Assingment
    Open Browser  ${URl}      chrome
    maximize browser window
    click element   ${xpath- Company}
    click element      ${xpath- Career}
    scroll element into view    ${xpath-click}
    click element    ${xpath-click}
    sleep    10 seconds    #waiting time to loading new page
    Capture Page Screenshot    qutrix_self_assessment.png    #Screenshot capture page screenshot
    Close Browser     # close the browser
*** Keywords ***
