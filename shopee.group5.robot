*** Settings ***
Library    SeleniumLibrary
Suite Setup   เปิด Browser แล้วไปที่ https://shopee.co.th/(Pre-Order)-Xiaomi-iHealth-Blood-Pressure-Monitor-2-%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%A7%E0%B8%B1%E0%B8%94%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B8%94%E0%B8%B1%E0%B8%99-%E0%B8%A3%E0%B8%B8%E0%B9%88%E0%B8%99-2-i.8172430.1307643368
# Suite Teardown    Close Browse



*** Variables ***
${URL}    https://shopee.co.th/(Pre-Order)-Xiaomi-iHealth-Blood-Pressure-Monitor-2-%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%A7%E0%B8%B1%E0%B8%94%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B8%94%E0%B8%B1%E0%B8%99-%E0%B8%A3%E0%B8%B8%E0%B9%88%E0%B8%99-2-i.8172430.1307643368
${sellerUser}    pumper2500
${productName}    (Pre-Order) Xiaomi iHealth Blood Pressure Monitor 2 - เครื่องวัดความดัน รุ่น 2
${price}    ฿11,160
${username}    0816455557
${password}    XXXXXX  


*** Test Cases ***
คลิกเลือกภาษาไทย
    Wait Until Page Contains    ไทย
    Click Element    //*[@id="modal"]/div[1]/div[1]/div/div[3]/div[1]/button
ตรวจสอบชื่อสินค้า ราคา และชื่อผู้ขาย
    Wait Until Page Contains    ${productName}
    Wait Until Page Contains    ${price}
    Wait Until Page Contains    ${sellerUser}







    


    
            
*** Keywords ***
เปิด Browser แล้วไปที่ https://shopee.co.th/(Pre-Order)-Xiaomi-iHealth-Blood-Pressure-Monitor-2-%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%A7%E0%B8%B1%E0%B8%94%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B8%94%E0%B8%B1%E0%B8%99-%E0%B8%A3%E0%B8%B8%E0%B9%88%E0%B8%99-2-i.8172430.1307643368
    Open Browser    ${URL}    chrome
    