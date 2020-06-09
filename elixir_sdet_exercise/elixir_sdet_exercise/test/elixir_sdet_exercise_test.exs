defmodule ElixirSdetExerciseTest do
   # Import helpers
   use Hound.Helpers
   use ExUnit.Case
   require Logger
   # Start hound session and destroy when tests are run
   hound_session()

#################################################################################################################################################################################################################
######################################################################################Login In/ Sing Up Tests####################################################################################################


<<<<<<< HEAD
# test "custom login and signup" do
#   lP001_Create_an_account_button()
#   lP002_Forgot_Your_Password_button()
#   lP003_Log_in_button()
#   lP004_User_Type_check_login_5()
#   lP005_User_Type_check_login_6()
#   lP006_User_Type_check_login_7()
#   lP008_User_Type_check_login_9()
#   lP010_User_Type_check_login_11()
#   lP011_User_Type_check_login_12()
#   lP012_User_Type_check_login_13()
#   lP013_User_Type_check_login_14()
#   lP014_Save_and_Continue_All_filled_out()
#   lP015_Save_and_Continue_None_filled_out()
#   lP016_Save_and_Continue_missing_email()
#   lP017_Save_and_Continue_missing_Company_name()
#   lP018_Save_and_Continue_Missing_phone_number()
#   lP019_Save_and_Continue_Phone_length_above_10_characters()
#   lP020_Save_and_Continue_All_selected()
#   lP021_Save_and_Continue_none_selected()
#   lP022_Save_and_Continue_All_selected_but_locations()
#   lP023_Save_and_Continue_All_selected_but_where_they_found_us()
#   lP024_Save_and_Continue_All_selected_but_spending()
# end
=======
  @cEmail "testc@citelectronics.com" ##customer
  @sEmail "tests@citelectronics.com" ##sales
  @saEmail "testsa@citelectronics.com" ##sales admin
  @mEmail "testm@citelectronics.com" ##marketing
  @tEmail "testt@citelectronics.com" ##techdepot
  @taEmail "testta@citelectronics.com" ##techdepotadmin
  @tnEmail "testtn@citelectronics.com" ##techdepotnwsadmin
  @tfEmail "testtf@citelectronics.com" ##techdepotfull
  @dEmail "testd@citelectronics.com" ##dev
>>>>>>> 43d10511d6648515428347388c33963fa26bd2f1

  #  password techteam
  @uRLL  "https://www.citelectronics.com/login.php"
  @urLO "https://www.citelectronics.com/logout.php"
  @uRLCA "https://www.citelectronics.com/main/h/customerApplication.php"

  test "custom login and signup" do
    # lP001_Create_an_account_button()
    # lP002_Forgot_Your_Password_button()
    # lP003_Log_in_button()
    # lP004_User_Type_check_login_5()
    # lP005_User_Type_check_login_6()
    # lP006_User_Type_check_login_7()
    # lP008_User_Type_check_login_9()
    # lP010_User_Type_check_login_11()
    # lP011_User_Type_check_login_12()
    # lP012_User_Type_check_login_13()
    # lP013_User_Type_check_login_14()
    # lP014_Save_and_Continue_All_filled_out()
    # lP015_Save_and_Continue_None_filled_out()
    # lP016_Save_and_Continue_missing_email()
    # lP017_Save_and_Continue_missing_Company_name()
    # lP018_Save_and_Continue_Missing_phone_number()
    # lP019_Save_and_Continue_Phone_length_above_10_characters()
    # lP020_Save_and_Continue_All_selected()
    # lP021_Save_and_Continue_none_selected()
    # lP022_Save_and_Continue_All_selected_but_locations()
    # lP023_Save_and_Continue_All_selected_but_where_they_found_us()
    # lP024_Save_and_Continue_All_selected_but_spending()
    # lP025_Create_account()
    # lP026_Create_account_no_terms()
    # lP027_Create_account_no_feilds()
    # lP028_Create_account_no_password()
    # lP029_Create_account_no_confirm()
    # lP030_Create_account_under_6()
    # lP031_Create_account_all_caps()
    # lP032_Create_account_all_lowercase()
    # lP033_Create_account_policy()
    # lP034_Create_account_policy_accept()
    # lP035_Create_account_policy_decline()
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
  def lP025_Create_account() do
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
      createPass = find_element(:id, "createPassTest")
      confirmPass = find_element(:id, "confirmPassTest")
      fill_field(createPass, "Welcome1")
      fill_field(confirmPass, "Welcome1")
      click({:id, "checkbox_terms"})
      click({:id, "button_submitApplication"})
      wait()
      :timer.sleep(5000)
      take_screenshot("LP025-Create_account.png") 
      end  
  def lP026_Create_account_no_terms() do
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
      createPass = find_element(:id, "createPassTest")
      confirmPass = find_element(:id, "confirmPassTest")
      fill_field(createPass, "Welcome1")
      fill_field(confirmPass, "Welcome1")
      click({:id, "button_submitApplication"})
      :timer.sleep(5000)
      take_screenshot("LP026-Create_account_no_terms.png") 
      end 
  def lP027_Create_account_no_feilds() do
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
      click({:id, "button_submitApplication"})
      take_screenshot("LP027-Create_account_no_feilds.png") 
      end 
  def lP028_Create_account_no_password() do
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
      click({:id, "checkbox_terms"})
      click({:id, "button_submitApplication"})
      wait()
      take_screenshot("LP028-Create_account_no_password.png") 
      end 
  def lP029_Create_account_no_confirm() do
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
        createPass = find_element(:id, "createPassTest")
      fill_field(createPass, "Welcome1")
      click({:id, "checkbox_terms"})
      click({:id, "button_submitApplication"})
      wait()
      :timer.sleep(5000)
      take_screenshot("LP029-Create_account_no_confirm.png") 
      end 
  def lP030_Create_account_under_6() do
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
      createPass = find_element(:id, "createPassTest")
      confirmPass = find_element(:id, "confirmPassTest")
      fill_field(createPass, "Wel")
      fill_field(confirmPass, "Wel")
      click({:id, "checkbox_terms"})
      click({:id, "button_submitApplication"})
      wait()
      take_screenshot("LP030-Create_account_under_6.png") 
      end  
  def lP031_Create_account_all_caps() do
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
      createPass = find_element(:id, "createPassTest")
      confirmPass = find_element(:id, "confirmPassTest")
      fill_field(createPass, "WELCOME1")
      fill_field(confirmPass, "WELCOME1")
      click({:id, "checkbox_terms"})
      click({:id, "button_submitApplication"})
      wait()
      take_screenshot("LP031-Create_account_all_caps.png") 
      end  
  def lP032_Create_account_all_lowercase() do
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
      createPass = find_element(:id, "createPassTest")
      confirmPass = find_element(:id, "confirmPassTest")
      fill_field(createPass, "welcome1")
      fill_field(confirmPass, "welcome1")
      click({:id, "checkbox_terms"})
      click({:id, "button_submitApplication"})
      wait()
      take_screenshot("LP032-Create_account_all_lowercase.png") 
      end 
  def lP033_Create_account_policy() do
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
      click({:id, "link_terms"})
      wait()
      click({:class, "modal_accordion_header"})
      take_screenshot("LP033-Create_account_policy.png") 
      end  
  def lP034_Create_account_policy_accept() do
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
      click({:id, "link_terms"})
      wait()
      click({:id, "modal_accept_button"})
      take_screenshot("LP034-Create_account_policy_accept.png") 
      end  
  def lP035_Create_account_policy_decline() do

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
    click({:id, "link_terms"})
    wait()
    click({:id, "modal_decline_button"})
    take_screenshot("LP035-Create_account_policy_decline.png") 
    end 

################################################################################################################################################################################################################# 
######################################################################################CUSTOMER PORTAL TESTS######################################################################################################
   ###################################
   ### ===CUSTOMER PORTAL TESTS=== ###
   ###################################

   ### ===VARIABLES=== ###
   @loginPage "https://www.citelectronics.com/login.php"
   @myCartPage "https://www.citelectronics.com/welcome.php?p=0&s=0"
   @dashboardPage "https://www.citelectronics.com/welcome.php?p=1&s=0"
   @inventoryPage "https://www.citelectronics.com/welcome.php?p=0&s=2"
   @cPortal_email "testc@citelectronics.com"
   @cPortal_password "techteam"

   ### ===EXECUTE TEST=== ###
<<<<<<< HEAD
   test "EXECUTE TEST" do
      Logger.debug "EXECUTE TEST START"
      set_window_size current_window_handle(), 1200, 1850 # RESIZES WINDOW
      cPortal_login() # LOGIN
      # cPortal_myCart() # MY CART
      # navigate_to(@dashboardPage) # DASHBOARD PAGE
      cPortal_inventory() # INVENTORY
      Logger.debug "EXECUTE TEST END"
   end
=======
  #  test "EXECUTE TEST" do
  #     set_window_size current_window_handle(), 1200, 1850 # RESIZES WINDOW
  #     cPortal_login() # LOGIN
  #     cPortal_myCart() # MY CART
  #     navigate_to(@dashboardPage) # DASHBOARD PAGE
  #     cPortal_inventory() # INVENTORY
  #  end
>>>>>>> 43d10511d6648515428347388c33963fa26bd2f1

   ###########################
   ### ===CPORTAL LOGIN=== ###
   ###########################

   ### ===LOGIN=== ###
   def cPortal_login() do
      navigate_to(@loginPage)
      take_screenshot("CPLO0001-login.png")
      Logger.debug "CPLO0001 Complete"
      fill_field({:id, "emailTest"}, @cPortal_email)
      fill_field({:id, "passwordTest"}, @cPortal_password)
      click({:id, "login_button"})
      wait() # WAIT UNTIL PAGE IS LOADED
      take_screenshot("CPLO0002-dashboard.png")
      Logger.debug "CPLO0002 Complete"
   end

   #############################
   ### ===CPORTAL MY CART=== ###
   #############################

   ### ===MY CART=== ###
   def cPortal_myCart() do
      cPortal_myCart_navigate() # NAVIGATE TO MY CART PAGE
      myCart_inventory_navigate() # NAVIGATE TO INVENTORY
      myCart_inventory_viewInventoryList() # VIEW INVENTORY LIST
      myCart_inventory_applyfilter() # APPLIES FILTER
      myCart_inventory_addFavorites() # ADD TO FAVORITES
      myCart_inventory_addProduct() # ADD PRODUCT
      myCart_makeOffer() # MAKE OFFER
      myCart_adjustProduct() # ADJUST PRODUCT
      myCart_removeProduct() # REMOVE PRODUCT
      myCart_removeFavorites() # REMOVE FAVORITES
   end

   ### ===NAVIGATE TO MY CART PAGE=== ###
   def cPortal_myCart_navigate() do
      click({:id, "testCart"})
      wait() # WAIT UNTIL PAGE IS LOADED
      take_screenshot("CPMC0001-myCart.png")
      Logger.debug "CPMC0001 Complete"
   end
 
   ### ===NAVIGATE TO INVENTORY=== ###
   def myCart_inventory_navigate() do
      click({:id, "view_inventory"})
      wait() # WAIT UNTIL PAGE IS LOADED
      take_screenshot("CPMC0002-inventory.png")
      Logger.debug "CPMC0002 Complete"
   end

   ### ===VIEW INVENTORY LIST=== ###
   def myCart_inventory_viewInventoryList() do
      click({:id, "btn_filter_search"})
      wait() # WAIT UNTIL PAGE IS LOADED
      take_screenshot("CPMC0003-inventory_viewInventoryList.png")
      Logger.debug "CPMC0003 Complete"
   end

   ### ===APPLIES FILTER=== ###
   def myCart_inventory_applyfilter() do
      click({:id, "priceDropdown"})
      click({:id, "reset_p_q"})
      fill_field({:id, "txtBox_qty_min"}, "2")
      click({:id, "save_p_q"})
      :timer.sleep(1000)
      take_screenshot("CPMC0004-inventory_applyFilter.png")
      Logger.debug "CPMC0004 Complete"
   end

   ### ===ADD TO FAVORITES=== ###
   def myCart_inventory_addFavorites() do
      click({:css, "#invTableContent .item_row:nth-child(1) .fav_td .favorite_item"})
      :timer.sleep(250)
      click({:css, "#invTableContent .item_row:nth-child(2) .fav_td .favorite_item"})
      :timer.sleep(250)
      click({:css, "#invTableContent .item_row:nth-child(3) .fav_td .favorite_item"})
      :timer.sleep(250)
      click({:css, "#invTableContent .item_row:nth-child(4) .fav_td .favorite_item"})
      :timer.sleep(250)
      click({:css, "#invTableContent .item_row:nth-child(5) .fav_td .favorite_item"})
      take_screenshot("CPMC0005-inventory_addFavorites.png")
      Logger.debug "CPMC0005 Complete"
   end

   ### ===ADD PRODUCT=== ###
   def myCart_inventory_addProduct() do
      click({:css, "#invTableContent .item_row:nth-child(1) .qty_td .add_all_btn"})
      :timer.sleep(250)
      click({:css, "#invTableContent .item_row:nth-child(2) .qty_td .add_all_btn"})
      :timer.sleep(250)
      click({:css, "#invTableContent .item_row:nth-child(3) .qty_td .add_all_btn"})
      :timer.sleep(250)
      click({:css, "#invTableContent .item_row:nth-child(4) .qty_td .add_all_btn"})
      :timer.sleep(250)
      click({:css, "#invTableContent .item_row:nth-child(5) .qty_td .add_all_btn"})
      take_screenshot("CPMC0006-inventory_addProduct.png")
      Logger.debug "CPMC0006 Complete"
      navigate_to(@myCartPage)
      wait() # WAIT UNTIL PAGE IS LOADED
      take_screenshot("CPMC0007-inventory_addProduct_myCart.png")
      Logger.debug "CPMC0007 Complete"
   end

   ### ===MAKE OFFER=== ###
   def myCart_makeOffer() do
      click({:class, "make_offer"})
      fill_field({:class, "offerInput"}, 1)
      click({:class, "save_offer"})
      take_screenshot("CPMC0008-makeOffer_save.png")
      Logger.debug "CPMC0008 Complete"
      click({:class, "edit_offer"})
      click({:class, "remove_offer"})
      take_screenshot("CPMC0009-makeOffer_remove.png")
      Logger.debug "CPMC0009 Complete"
   end

   ### ===ADJUST PRODUCT=== ###
   def myCart_adjustProduct() do
      click({:class, "quantityInput"})
      send_keys(:num1)
      take_screenshot("CPMC0010-adjustProduct_decrease.png")
      Logger.debug "CPMC0010 Complete"
      click({:class, "quantityInput"})
      send_keys(:num2)
      take_screenshot("CPMC0011-adjustProduct_increase.png")
      Logger.debug "CPMC0011 Complete"
      click({:class, "quantityInput"})
      send_keys(:num1)
      click({:class, "takeAllButton"})
      take_screenshot("CPMC0012-adjustProduct_takeAll.png")
      Logger.debug "CPMC0012 Complete"
   end

   ### ===REMOVE PRODUCT=== ###
   def myCart_removeProduct() do
      click({:class, "removeAllButton"})
      :timer.sleep(250)
      click({:class, "removeAllButton"})
      :timer.sleep(250)
      click({:class, "removeAllButton"})
      :timer.sleep(250)
      click({:class, "removeAllButton"})
      :timer.sleep(250)
      click({:class, "removeAllButton"})
      take_screenshot("CPMC0013-removeProduct.png")
      Logger.debug "CPMC0013 Complete"
   end

   ### ===REMOVE FAVORITES=== ###
   def myCart_removeFavorites() do
      click({:class, "iHeartClick"})
      :timer.sleep(250)
      click({:class, "iHeartClick"})
      :timer.sleep(250)
      click({:class, "iHeartClick"})
      :timer.sleep(250)
      click({:class, "iHeartClick"})
      :timer.sleep(250)
      click({:class, "iHeartClick"})
      take_screenshot("CPMC0014-removeFavorites.png")
      Logger.debug "CPMC0014 Complete"
   end

   ###############################
   ### ===CPORTAL INVENTORY=== ###
   ###############################

   ### ===MY CART=== ###
   def cPortal_inventory() do
      cPortal_inventory_navigate() # NAVIGATE TO INVENTORY PAGE
      cPortal_inventory_searchInventory() # SEARCH INVENTORY
      navigate_to(@inventoryPage)
      cPortal_inventory_searchInventoryButton() # SEARCH INVENTORY WITH BUTTON
      navigate_to(@inventoryPage)
      cPortal_inventory_filterSearch() # FILTER SEARCH
   end

   ### ===NAVIGATE TO INVENTORY PAGE=== ###
   def cPortal_inventory_navigate() do
      click({:id, "testInventory"})
      wait() # WAIT UNTIL PAGE IS LOADED
      take_screenshot("CPIN0001-inventory.png")
      Logger.debug "CPIN0001 Complete"
   end

   ### ===SEARCH INVENTORY=== ###
   def cPortal_inventory_searchInventory() do
      fill_field({:id, "txtBox_search"}, "A1688")
      send_keys(:enter)
      wait() # WAIT UNTIL PAGE IS LOADED
      take_screenshot("CPIN0002-searchInventory.png")
      Logger.debug "CPIN0002 Complete"
   end

   ### ===SEARCH INVENTORY WITH BUTTON=== ###
   def cPortal_inventory_searchInventoryButton() do
      fill_field({:id, "txtBox_search"}, "A1688")
      click({:id, "btn_search"})
      wait() # WAIT UNTIL PAGE IS LOADED
      take_screenshot("CPIN0003-searchInventoryButton.png")
      Logger.debug "CPIN0003 Complete"
   end

   ### ===FILTER SEARCH=== ###
   def cPortal_inventory_filterSearch() do
      click({:id, "more_options"})
      take_screenshot("CPIN0004-filterSearch_moreOptions.png")
      Logger.debug "CPIN0004 Complete"
      click({:id, "more_options"})
      take_screenshot("CPIN0005-filterSearch_fewerOptions.png")
      Logger.debug "CPIN0005 Complete"
      click({:id, "more_options"})
      click({:id, "typeDropdown"})
      click({:css, "#filter_type .fa-square"})
      click({:id, "typeDropdown"})
      :timer.sleep(250)
      click({:id, "makeDropdown"})
      click({:css, "#filter_make .fa-square"})
      click({:id, "makeDropdown"})
      :timer.sleep(250)
      click({:id, "testingDropdown"})
      click({:css, "#filter_testing .fa-square"})
      click({:id, "testingDropdown"})
      :timer.sleep(250)
      click({:id, "carrierDropdown"})
      click({:css, "#filter_carrier .fa-square"})
      click({:id, "carrierDropdown"})
      :timer.sleep(250)
      click({:id, "modelDropdown"})
      click({:css, "#filter_model .fa-square"})
      click({:id, "modelDropdown"})
      :timer.sleep(250)
      click({:id, "capacityDropdown"})
      click({:css, "#filter_capacity .fa-square"})
      click({:id, "capacityDropdown"})
      :timer.sleep(250)
      click({:id, "btn_filter_search"})
      wait() # WAIT UNTIL PAGE IS LOADED
      take_screenshot("CPIN0006-filterSearch_filterOptions.png")
      Logger.debug "CPIN0006 Complete"
      navigate_to(@inventoryPage)
      click({:id, "more_options"})
      click({:id, "txtBox_price_min"})
      :timer.sleep(750)
      send_keys(:num1)
      :timer.sleep(750)
      click({:id, "txtBox_price_max"})
      :timer.sleep(750)
      send_keys(:num5)
      send_keys(:num0)
      send_keys(:num0)
      :timer.sleep(750)
      click({:id, "txtBox_qty_min"})
      :timer.sleep(750)
      send_keys(:num1)
      :timer.sleep(750)
      click({:id, "txtBox_qty_max"})
      :timer.sleep(750)
      send_keys(:num5)
      send_keys(:num0)
      :timer.sleep(750)
      click({:id, "btn_filter_search"})
      wait() # WAIT UNTIL PAGE IS LOADED
      take_screenshot("CPIN0007-filterSearch_valueRanges.png")
      Logger.debug "CPIN0007 Complete"
   end

   ####################
   ### ===OTHER=== ####
   ####################

   ### ===WAT UNTIL PAGE IS LOADED=== ###
   def wait() do
      case execute_script("return document.readyState") do
         "loading" ->  wait() # WAIT UNTIL PAGE IS LOADED
         _ -> true
      end
  end
end