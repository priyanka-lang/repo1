*** Settings ***
Resource  ../Resources/CommonWeb.robot
Library  SeleniumLibrary
Library  OperatingSystem


*** Keywords ***
Set Driver Path
    Append To Environment Variable  PATH   ${driver_path}