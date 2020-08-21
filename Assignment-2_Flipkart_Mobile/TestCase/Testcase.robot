*** Settings ***
Library  Zoomba.MobileLibrary
Resource  ../Variables/Variable.robot
Resource  ../Keywords/Keywords.robot

*** Test Cases ***
Test to Launch Flipkart App
    Open flipkart
    SignIn Cancellation

Test to select the Mobile Banner and Mobile Brand
    Click on Mobiles
    Tap on mobile
    Add to cart
    Go to cart

