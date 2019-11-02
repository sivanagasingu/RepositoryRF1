*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.countries-ofthe-world.com/flags-of-the-world.html

*** Test Cases ***
ScrollingTest
    open browser  ${url}    ${browser}
    maximize browser window
    #execute javascript  window.scrollTo(0,2800)
    #scroll element into view  xpath://*[@id="content"]/div[2]/div[2]/table[1]/tbody/tr[86]/td[1]/img
    execute javascript  window.scrollTo(0,document.body.scrollHeight)


*** Keywords ***
