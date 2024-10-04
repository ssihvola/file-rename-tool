*** Settings ***
Library        OperatingSystem
Library    .venv/lib/python3.12/site-packages/robot/libraries/Process.py

*** Variables ***
${FILENUMBER}             2048
${FILEDESTINATION}        ${CURDIR}/files
${EXPECTED_FILE_COUNT}    20
${PYTHON_SCRIPT}          ${CURDIR}/app.py

*** Test Cases ***
Create directory for dummy files
    Create Directory          ${CURDIR}/files
		Directory Should Exist    ${CURDIR}/files

Create dummy files
    [Documentation]    The script generates all the files that need to be renamed 
		...    with random numbers as titles
		FOR    ${index}    IN RANGE    20
				Create File    ${FILEDESTINATION}/${FILENUMBER}.txt
				${FILENUMBER}  Evaluate    ${FILENUMBER} * 4
		END

Check that there are correct number of files
    ${files}=        Count Files In Directory    ${FILEDESTINATION}
		Should Be Equal As Numbers    ${files}    ${EXPECTED_FILE_COUNT}

Run Python script
    ${result}=    Run Process    python     ${PYTHON_SCRIPT}

Check that there are correct number of files after running the script
    ${files}=        Count Files In Directory    ${FILEDESTINATION}
		Should Be Equal As Numbers    ${files}    ${EXPECTED_FILE_COUNT}