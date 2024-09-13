*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Keywords ***
user register to future skill platform with ${username}, ${firstname}, ${lastname}, ${phonenumber} , ${newPassword} and ${confirmpassword}
    CommonKeywords.Wait until element is ready then click element     xpath=//button[text()="สมัครสมาชิก"]
    CommonKeywords.Wait until element is ready then input text        name=email            ${username}
    CommonKeywords.Wait until element is ready then input text        name=firstName        ${firstname}
    CommonKeywords.Wait until element is ready then input text        name=lastName         ${lastname}
    CommonKeywords.Wait until element is ready then input text        name=phoneNumber      ${phonenumber}
    CommonKeywords.Wait until element is ready then input text        name=newPassword         ${newPassword}
    CommonKeywords.Wait until element is ready then input text        name=confirmPassword         ${confirmpassword}
    CommonKeywords.Wait until element is ready then click element     xpath=//*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[6]/label/input
    CommonKeywords.Wait until element is ready then click element     xpath=//button[@type="submit" and text()="สมัครสมาชิก"]

future skill should display display validate login fail message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text        ${expected_message}

