*** Settings ***
Library  Zoomba.MobileLibrary

*** Keywords ***
Open flipkart
    Open Application  ${Remote_URL}  platformName=${Platform}  platformVersion=${AndroidVersion}  deviceName=${deviceName}
    ...  appPackage=${packageName}  appActivity=${appActivity}
    Wait Until Page Contains  Welcome
    click element   ${AppLanguage}
    click element   ${Language_Confirmation_Btn}

SignIn Cancellation
    Wait Until Page Contains  ${wait_until_page_contains}
    click element  ${Cancel_SignIn}
    click element  ${Cancel_Icon}

Click on Mobiles
    Wait Until Page Contains Element  ${Mobiles}
    click element  ${Mobiles}
    click element  ${Mobile_Brand_REDMI}

Tap on mobile
    click element  ${Redmi_Note8_Pro}
    wait until page contains  ${page_load}
    Click element  ${Location_Access_Not_now}
    Scroll Down To Text  ${prod_name}
    click text  ${prod_name}
    Wait until page contains  ${prod_name}
Add to cart
    Click text  ${add_to_cart}
    Wait until page contains  ${AddToCart_popup}
    click element  ${popup_cancellation}
Go to cart
    click text  ${go_to_cart}
    wait until page contains  ${prod_name}
    ${Actual_prod_name}=  get text  ${get_Actual_prod_name}
    Log to console  ${Actual_prod_name}
    Run Keyword If  '${Actual_prod_name}'=='${expected_Prod_Name}'  Log to console   ${yes}
    ...  ELSE  Log to console  ${no}