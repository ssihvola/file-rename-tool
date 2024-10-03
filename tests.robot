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
    [Documentation]    The script generates all the files that need to be renamed. 
		...    These files are named in descending order, as they will be renamed 
		...    based on the date and time they were created.
		FOR    ${index}    IN RANGE    20
				Create File    ${FILEDESTINATION}/${FILENUMBER}.txt
				${FILENUMBER}  Evaluate    ${FILENUMBER} - 20
		END