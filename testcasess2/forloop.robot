*** Settings ***
Library    Collections

*** Variables ***
@{names}    Alice    Bob    Charlie
@{ages}     30       25     35

*** Test Cases ***
Use Zip In For Loop
    ${zipped_list}=    Evaluate    list(zip(${names}, ${ages}))
    FOR    ${name_age}    IN    @{zipped_list}
        log to console    Name: ${name_age[0]}, Age: ${name_age[1]}
    END
