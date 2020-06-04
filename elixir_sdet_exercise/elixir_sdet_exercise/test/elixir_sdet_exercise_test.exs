defmodule ElixirSdetExerciseTest do
  # Import helpers
  use Hound.Helpers
  use ExUnit.Case
  require Logger
  # Start hound session and destroy when tests are run
  hound_session()

@cEmail "testc@citelectronics.com" ##customer
@sEmail "tests@citelectronics.com" ##sales
@saEmail "testsa@citelectronics.com" ##sales admin
@mEmail "testm@citelectronics.com" ##marketing
@tEmail "testt@citelectronics.com" ##techdepot
@taEmail "testta@citelectronics.com" ##techdepotadmin
@tnEmail "testtn@citelectronics.com" ##techdepotnwsadmin
@tfEmail "testtf@citelectronics.com" ##techdepotfull
@dEmail "testd@citelectronics.com" ##dev

#  password techteam
@uRLL  "https://www.citelectronics.com/login.php"
@urLO "https://www.citelectronics.com/logout.php"
@uRLCA "https://www.citelectronics.com/main/h/customerApplication.php"

test "custom login and signup" do
  lP001_Create_an_account_button()
  lP002_Forgot_Your_Password_button()
  lP003_Log_in_button()
  lP004_User_Type_check_login_5()
  lP005_User_Type_check_login_6()
  lP006_User_Type_check_login_7()
  lP008_User_Type_check_login_9()
  lP010_User_Type_check_login_11()
  lP011_User_Type_check_login_12()
  lP012_User_Type_check_login_13()
  lP013_User_Type_check_login_14()
  lP014_Save_and_Continue_All_filled_out()
  lP015_Save_and_Continue_None_filled_out()
  lP016_Save_and_Continue_missing_email()
  lP017_Save_and_Continue_missing_Company_name()
  lP018_Save_and_Continue_Missing_phone_number()
  lP019_Save_and_Continue_Phone_length_above_10_characters()
  lP020_Save_and_Continue_All_selected()
  lP021_Save_and_Continue_none_selected()
  lP022_Save_and_Continue_All_selected_but_locations()
  lP023_Save_and_Continue_All_selected_but_where_they_found_us()
  lP024_Save_and_Continue_All_selected_but_spending()
end

 def lP001_Create_an_account_button() do
  navigate_to(@uRLL) 
  wait()
  click({:id, "createAccount_button"})
  createIsThere = find_element(:id, "page_header")
  testEnd = inner_text(createIsThere)
  Logger.debug testEnd
  wait()
  take_screenshot("LP001-Create an account button.png") 
  end
 def lP002_Forgot_Your_Password_button() do
  navigate_to(@uRLL) 
  wait()
  click({:id, "testForgot"})
  passwordIsThere = find_element(:id, "passwordRID")
  testEnd = inner_text(passwordIsThere)
  Logger.debug testEnd
  wait()
  take_screenshot("LP002-Forgot-Your-Password-button.png") 
  end
 def lP003_Log_in_button() do
  navigate_to(@uRLL)
  wait() 
  click({:id, "login_button"})
  loginIsThere = find_element(:id, "testLogin")
  testEnd = inner_text(loginIsThere)
  Logger.debug testEnd
  wait()
  take_screenshot("LP003-Log-in-button.png") 
  end
 def lP004_User_Type_check_login_5() do
  navigate_to(@uRLL)
  wait()
  delete_cookies()
  email = find_element(:id, "emailTest")
  password = find_element(:id, "passwordTest") 
  fill_field(email, @tEmail)
  fill_field(password, "techteam")
  click({:id, "login_button"})
  wait()
  loginIsThere = find_element(:id, "user")
  testEnd = inner_text(loginIsThere)
  Logger.debug testEnd
  wait()
  take_screenshot("LP004-User-Type-check-login-5.png") 
  navigate_to(@urLO)
  end
 def lP005_User_Type_check_login_6() do
  navigate_to(@uRLL) 
  wait()
  delete_cookies()
  email = find_element(:id, "emailTest")
  password = find_element(:id, "passwordTest") 
  fill_field(email, @saEmail)
  fill_field(password, "techteam")
  click({:id, "login_button"})
  wait()
  loginIsThere = find_element(:class, "box_header")
  testEnd = inner_text(loginIsThere)
  Logger.debug testEnd
  wait()
  take_screenshot("LP005-User-Type-check-login-6.png") 
  navigate_to(@urLO)
  end
 def lP006_User_Type_check_login_7() do
  navigate_to(@uRLL) 
  wait()
  delete_cookies()
  email = find_element(:id, "emailTest")
  password = find_element(:id, "passwordTest") 
  fill_field(email, @dEmail)
  fill_field(password, "techteam")
  click({:id, "login_button"})
  wait()
  loginIsThere = find_element(:id, "testingDev")
  testEnd = inner_text(loginIsThere)
  Logger.debug testEnd
  wait()
  take_screenshot("LP006-User-Type-check-login-7.png") 
  navigate_to(@urLO)
  end
 def lP007_User_Type_check_login_8() do
  navigate_to(@uRLL)
  wait()
  delete_cookies()
  email = find_element(:id, "emailTest")
  password = find_element(:id, "passwordTest") 
  fill_field(email, @sEmail)
  fill_field(password, "techteam")
  click({:id, "login_button"})
  wait()
  loginIsThere = find_element(:id, "testingS")
  testEnd = inner_text(loginIsThere)
  Logger.debug testEnd
  wait()
  take_screenshot("LP007-User-Type-check-login-8.png") 
  navigate_to(@urLO)
  end
 def lP008_User_Type_check_login_9() do
  navigate_to(@uRLL)
  wait()
  delete_cookies()
  email = find_element(:id, "emailTest")
  password = find_element(:id, "passwordTest") 
  fill_field(email, @cEmail)
  fill_field(password, "techteam")
  click({:id, "login_button"})
  wait()
  loginIsThere = find_element(:id, "update_countdown")
  testEnd = inner_text(loginIsThere)
  Logger.debug testEnd
  wait()
  take_screenshot("LP008-User-Type-check-login-9.png") 
  navigate_to(@urLO)
  end
 def lP010_User_Type_check_login_11() do
  navigate_to(@uRLL)
  wait()
  delete_cookies()
  email = find_element(:id, "emailTest")
  password = find_element(:id, "passwordTest") 
  fill_field(email, @taEmail)
  fill_field(password, "techteam")
  click({:id, "login_button"})
  wait()
  loginIsThere = find_element(:id, "user")
  testEnd = inner_text(loginIsThere)
  Logger.debug testEnd
  wait()
  take_screenshot("LP010-User-Type-check-login-11.png") 
  navigate_to(@urLO)
  end
 def lP011_User_Type_check_login_12() do
  navigate_to(@uRLL)
  wait()
  delete_cookies()
  email = find_element(:id, "emailTest")
  password = find_element(:id, "passwordTest") 
  fill_field(email, @tnEmail)
  fill_field(password, "techteam")
  click({:id, "login_button"})
  wait()
  loginIsThere = find_element(:id, "user")
  testEnd = inner_text(loginIsThere)
  Logger.debug testEnd
  wait()
  take_screenshot("LP011-User-Type-check-login-12.png") 
  navigate_to(@urLO)
  end
 def lP012_User_Type_check_login_13() do
  navigate_to(@uRLL)
  wait()
  delete_cookies()
  email = find_element(:id, "emailTest")
  password = find_element(:id, "passwordTest") 
  fill_field(email, @tfEmail)
  fill_field(password, "techteam")
  click({:id, "login_button"})
  wait()
  loginIsThere = find_element(:id, "user")
  testEnd = inner_text(loginIsThere)
  Logger.debug testEnd
  wait()
  take_screenshot("LP012-User-Type-check-login-13.png") 
  navigate_to(@urLO)
  end
 def lP013_User_Type_check_login_14() do
  navigate_to(@uRLL)
  wait()
  email = find_element(:id, "emailTest")
  password = find_element(:id, "passwordTest") 
  fill_field(email, @mEmail)
  fill_field(password, "techteam")
  click({:id, "login_button"})
  wait()
  loginIsThere = find_element(:id, "title")
  testEnd = inner_text(loginIsThere)
  Logger.debug testEnd
  wait()
  take_screenshot("LP013-User-Type-check-login-14.png") 
  navigate_to(@urLO)
  end  
 def lP014_Save_and_Continue_All_filled_out() do
    navigate_to(@uRLCA)
    wait()
    fName = find_element(:id, "nameTest")
    lName = find_element(:id, "lNameTest") 
    company = find_element(:id, "companyTest")
    phone = find_element(:id, "phoneTest")
    whatsApp = find_element(:id, "whatsAppTest")
    email = find_element(:id, "emailTest")
    fill_field(fName, "testF")
    fill_field(lName, "testL")
    fill_field(company, "testC")
    fill_field(phone, "8018018108")
    fill_field(whatsApp, "8018018108")
    fill_field(email, @cEmail)
    click({:id, "savenameTest"})
    loginIsThere = find_element(:id, "testText")
    testEnd = inner_text(loginIsThere)
    Logger.debug testEnd
    wait()
    take_screenshot("LP014-Save-and-Continue-All-filled-out.png") 
    end   
 def lP015_Save_and_Continue_None_filled_out() do
    navigate_to(@uRLCA)
    wait()
    click({:id, "savenameTest"})
    loginIsThere = find_element(:id, "testText")
    testEnd = inner_text(loginIsThere)
    Logger.debug testEnd
    wait()
    take_screenshot("LP015-Save-and-Continue-None-filled-out.png") 
    end   
 def lP016_Save_and_Continue_missing_email() do
    navigate_to(@uRLCA)
    wait()
    fName = find_element(:id, "nameTest")
    lName = find_element(:id, "lNameTest") 
    company = find_element(:id, "companyTest")
    phone = find_element(:id, "phoneTest")
    whatsApp = find_element(:id, "whatsAppTest")
    fill_field(fName, "testF")
    fill_field(lName, "testL")
    fill_field(company, "testC")
    fill_field(phone, "8018018108")
    fill_field(whatsApp, "8018018108")
    click({:id, "savenameTest"})
    loginIsThere = find_element(:id, "testText")
    testEnd = inner_text(loginIsThere)
    Logger.debug testEnd
    wait()
    take_screenshot("LP016-Save-and-Continue-missing-email.png") 
    end  
 def lP017_Save_and_Continue_missing_Company_name() do
    navigate_to(@uRLCA)
    wait()
    fName = find_element(:id, "nameTest")
    lName = find_element(:id, "lNameTest") 
    phone = find_element(:id, "phoneTest")
    whatsApp = find_element(:id, "whatsAppTest")
    email = find_element(:id, "emailTest")
    fill_field(fName, "testF")
    fill_field(lName, "testL")
    fill_field(phone, "8018018108")
    fill_field(whatsApp, "8018018108")
    fill_field(email, @cEmail)
    click({:id, "savenameTest"})
    loginIsThere = find_element(:id, "testText")
    testEnd = inner_text(loginIsThere)
    Logger.debug testEnd
    wait()
    take_screenshot("LP017-Save-and-Continue-missing-Company-name.png") 
    end  
 def lP018_Save_and_Continue_Missing_phone_number() do
    navigate_to(@uRLCA)
    wait()
    fName = find_element(:id, "nameTest")
    lName = find_element(:id, "lNameTest") 
    company = find_element(:id, "companyTest")
    whatsApp = find_element(:id, "whatsAppTest")
    email = find_element(:id, "emailTest")
    fill_field(fName, "testF")
    fill_field(lName, "testL")
    fill_field(company, "testC")
    fill_field(whatsApp, "8018018108")
    fill_field(email, @cEmail)
    click({:id, "savenameTest"})
    loginIsThere = find_element(:id, "testText")
    testEnd = inner_text(loginIsThere)
    Logger.debug testEnd
    wait()
    take_screenshot("LP018-Save-and-Continue-Missing-phone-number.png") 
    end  
 def lP019_Save_and_Continue_Phone_length_above_10_characters() do
    navigate_to(@uRLCA)
    wait()
    fName = find_element(:id, "nameTest")
    lName = find_element(:id, "lNameTest") 
    company = find_element(:id, "companyTest")
    phone = find_element(:id, "phoneTest")
    whatsApp = find_element(:id, "whatsAppTest")
    email = find_element(:id, "emailTest")
    fill_field(fName, "testF")
    fill_field(lName, "testL")
    fill_field(company, "testC")
    fill_field(whatsApp, "8801801808")
    fill_field(phone, "88801801808")
    fill_field(email, @cEmail)
    click({:id, "savenameTest"})
    loginIsThere = find_element(:id, "testText")
    testEnd = inner_text(loginIsThere)
    Logger.debug testEnd
    wait()
    take_screenshot("LP019-Save-and-Continue-Phone-length-above-10-characters.png") 
    end  
 def lP020_Save_and_Continue_All_selected() do
    navigate_to(@uRLCA)
    wait()
    fName = find_element(:id, "nameTest")
    lName = find_element(:id, "lNameTest") 
    company = find_element(:id, "companyTest")
    phone = find_element(:id, "phoneTest")
    whatsApp = find_element(:id, "whatsAppTest")
    email = find_element(:id, "emailTest")
    fill_field(fName, "testF")
    fill_field(lName, "testL")
    fill_field(company, "testC")
    fill_field(whatsApp, "801801808")
    fill_field(phone, "8801801808")
    fill_field(email, @cEmail)
    click({:id, "savenameTest"})
    where = find_element(:id, "select_country")
    click(where)
    send_text "a"
    send_keys(:enter)
    how = find_element(:id, "select_lead")
    click(how)
    send_text "a"
    send_keys(:enter)
    on = find_element(:id, "select_budget")
    click(on)
    send_text "$"
    send_keys(:enter)
    click({:id, "bus_info"})
    wait()
    take_screenshot("LP020-Save-and-Continue-All-selected.png") 
    end  
 def lP021_Save_and_Continue_none_selected() do
    navigate_to(@uRLCA)
    wait()
    fName = find_element(:id, "nameTest")
    lName = find_element(:id, "lNameTest") 
    company = find_element(:id, "companyTest")
    phone = find_element(:id, "phoneTest")
    whatsApp = find_element(:id, "whatsAppTest")
    email = find_element(:id, "emailTest")
    fill_field(fName, "testF")
    fill_field(lName, "testL")
    fill_field(company, "testC")
    fill_field(whatsApp, "801801808")
    fill_field(phone, "8801801808")
    fill_field(email, @cEmail)
    click({:id, "savenameTest"})
    click({:id, "bus_info"})
    wait()
    take_screenshot("LP021-Save-and-Continue-none-selected.png") 
    end  
 def lP022_Save_and_Continue_All_selected_but_locations() do
    navigate_to(@uRLCA)
    wait()
    fName = find_element(:id, "nameTest")
    lName = find_element(:id, "lNameTest") 
    company = find_element(:id, "companyTest")
    phone = find_element(:id, "phoneTest")
    whatsApp = find_element(:id, "whatsAppTest")
    email = find_element(:id, "emailTest")
    fill_field(fName, "testF")
    fill_field(lName, "testL")
    fill_field(company, "testC")
    fill_field(whatsApp, "801801808")
    fill_field(phone, "8801801808")
    fill_field(email, @cEmail)
    click({:id, "savenameTest"})
    how = find_element(:id, "select_lead")
    click(how)
    send_text "a"
    send_keys(:enter)
    on = find_element(:id, "select_budget")
    click(on)
    send_text "$"
    send_keys(:enter)
    click({:id, "bus_info"})
    wait()
    take_screenshot("LP022-Save-and-Continue-All-selected-but-locations.png") 
    end  
 def lP023_Save_and_Continue_All_selected_but_where_they_found_us() do
     navigate_to(@uRLCA)
     wait()
    fName = find_element(:id, "nameTest")
    lName = find_element(:id, "lNameTest") 
    company = find_element(:id, "companyTest")
    phone = find_element(:id, "phoneTest")
    whatsApp = find_element(:id, "whatsAppTest")
    email = find_element(:id, "emailTest")
    fill_field(fName, "testF")
    fill_field(lName, "testL")
    fill_field(company, "testC")
    fill_field(whatsApp, "801801808")
    fill_field(phone, "8801801808")
    fill_field(email, @cEmail)
    click({:id, "savenameTest"})
    where = find_element(:id, "select_country")
    click(where)
    send_text "a"
    send_keys(:enter)
    on = find_element(:id, "select_budget")
    click(on)
    send_text "$"
    send_keys(:enter)
    click({:id, "bus_info"})
    wait()
    take_screenshot("LP023-Save-and-Continue-All-selected-but-where-they-found-us.png") 
    end  
 def lP024_Save_and_Continue_All_selected_but_spending() do
     navigate_to(@uRLCA)
     wait()
    fName = find_element(:id, "nameTest")
    lName = find_element(:id, "lNameTest") 
    company = find_element(:id, "companyTest")
    phone = find_element(:id, "phoneTest")
    whatsApp = find_element(:id, "whatsAppTest")
    email = find_element(:id, "emailTest")
    fill_field(fName, "testF")
    fill_field(lName, "testL")
    fill_field(company, "testC")
    fill_field(whatsApp, "801801808")
    fill_field(phone, "8801801808")
    fill_field(email, @cEmail)
    click({:id, "savenameTest"})
    where = find_element(:id, "select_country")
    click(where)
    send_text "a"
    send_keys(:enter)
    how = find_element(:id, "select_lead")
    click(how)
    send_text "a"
    send_keys(:enter)
    click({:id, "bus_info"})
    wait()
    take_screenshot("LP024-Save-and-Continue-All-selected-but-spending.png") 
    end  
    ### ===WAT UNTIL PAGE IS LOADED=== ###
  def wait() do
        case execute_script("return document.readyState") do
          "loading" ->  wait() # WAIT UNTIL PAGE IS LOADED
          _ -> true
        end
    end
###########################################################################################################################################################################################################

#  test "LP008 User Type check login - 9" do
#   navigate_to "https://www.citelectronics.com/welcome.php?p=0&s=0"
#    email = find_element(:id, "emailTest")
#    password = find_element(:id, "passwordTest")
#    fill_field(email, "antiano@citelectronics.com")
#    fill_field(password, 957141)
#    click({:id, "login_button"})
#    take_screenshot("LP008.png") 
#  end
#    test "Sign-up No Password" do
#    navigate_to "https://www.citelectronics.com/welcome.php?p=0&s=0"
#    email = find_element(:id, "emailTest")
#    password = find_element(:id, "passwordTest")
#    fill_field(email, "antiano@citelectronics.com")
#    fill_field(password, 957141)
#    click({:id, "login_button"})
#    cart = find_element(:id, "testCart")
#    click(cart)
#    cartIsThere = find_element(:id, "deviceTest")
#    testEnd = inner_text(cartIsThere)
#    Logger.debug testEnd
#     # Set elements to Variables
#     # signUpBTN = find_element(:id, "u_0_14")
#     # fName = find_element(:id, "u_0_n")
#     # lName = find_element(:id, "u_0_p")
#     # email = find_element(:id, "u_0_s")
#     # rEmail = find_element(:id, "u_0_v")
#     # gender = find_element(:id, "u_0_6")
#     #  # Sign up with no password
#     # fill_field(fName, "John")
#     # fill_field(lName, "Smith")
#     # fill_field(email, "johnsmith@gmail.com")
#     # fill_field(rEmail, "johnsmith@gmail.com")
#     # click(gender)
#     # click(signUpBTN)
#      take_screenshot("Cart.png")
   
#    end

  
  # test "Sign-up Invalid Email" do
  # navigate_to "https://en-gb.facebook.com/r.php?locale=en_GB&display=page"
  #   # Set elements to Variables
  #  signUpBTN = find_element(:id, "u_0_14")
  #   fName = find_element(:id, "u_0_n")
  #   lName = find_element(:id, "u_0_p")
  #   email = find_element(:id, "u_0_s")
  #   password = find_element(:id, "u_0_x")
  #   gender = find_element(:id, "u_0_6")

  #   # Sign up with invalid email
  #   fill_field(fName, "John")
  #   fill_field(lName, "Smith")
  #   fill_field(email, "johnsmith.com")
  #   fill_field(password, "Welcome1!")
  #   click(gender)
  #   click(signUpBTN)
  #   take_screenshot("invalid email.png")
   
  # end
  # test "Sign-up Invalid Phone" do
  # navigate_to "https://en-gb.facebook.com/r.php?locale=en_GB&display=page"
  #  # Set elements to Variables
  #   signUpBTN = find_element(:id, "u_0_14")
  #   fName = find_element(:id, "u_0_n")
  #   lName = find_element(:id, "u_0_p")
  #   email = find_element(:id, "u_0_s")
  #   password = find_element(:id, "u_0_x")
  #   gender = find_element(:id, "u_0_6")

  #    # Sign up with invalid phone
  #    fill_field(fName, "John")
  #    fill_field(lName, "Smith")
  #    fill_field(email, "801801801")
  #    click(gender)
  #    click(signUpBTN)
  #    take_screenshot("invalid Phone number.png")
   
  #  delete_cookies()
  # refresh_page()
  # end
 
end