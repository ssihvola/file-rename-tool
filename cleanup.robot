*** Settings ***
Library        OperatingSystem

*** Test Cases ***
Remove Files
    Remove File        ${CURDIR}/example.txt
		Remove File        ${CURDIR}/log.html
		Remove File        ${CURDIR}/output.xml
		Remove File        ${CURDIR}/report.html