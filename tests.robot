*** Settings ***
Library        OperatingSystem

*** Variables ***
${FILENUMBER}         2048
${FILEDESTINATION}    ${CURDIR}/files

*** Test Cases ***
Create directory for dummy files
    Create Directory          ${CURDIR}/files
		Directory Should Exist    ${CURDIR}/files

Create dummy files
    [Documentation]    Creates all the files the script should rename
		FOR    ${index}    IN RANGE    20
				Create File    ${FILEDESTINATION}/${FILENUMBER}.txt
				${FILENUMBER}  Evaluate    ${FILENUMBER} * 2
		END