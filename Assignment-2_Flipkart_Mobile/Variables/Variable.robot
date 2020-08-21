*** Settings ***
Library  Zoomba.MobileLibrary

*** Variables ***
${Remote_URL}  http://localhost:4723/wd/hub
${Platform}  Android
${AndroidVersion}  9
${deviceName}  32a0c2070604
${packageName}  com.flipkart.android
${appActivity}  com.flipkart.android.SplashActivity
${AppLanguage}  xpath = (//*[@resource-id='com.flipkart.android:id/locale_icon_layout'])[5]
${Language_Confirmation_Btn}  id = com.flipkart.android:id/select_btn
${wait_until_page_contains}  Sign up with
${Cancel_SignIn}  id = com.google.android.gms:id/cancel
${Cancel_Icon}  id = com.flipkart.android:id/custom_back_icon
${Mobiles}  xpath = (//*[@resource-id='com.flipkart.android:id/banner_image'])[3]
${Mobile_Brand_REDMI}  xpath = (//*[@resource-id='com.flipkart.android:id/banner_image'])[3]
${Scroll_to_bottom}  xpath = (//*[@resource-id='com.flipkart.android:id/banner_image'])[5]
${Redmi_Note8_Pro}  xpath = (//*[@resource-id='com.flipkart.android:id/banner_image'])[3]
${page_load}  Allow Location Access
${Location_Access_Not_now}  id = com.flipkart.android:id/not_now_button
${prod_name}  Redmi Note 8 Pro (Shadow Black, 128 GB)
${add_to_cart}  ADD TO CART
${AddToCart_popup}  Frequently Bought Together
${popup_cancellation}  accessibility_id = Back Button
${go_to_cart}  GO TO CART
${get_Actual_prod_name}  xpath = (//*[@class='android.widget.TextView'])[4]
${expected_Prod_Name}  Redmi Note 8 Pro (Shadow Black, 128 GB)
${yes}  Cart contains the added item
${no}  Cart do not have the added item



