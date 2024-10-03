*** Settings ***
Library        OperatingSystem

*** Test Cases ***
Remove Files
    Empty Directory   ${CURDIR}/files
		Remove File        ${CURDIR}/log.html
		Remove File        ${CURDIR}/output.xml
		Remove File        ${CURDIR}/report.html
		Remove Directory   ${CURDIR}/files