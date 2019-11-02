*** Settings ***


*** Variables ***

*** Test Cases ***
#ForLoop1
 #   : FOR   ${i}    IN RANGE    1   10
  #  \   LOG TO CONSOLE    ${i}
#ForLoop2
 #   : FOR   ${i}  IN    1 2 3 4 5 6 7 8
  #  \   LOG TO CONSOLE      ${i}

#ForLoop3
 #   : FOR   ${i}  IN    1  2  3  4  5  6  7  8
  #  \   LOG TO CONSOLE      ${i}
#ForLoop4WithList
 #   @{items}    create list  1  2  3  4  5
  #  : FOR   ${i}    IN   @{items}
   # \   log to console  ${i}
#ForLoop5
 #   : FOR   ${i}    IN  JOHN    SCOTT   MIKE    HALL    POUL
  #  \   log to console  ${i}
#ForLoop6
 #   @{nameslist}    create list  JOHN    SCOTT   MIKE    HALL    POUL
  #  : FOR   ${i}    IN  @{nameslist}
   # \   log to console  ${i}
ForLoop7WithExit
    @{items}    create list  1  2  3  4  5  6  7  8  9  10
    : FOR   ${i}    IN  @{items}
    \   LOG TO CONSOLE  ${i}
    \   exit for loop if  ${i}==6


*** Keywords ***
