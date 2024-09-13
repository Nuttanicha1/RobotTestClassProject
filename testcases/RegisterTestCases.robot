*** Settings ***
Library    SeleniumLibrary
Resource    ../keywords/HomePageKeywords.robot
Resource    ../keywords/RegisterPageKeywords.robot
Variables    ../resources/config/config.yaml
Variables    ../resources/testdata/testdata.yaml
Suite Setup        Open Browser    ${baseUrl}    chrome
Suite Teardown     Close Browser

*** Test Cases ***
As a user, I want to register success with valid credential
    When user register to future skill platform with ${email}, ${firstname_test}, ${lastname_test}, ${phonenumber_test} , ${valid_password} and ${confirmpassword_test}
    [Teardown]  future skill should display home page and display message as "ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์"
