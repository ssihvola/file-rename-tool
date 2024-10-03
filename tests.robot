*** Settings ***
Library        OperatingSystem

*** Variables ***
${PATH}        ${CURDIR}/example.txt
${COPY}        ${CURDIR}/file.txt

*** Test Cases ***
Example
    Create File        ${PATH}    Some text
		Create File        ${COPY}    
		File Should Exist  ${PATH}
		Copy File          ${PATH}    ~/file.txt