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
กดปุ่ม ซื้อสินค้า 
    Click Element    //*[@id="main"]/div/div[2]/div[2]/div[2]/div[2]/div[3]/div/div[5]/div/div/button[2]
กรอก username และ password 
    Wait Until Element Is Visible    name:loginKey
    Input Text    name:loginKey    ${username}
    Input Password    name:password    ${password}
สั่ง log In
    Press Keys    name:password    RETURN

รอเพื่อใส่ OTP
    Set Selenium Implicit Wait    20
กดปุ่ม ซื้อสินค้า อีกครั้ง
    Click Element    //*[@id="main"]/div/div[2]/div[2]/div[2]/div[2]/div[3]/div/div[5]/div/div/button[2]
เช็คชื่อสินค้า จำนวน ราคาต่อชิ้น ราคารวม และรวมทั้งหมด
    Element Attribute Value Should Be    //a[@class="cart-item-overview__name"]    title    ${productName}
    Element Should Contain               //span[@class="cart-item__unit-price cart-item__unit-price--after"]          ${price}
    Element Attribute Value Should Be    //*[@id="main"]/div/div[2]/div[2]/div[3]/div[1]/div[3]/div/div[2]/div/div/div[5]/div[1]/input    value    1

สั่งซื้อสินค้า 
    Click Element     //*[@id="main"]/div/div[2]/div[2]/div[3]/div[2]/div[7]/div[5]/button
ปิด Browser
    Close Browser










    


    
            
*** Keywords ***
เปิด Browser แล้วไปที่ https://shopee.co.th/(Pre-Order)-Xiaomi-iHealth-Blood-Pressure-Monitor-2-%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%A7%E0%B8%B1%E0%B8%94%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B8%94%E0%B8%B1%E0%B8%99-%E0%B8%A3%E0%B8%B8%E0%B9%88%E0%B8%99-2-i.8172430.1307643368
    Open Browser    ${URL}    chrome
    