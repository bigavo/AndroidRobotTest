*** Settings ***
Library  AppiumLibrary
*** Variables ***
${SEE-ACTION-BUTTON}    id=com.apozas.contactdiary:id/fab
${HIDE-ACTION-BUTTON}   id=com.apozas.contactdiary:id/fab
*** Test Cases ***

Plus Button Test

    open application    http://localhost:4723/wd/hub      platformName=Android   deviceName=emulator-5554    app=//Users//trinhtran//Desktop//app-github-debug.apk
    click element      ${SEE-ACTION-BUTTON}
    wait until page contains element   ${HIDE-ACTION-BUTTON}
    click element    ${HIDE-ACTION-BUTTON}

[Teardown]    close application