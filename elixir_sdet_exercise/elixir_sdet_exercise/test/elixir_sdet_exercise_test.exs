defmodule ElixirSdetExerciseTest do
   # Import helpers
   use Hound.Helpers
   use ExUnit.Case
   require Logger
   # Start hound session and destroy when tests are run
   hound_session()
   

########################################################################################################################################################################################################
##########################################################################################LOGIN/SIGN UP TESTS###########################################################################################
########################################################################################################################################################################################################
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

  # test "custom login and signup 1-15" do
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
  # end
  #   test "custom login and signup 1-31" do
  #   lP016_Save_and_Continue_missing_email()
  #   lP017_Save_and_Continue_missing_Company_name()
  #   lP018_Save_and_Continue_Missing_phone_number()
  #   lP019_Save_and_Continue_Phone_length_above_10_characters()
  #   lP020_Save_and_Continue_All_selected()
  #   lP021_Save_and_Continue_none_selected()
  #   lP022_Save_and_Continue_All_selected_but_locations()
  #   lP023_Save_and_Continue_All_selected_but_where_they_found_us()
  #   lP024_Save_and_Continue_All_selected_but_spending()
  #   lP026_Create_account_no_terms()
  #   lP027_Create_account_no_feilds()
  #   lP028_Create_account_no_password()
  #   :timer.sleep(3000)
  #   lP029_Create_account_no_confirm()
  #   lP030_Create_account_under_6()
  #   lP033_Create_account_policy()
  #   lP034_Create_account_policy_accept()
  #   lP035_Create_account_policy_decline()
  #   lP032_Create_account_all_lowercase()
  #   lP025_Create_account()
  #   lP031_Create_account_all_caps()
  # end

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

########################################################################################################################################################################################################
##########################################################################################CUSTOMER PORTAL TESTS#########################################################################################
########################################################################################################################################################################################################

   ### ===VARIABLES=== ###
   @tag timeout: :infinity # SETS TIMEOUT TO INFINITY
   @homePage "https://www.citelectronics.com/" # HOME PAGE
   @loginPage "https://www.citelectronics.com/login.php" # LOGIN PAGE
   @myCartPage "https://www.citelectronics.com/welcome.php?p=0&s=0" # MY CART PAGE
   @dashboardPage "https://www.citelectronics.com/welcome.php?p=1&s=0" # DASHBOARD PAGE
   @inventoryPage "https://www.citelectronics.com/welcome.php?p=0&s=2" # INVENTORY PAGE
   @cPortal_email "testc@citelectronics.com" # CPORTAL EMAIL
   @cPortal_password "techteam" # CPORTAL PASSWORD

   ### ===EXECUTE TEST=== ###
  #  test "EXECUTE TEST" do
  #     Logger.debug "EXECUTE TEST START"
  #     set_window_size current_window_handle(), 1920, 1250 # RESIZES WINDOW
  #     # navigate_to(@homePage)
  #     # set_cookie(%{name: "language", value: "1"})
  #     cPortal_login() # LOGIN TESTS
  #     cPortal_myCart() # MY CART TESTS
  #     navigate_to(@dashboardPage)
  #     cPortal_inventory() # INVENTORY TESTS
  #     Logger.debug "EXECUTE TEST END"
  #  end

   ###########################
   ### ===CPORTAL LOGIN=== ###
   ###########################

   ### ===LOGIN TESTS=== ###
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

   ### ===MY CART TESTS=== ###
   def cPortal_myCart() do
      cPortal_myCart_navigate() # NAVIGATE TO MY CART PAGE
      myCart_inventory_navigate() # NAVIGATE TO INVENTORY
      myCart_inventory_viewInventoryList() # VIEW INVENTORY LIST
      myCart_inventory_applyfilter() # APPLIES FILTER
      myCart_inventory_addFavorites() # ADD TO FAVORITES
      myCart_inventory_addProduct() # ADD PRODUCT
      myCart_makeOffer() # MAKE OFFER
      myCart_adjustProduct() # ADJUST PRODUCT
      myCart_sortList() # SORT MY FAVORITES LIST
      myCart_removeProduct() # REMOVE PRODUCT
      myCart_removeFavorites() # REMOVE FAVORITES
      myCart_inventory_navigate() # NAVIGATE TO INVENTORY
      myCart_inventory_viewInventoryList() # VIEW INVENTORY LIST
      myCart_inventory_applyfilter() # APPLIES FILTER
      myCart_inventory_addProduct() # ADD PRODUCT
      myCart_submitOrder() # SUBMIT ORDER
      myCart_viewPendingOrder() # VIEW PENDING ORDER
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
      fill_field({:id, "txtBox_price_min"}, "50")
      fill_field({:id, "txtBox_qty_min"}, "2")
      click({:id, "save_p_q"})
      :timer.sleep(1000) # SLEEP 1 SECOND
      take_screenshot("CPMC0004-inventory_applyFilter.png")
      Logger.debug "CPMC0004 Complete"
   end

   ### ===ADD TO FAVORITES=== ###
   def myCart_inventory_addFavorites() do
      click({:css, "#invTableContent .item_row:nth-child(1) .fav_td .favorite_item"})
      :timer.sleep(250) # SLEEP .25 SECONDS
      click({:css, "#invTableContent .item_row:nth-child(2) .fav_td .favorite_item"})
      :timer.sleep(250) # SLEEP .25 SECONDS
      click({:css, "#invTableContent .item_row:nth-child(3) .fav_td .favorite_item"})
      :timer.sleep(250) # SLEEP .25 SECONDS
      click({:css, "#invTableContent .item_row:nth-child(4) .fav_td .favorite_item"})
      :timer.sleep(250) # SLEEP .25 SECONDS
      click({:css, "#invTableContent .item_row:nth-child(5) .fav_td .favorite_item"})
      take_screenshot("CPMC0005-inventory_addFavorites.png")
      Logger.debug "CPMC0005 Complete"
   end

   ### ===ADD PRODUCT=== ###
   def myCart_inventory_addProduct() do
      click({:css, "#invTableContent .item_row:nth-child(1) .qty_td .add_all_btn"})
      :timer.sleep(250) # SLEEP .25 SECONDS
      click({:css, "#invTableContent .item_row:nth-child(2) .qty_td .add_all_btn"})
      :timer.sleep(250) # SLEEP .25 SECONDS
      click({:css, "#invTableContent .item_row:nth-child(3) .qty_td .add_all_btn"})
      :timer.sleep(250) # SLEEP .25 SECONDS
      click({:css, "#invTableContent .item_row:nth-child(4) .qty_td .add_all_btn"})
      :timer.sleep(250) # SLEEP .25 SECONDS
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
      send_keys(:num1) # TYPES 1
      :timer.sleep(250) # SLEEP .25 SECONDS
      take_screenshot("CPMC0010-adjustProduct_decrease.png")
      Logger.debug "CPMC0010 Complete"

      click({:class, "quantityInput"})
      send_keys(:num2) # TYPES 2
      :timer.sleep(250) # SLEEP .25 SECONDS
      take_screenshot("CPMC0011-adjustProduct_increase.png")
      Logger.debug "CPMC0011 Complete"

      click({:class, "quantityInput"})
      send_keys(:num1) # TYPES 1
      :timer.sleep(250) # SLEEP .25 SECONDS
      click({:class, "takeAllButton"})
      :timer.sleep(250) # SLEEP .25 SECONDS
      take_screenshot("CPMC0012-adjustProduct_takeAll.png")
      Logger.debug "CPMC0012 Complete"
   end

   ### ===SORT MY FAVORITES LIST=== ###
   def myCart_sortList() do
      click({:id, "dropdownMenu1"})
      click({:css, "#favoriteDropdown_Sort li:nth-child(2) a"})
      :timer.sleep(250) # SLEEP .25 SECONDS
      take_screenshot("CPMC0013-sortList_nameAZ.png")
      Logger.debug "CPMC0013 Complete"

      click({:id, "dropdownMenu1"})
      click({:css, "#favoriteDropdown_Sort li:nth-child(3) a"})
      :timer.sleep(250) # SLEEP .25 SECONDS
      take_screenshot("CPMC0014-sortList_nameZA.png")
      Logger.debug "CPMC0014 Complete"

      click({:id, "dropdownMenu1"})
      click({:css, "#favoriteDropdown_Sort li:nth-child(6) a"})
      :timer.sleep(250) # SLEEP .25 SECONDS
      take_screenshot("CPMC0015-sortList_priceLH.png")
      Logger.debug "CPMC0015 Complete"

      click({:id, "dropdownMenu1"})
      click({:css, "#favoriteDropdown_Sort li:nth-child(7) a"})
      :timer.sleep(250) # SLEEP .25 SECONDS
      take_screenshot("CPMC0016-sortList_priceHL.png")
      Logger.debug "CPMC0016 Complete"

      click({:id, "dropdownMenu1"})
      click({:css, "#favoriteDropdown_Sort li:nth-child(10) a"})
      :timer.sleep(250) # SLEEP .25 SECONDS
      take_screenshot("CPMC0017-sortList_quantityLH.png")
      Logger.debug "CPMC0017 Complete"

      click({:id, "dropdownMenu1"})
      click({:css, "#favoriteDropdown_Sort li:nth-child(11) a"})
      :timer.sleep(250) # SLEEP .25 SECONDS
      take_screenshot("CPMC0018-sortList_quantityHL.png")
      Logger.debug "CPMC0018 Complete"
   end

   ### ===REMOVE PRODUCT=== ###
   def myCart_removeProduct() do
      click({:class, "removeAllButton"})
      :timer.sleep(250) # SLEEP .25 SECONDS
      click({:class, "removeAllButton"})
      :timer.sleep(250) # SLEEP .25 SECONDS
      click({:class, "removeAllButton"})
      :timer.sleep(250) # SLEEP .25 SECONDS
      click({:class, "removeAllButton"})
      :timer.sleep(250) # SLEEP .25 SECONDS
      click({:class, "removeAllButton"})
      take_screenshot("CPMC0019-removeProduct.png")
      Logger.debug "CPMC0019 Complete"
   end

   ### ===REMOVE FAVORITES=== ###
   def myCart_removeFavorites() do
      click({:class, "iHeartClick"})
      :timer.sleep(250) # SLEEP .25 SECONDS
      click({:class, "iHeartClick"})
      :timer.sleep(250) # SLEEP .25 SECONDS
      click({:class, "iHeartClick"})
      :timer.sleep(250) # SLEEP .25 SECONDS
      click({:class, "iHeartClick"})
      :timer.sleep(250) # SLEEP .25 SECONDS
      click({:class, "iHeartClick"})
      take_screenshot("CPMC0020-removeFavorites.png")
      Logger.debug "CPMC0020 Complete"
   end

   ### ===SUBMIT ORDER=== ###
   def myCart_submitOrder() do
      click({:class, "panel-heading"})
      click({:class, "panel-heading"})
      click({:id, "div_Container_cartOverview_submit"})
      wait() # WAIT UNTIL PAGE IS LOADED
      take_screenshot("CPMC0021-submitOrder_submitOrderRequest.png")
      Logger.debug "CPMC0021 Complete"

      click({:id, "selectShippingAddress"})
      click({:css, "#selectShippingAddress option:nth-child(2)"})
      take_screenshot("CPMC0022-submitOrder_selectAddress.png")
      Logger.debug "CPMC0022 Complete"

      click({:id, "selectShippingAddress"})
      click({:css, "#selectShippingAddress option:nth-child(1)"})
      take_screenshot("CPMC0023-submitOrder_selectAddress_default.png")
      Logger.debug "CPMC0023 Complete"

      click({:id, "selectShippingMethood"})
      click({:css, "#selectShippingMethood option:nth-child(23)"})
      take_screenshot("CPMC0024-submitOrder_shippingMethod.png")
      Logger.debug "CPMC0024 Complete"

      click({:id, "inputCheckShippingAddress"})
      take_screenshot("CPMC0025-submitOrder_confirmAddress.png")
      Logger.debug "CPMC0025 Complete"

      click({:id, "divCollapseTwoHeading"})
      take_screenshot("CPMC0026-submitOrder_paymentInformation.png")
      Logger.debug "CPMC0026 Complete"

      click({:id, "selectPaymentMethood"})
      click({:css, "#selectPaymentMethood option:nth-child(2)"})
      take_screenshot("CPMC0027-submitOrder_changeWire.png")
      Logger.debug "CPMC0027 Complete"

      click({:id, "selectPaymentMethood"})
      click({:css, "#selectPaymentMethood option:nth-child(2)"})
      take_screenshot("CPMC0028-submitOrder_changePayPal.png")
      Logger.debug "CPMC0028 Complete"

      click({:id, "inputCheckPayment"})
      take_screenshot("CPMC0029-submitOrder_acceptPolicy.png")
      Logger.debug "CPMC0029 Complete"

      click({:id, "inputCheckPayment_Remember"})
      take_screenshot("CPMC0030-submitOrder_unsavePayment.png")
      Logger.debug "CPMC0030 Complete"

      click({:id, "btnPaymentContinue"})
      take_screenshot("CPMC0031-submitOrder_paymentInformationContinue.png")
      Logger.debug "CPMC0031 Complete"

      click({:id, "inputCheckSalesFollowup"})
      take_screenshot("CPMC0032-submitOrder_checkSalesFollowup.png")
      Logger.debug "CPMC0032 Complete"

      fill_field({:id, "textAreaComment"}, "This is a test.")
      take_screenshot("CPMC0033-submitOrder_addComment.png")
      Logger.debug "CPMC0033 Complete"

      click({:id, "inputCheckSalesFollowup"})
      take_screenshot("CPMC0034-submitOrder_uncheckSalesFollowup.png")
      Logger.debug "CPMC0034 Complete"

      click({:class, "btn-Step2Return"})
      :timer.sleep(1000) # SLEEP 1 SECOND
      take_screenshot("CPMC0035-submitOrder_changeOrder.png")
      Logger.debug "CPMC0035 Complete"

      click({:id, "div_Container_cartOverview_submit"})
      wait() # WAIT UNTIL PAGE IS LOADED
      take_screenshot("CPMC0036-submitOrder_submitOrderRequest_final.png")
      Logger.debug "CPMC0036 Complete"

      :timer.sleep(1000) # SLEEP 1 SECOND
      click({:id, "inputCheckShippingAddress"})
      :timer.sleep(1000) # SLEEP 1 SECOND
      click({:id, "inputCheckPayment"})
      :timer.sleep(1000) # SLEEP 1 SECOND
      click({:id, "inputCheckPayment_Remember"})
      :timer.sleep(1000) # SLEEP 1 SECOND
      click({:id, "btnPaymentContinue"})
      :timer.sleep(1000) # SLEEP 1 SECOND
      click({:id, "btnSubmitOrder"})
      wait() # WAIT UNTIL PAGE IS LOADED
      take_screenshot("CPMC0037-submitOrder_sendSales.png")
      Logger.debug "CPMC0037 Complete"
   end

   ### ===VIEW PENDING ORDER=== ###
   def myCart_viewPendingOrder() do
      click({:id, "viewPendingOrder"})
      wait() # WAIT UNTIL PAGE IS LOADED
      take_screenshot("CPMC0038-viewPendingOrder.png")
      Logger.debug "CPMC0038 Complete"
   end

   ###############################
   ### ===CPORTAL INVENTORY=== ###
   ###############################

   ### ===INVENTORY TESTS=== ###
   def cPortal_inventory() do
      inventory_navigate() # NAVIGATE TO INVENTORY PAGE
      inventory_straightToInventory() # GO STRAIGHT TO INVENTORY
      navigate_to(@inventoryPage)
      inventory_searchInventoryEnter() # SEARCH INVENTORY
      navigate_to(@inventoryPage)
      inventory_searchInventoryButton() # SEARCH INVENTORY WITH BUTTON
      navigate_to(@inventoryPage)
      inventory_filterSearch() # FILTER SEARCH
      inventory_viewFavorites() # VIEW FAVORITES
      inventory_viewPriceDrops() # VIEW PRICE DROPS
      inventory_inventoryFeatures() # INVENTORY FEATURES
   end

   ### ===NAVIGATE TO INVENTORY PAGE=== ###
   def inventory_navigate() do
      click({:id, "testInventory"})
      wait() # WAIT UNTIL PAGE IS LOADED
      take_screenshot("CPIN0001-inventory.png")
      Logger.debug "CPIN0001 Complete"
   end

   ### ===GO STRAIGHT TO INVENTORY=== ###
   def inventory_straightToInventory() do
      click({:id, "inventoryLink"})
      wait() # WAIT UNTIL PAGE IS LOADED
      take_screenshot("CPIN0002-straightToInventory.png")
      Logger.debug "CPIN0002 Complete"
   end

   ### ===SEARCH INVENTORY=== ###
   def inventory_searchInventoryEnter() do
      fill_field({:id, "txtBox_search"}, "A1688")
      send_keys(:enter) # TYPES ENTER
      wait() # WAIT UNTIL PAGE IS LOADED
      take_screenshot("CPIN0003-searchInventory.png")
      Logger.debug "CPIN0003 Complete"
   end

   ### ===SEARCH INVENTORY WITH BUTTON=== ###
   def inventory_searchInventoryButton() do
      fill_field({:id, "txtBox_search"}, "A1688")
      click({:id, "btn_search"})
      wait() # WAIT UNTIL PAGE IS LOADED
      take_screenshot("CPIN0004-searchInventoryButton.png")
      Logger.debug "CPIN0004 Complete"
   end

   ### ===FILTER SEARCH=== ###
   def inventory_filterSearch() do
      click({:id, "more_options"})
      :timer.sleep(1000) # SLEEP 1 SECOND
      take_screenshot("CPIN0005-filterSearch_moreOptions.png")
      Logger.debug "CPIN0005 Complete"

      click({:id, "more_options"})
      :timer.sleep(1000) # SLEEP 1 SECOND
      take_screenshot("CPIN0006-filterSearch_fewerOptions.png")
      Logger.debug "CPIN0006 Complete"

      click({:id, "more_options"})
      click({:id, "typeDropdown"})
      click({:css, "#filter_type .fa-square"})
      click({:id, "typeDropdown"})
      :timer.sleep(1000) # SLEEP 1 SECOND
      click({:id, "makeDropdown"})
      click({:css, "#filter_make .fa-square"})
      click({:id, "makeDropdown"})
      :timer.sleep(1000) # SLEEP 1 SECOND
      click({:id, "testingDropdown"})
      click({:css, "#filter_testing .fa-square"})
      click({:id, "testingDropdown"})
      :timer.sleep(1000) # SLEEP 1 SECOND
      click({:id, "carrierDropdown"})
      click({:css, "#filter_carrier .fa-square"})
      click({:id, "carrierDropdown"})
      :timer.sleep(1000) # SLEEP 1 SECOND
      click({:id, "modelDropdown"})
      click({:css, "#filter_model .fa-square"})
      click({:id, "modelDropdown"})
      :timer.sleep(1000) # SLEEP 1 SECOND
      click({:id, "capacityDropdown"})
      click({:css, "#filter_capacity .fa-square"})
      click({:id, "capacityDropdown"})
      :timer.sleep(1000) # SLEEP 1 SECOND
      click({:id, "btn_filter_search"})
      wait() # WAIT UNTIL PAGE IS LOADED
      take_screenshot("CPIN0007-filterSearch_filterOptions.png")
      Logger.debug "CPIN0007 Complete"

      click({:css, "#selectedFiltersRow .in_current:nth-child(1) span"})
      click({:css, "#clearSaveButtons .save_link"})
      :timer.sleep(3000) # SLEEP 3 SECOND
      take_screenshot("CPIN0008-filterSearch_clearFilter.png")
      Logger.debug "CPIN0008 Complete"

      click({:css, "#clearSaveButtons .clear_link"})
      click({:css, "#clearSaveButtons .save_link"})
      :timer.sleep(3000) # SLEEP 3 SECOND
      take_screenshot("CPIN0009-filterSearch_clearAllFilter.png")
      Logger.debug "CPIN0009 Complete"

      navigate_to(@inventoryPage)
      click({:id, "more_options"})
      click({:id, "txtBox_price_min"})
      :timer.sleep(750) # SLEEP .75 SECONDS
      send_keys(:num1)
      :timer.sleep(750) # SLEEP .75 SECONDS
      click({:id, "txtBox_price_max"})
      :timer.sleep(750) # SLEEP .75 SECONDS
      send_keys(:num5) # TYPES 5
      send_keys(:num0) # TYPES 0
      send_keys(:num0) # TYPES 0
      :timer.sleep(750) # SLEEP .75 SECONDS
      click({:id, "txtBox_qty_min"})
      :timer.sleep(750) # SLEEP .75 SECONDS
      send_keys(:num1) # TYPES 1
      :timer.sleep(750) # SLEEP .75 SECONDS
      click({:id, "txtBox_qty_max"})
      :timer.sleep(750) # SLEEP .75 SECONDS
      send_keys(:num5) # TYPES 5
      send_keys(:num0) # TYPES 0
      :timer.sleep(750) # SLEEP .75 SECONDS
      click({:id, "btn_filter_search"})
      wait() # WAIT UNTIL PAGE IS LOADED
      take_screenshot("CPIN0010-filterSearch_valueRanges.png")
      Logger.debug "CPIN0010 Complete"
   end

   ### ===VIEW FAVORITES=== ###
   def inventory_viewFavorites() do
      click({:css, "#invTableContent .item_row:nth-child(1) .favorite_item"})
      :timer.sleep(250) # SLEEP .25 SECONDS
      click({:css, "#invTableContent .item_row:nth-child(2) .favorite_item"})
      :timer.sleep(250) # SLEEP .25 SECONDS
      click({:css, "#invTableContent .item_row:nth-child(3) .favorite_item"})
      :timer.sleep(250) # SLEEP .25 SECONDS
      click({:css, "#invTableContent .item_row:nth-child(4) .favorite_item"})
      :timer.sleep(250) # SLEEP .25 SECONDS
      click({:css, "#invTableContent .item_row:nth-child(5) .favorite_item"})
      take_screenshot("CPIN0011-viewFavorites_addFavorites.png")
      Logger.debug "CPIN0011 Complete"

      click({:css, "#invTabHeaders li:nth-child(2) .toggle_list_type"})
      :timer.sleep(1000) # SLEEP 1 SECOND
      take_screenshot("CPIN0012-viewFavorites.png")
      Logger.debug "CPIN0012 Complete"

      click({:css, "#invTableContent tr:nth-child(1) .favorite_item"})
      :timer.sleep(250) # SLEEP .25 SECONDS
      click({:css, "#invTableContent tr:nth-child(2) .favorite_item"})
      :timer.sleep(250) # SLEEP .25 SECONDS
      click({:css, "#invTableContent tr:nth-child(3) .favorite_item"})
      :timer.sleep(250) # SLEEP .25 SECONDS
      click({:css, "#invTableContent tr:nth-child(4) .favorite_item"})
      :timer.sleep(250) # SLEEP .25 SECONDS
      click({:css, "#invTableContent tr:nth-child(5) .favorite_item"})
      take_screenshot("CPIN0013-viewFavorites_removeFavorites.png")
      Logger.debug "CPIN0013 Complete"
   end

   ### ===VIEW PRICE DROPS=== ###
   def inventory_viewPriceDrops() do
      click({:css, "#invTabHeaders li:nth-child(3) .toggle_list_type"})
      :timer.sleep(1000) # SLEEP 1 SECOND
      take_screenshot("CPIN0014-viewPriceDrops.png")
      Logger.debug "CPIN0014 Complete"
   end

   ### ===INVENTORY FEATURES=== ###
   def inventory_inventoryFeatures() do
      click({:css, "#invTabHeaders li:nth-child(1) .toggle_list_type"})
      :timer.sleep(1000) # SLEEP 1 SECOND
      take_screenshot("CPIN0015-inventoryFeatures.png")
      Logger.debug "CPIN0015 Complete"

      click({:id, "per_page_selection"})
      click({:css, "#per_page_selection option:nth-child(2)"})
      :timer.sleep(3000) # SLEEP 3 SECONDS
      take_screenshot("CPIN0016-inventoryFeatures_show50.png")
      Logger.debug "CPIN0016 Complete"

      click({:id, "per_page_selection"})
      click({:css, "#per_page_selection option:nth-child(3)"})
      :timer.sleep(3000) # SLEEP 3 SECONDS
      take_screenshot("CPIN0017-inventoryFeatures_show100.png")
      Logger.debug "CPIN0017 Complete"

      click({:id, "per_page_selection"})
      click({:css, "#per_page_selection option:nth-child(4)"})
      :timer.sleep(3000) # SLEEP 3 SECONDS
      take_screenshot("CPIN0018-inventoryFeatures_show200.png")
      Logger.debug "CPIN0018 Complete"

      click({:id, "per_page_selection"})
      click({:css, "#per_page_selection option:nth-child(5)"})
      :timer.sleep(3000) # SLEEP 3 SECONDS
      take_screenshot("CPIN0019-inventoryFeatures_show500.png")
      Logger.debug "CPIN0019 Complete"

      click({:id, "per_page_selection"})
      click({:css, "#per_page_selection option:nth-child(1)"})
      :timer.sleep(3000) # SLEEP 3 SECONDS
      take_screenshot("CPIN0020-inventoryFeatures_show25.png")
      Logger.debug "CPIN0020 Complete"

      click({:css, "#invTableHeaders tr th:nth-child(2)"})
      :timer.sleep(3000) # SLEEP 3 SECONDS
      take_screenshot("CPIN0021-inventoryFeatures_typeAZ.png")
      Logger.debug "CPIN0021 Complete"

      click({:css, "#invTableHeaders tr th:nth-child(2)"})
      :timer.sleep(3000) # SLEEP 3 SECONDS
      take_screenshot("CPIN0022-inventoryFeatures_typeZA.png")
      Logger.debug "CPIN0022 Complete"

      click({:css, "#invTableHeaders tr th:nth-child(3)"})
      :timer.sleep(3000) # SLEEP 3 SECONDS
      take_screenshot("CPIN0023-inventoryFeatures_makeAZ.png")
      Logger.debug "CPIN0023 Complete"

      click({:css, "#invTableHeaders tr th:nth-child(3)"})
      :timer.sleep(3000) # SLEEP 3 SECONDS
      take_screenshot("CPIN0024-inventoryFeatures_makeZA.png")
      Logger.debug "CPIN0024 Complete"

      click({:css, "#invTableHeaders tr th:nth-child(4)"})
      :timer.sleep(3000) # SLEEP 3 SECONDS
      take_screenshot("CPIN0025-inventoryFeatures_modelAZ.png")
      Logger.debug "CPIN0025 Complete"

      click({:css, "#invTableHeaders tr th:nth-child(4)"})
      :timer.sleep(3000) # SLEEP 3 SECONDS
      take_screenshot("CPIN0026-inventoryFeatures_modelZA.png")
      Logger.debug "CPIN0026 Complete"

      click({:css, "#invTableHeaders tr th:nth-child(5)"})
      :timer.sleep(3000) # SLEEP 3 SECONDS
      take_screenshot("CPIN0027-inventoryFeatures_testingAZ.png")
      Logger.debug "CPIN0027 Complete"

      click({:css, "#invTableHeaders tr th:nth-child(5)"})
      :timer.sleep(3000) # SLEEP 3 SECONDS
      take_screenshot("CPIN0028-inventoryFeatures_testingZA.png")
      Logger.debug "CPIN0028 Complete"

      click({:css, "#invTableHeaders tr th:nth-child(6)"})
      :timer.sleep(3000) # SLEEP 3 SECONDS
      take_screenshot("CPIN0029-inventoryFeatures_carrierAZ.png")
      Logger.debug "CPIN0029 Complete"

      click({:css, "#invTableHeaders tr th:nth-child(6)"})
      :timer.sleep(3000) # SLEEP 3 SECONDS
      take_screenshot("CPIN0030-inventoryFeatures_carrierZA.png")
      Logger.debug "CPIN0030 Complete"

      click({:css, "#invTableHeaders tr th:nth-child(7)"})
      :timer.sleep(3000) # SLEEP 3 SECONDS
      take_screenshot("CPIN0031-inventoryFeatures_priceHL.png")
      Logger.debug "CPIN0031 Complete"

      click({:css, "#invTableHeaders tr th:nth-child(7)"})
      :timer.sleep(3000) # SLEEP 3 SECONDS
      take_screenshot("CPIN0032-inventoryFeatures_priceLH.png")
      Logger.debug "CPIN0032 Complete"

      click({:css, "#invTableHeaders tr th:nth-child(8)"})
      :timer.sleep(3000) # SLEEP 3 SECONDS
      take_screenshot("CPIN0033-inventoryFeatures_quantityHL.png")
      Logger.debug "CPIN0033 Complete"

      click({:css, "#invTableHeaders tr th:nth-child(8)"})
      :timer.sleep(3000) # SLEEP 3 SECONDS
      take_screenshot("CPIN0034-inventoryFeatures_quantityLH.png")
      Logger.debug "CPIN0034 Complete"

      send_text "Pg Dn"
      :timer.sleep(500) # SLEEP .5 SECONDS
      send_text "Pg Dn"
      :timer.sleep(500) # SLEEP .5 SECONDS
      send_text "Pg Dn"
      :timer.sleep(500) # SLEEP .5 SECONDS
      send_text "Pg Dn"
      :timer.sleep(500) # SLEEP .5 SECONDS
      send_text "Pg Dn"
      :timer.sleep(500) # SLEEP .5 SECONDS
      send_text "Pg Dn"
      click({:css, "#invPagination nav ul li:nth-child(4) .page-link"})
      :timer.sleep(3000) # SLEEP 3 SECONDS
      take_screenshot("CPIN0035-inventoryFeatures_numberPagination.png")
      Logger.debug "CPIN0035 Complete"

      send_text "Pg Dn"
      :timer.sleep(500) # SLEEP .5 SECONDS
      send_text "Pg Dn"
      :timer.sleep(500) # SLEEP .5 SECONDS
      send_text "Pg Dn"
      :timer.sleep(500) # SLEEP .5 SECONDS
      send_text "Pg Dn"
      :timer.sleep(500) # SLEEP .5 SECONDS
      send_text "Pg Dn"
      :timer.sleep(500) # SLEEP .5 SECONDS
      send_text "Pg Dn"
      click({:css, "#invPagination nav ul li:nth-child(2) .page-link"})
      :timer.sleep(3000) # SLEEP 3 SECONDS
      take_screenshot("CPIN0036-inventoryFeatures_arrowPagination.png")
      Logger.debug "CPIN0036 Complete"

      click({:css, "#primaryInvHeader a"})
      wait() # WAIT UNTIL PAGE IS LOADED
      take_screenshot("CPIN0037-inventoryFeatures_downloadInventory.png")
      Logger.debug "CPIN0037 Complete"
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
   #  delete_cookies()
  # refresh_page()

#################################################################################################################################################################################################################
############################################################################################Home Page############################################################################################################
#################################################################################################################################################################################################################

  @uRLH  "https://www.citelectronics.com"

    test "Home Page" do
    #   hP001_Check_Site_Load()
    #   hP002_Nav_Spanish_Dropdown_Load()
    #   hP003_Nav_English_Dropdown_Load()
    #   hP004_Nav_Login_Load()
    #   hP005_Nav_Home_Load()
    #   hP006_Nav_Wholesale_Load()
    #   hP007_Nav_Wholesale_Dropdown_Purchasing_Proccess_Load()
    #   hP008_Nav_Wholesale_Dropdown_Quality_Guide_Load()
    #   hP009_Nav_Wholesale_Dropdown_FAQ_Load()
    #   hP010_Nav_Wholesale_Dropdown_Inventory_Load()
    #   hP011_Nav_Retail_Load()
    #   hP012_Nav_About_Us_Load()
    #   hP013_Shop_for_button()
    #   hP014_Become_a_Button()
    #   hP015_Retail_learn_more_button()
    #   hP016_Wholesale_Learn_more_button()
    #   hP017_Footer_Create_an_Account()
    #   hP018_Footer_My_Account()
    #   hP019_Footer_FAQ()
    #   hP020_Footer_Quality_Guide()
    #   hP021_Footer_Purchasing_Process()
    #   hP022_Footer_Inventory()
    #   hP023_Footer_Careers()
    #   hP024_Footer_Abount_US()
    end

    def hP001_Check_Site_Load() do
      navigate_to(@uRLH) 
      wait()
      take_screenshot("HP001-Check-Site-Load.png") 
    end
    def hP002_Nav_Spanish_Dropdown_Load() do
      navigate_to(@uRLH) 
      wait()
      click({:id, "navDrop"})
      click({:id, "navSpanish"})
      take_screenshot("HP002-Nav-Spanish-Dropdown-Load.png") 
    end
    def hP003_Nav_English_Dropdown_Load() do
      navigate_to(@uRLH) 
      wait()
      click({:id, "navDrop"})
      click({:id, "navEnglish"})
      take_screenshot("HP002-Nav-English-Dropdown-Load.png") 
    end
    def hP004_Nav_Login_Load() do
      navigate_to(@uRLH) 
      wait()
      click({:id, "login_li"})
      take_screenshot("HP004-Nav-Login-Load.png") 
    end  
    def hP005_Nav_Home_Load() do
      navigate_to(@uRLH)
      # set_window_size current_window_handle(), 1920, 1250 # RESIZES WINDOW
     click({:css, "#subNav .container-fluid div:nth-child(2) .nav .home_link"})
      take_screenshot("HP005-Nav-Home-Load.png") 
    end
    def hP006_Nav_Wholesale_Load() do
      navigate_to(@uRLH) 
      wait()
      click({:css, "#subNav .container-fluid div:nth-child(2) .nav .wholesale_link"})
      take_screenshot("HP006-Nav-Wholesale-Load.png") 
    end
    def hP007_Nav_Wholesale_Dropdown_Purchasing_Proccess_Load() do
      navigate_to(@uRLH) 
      wait()
      wholesale = find_element(:css, "#subNav .container-fluid div:nth-child(2) .nav .wholesale_link")
      # location = element_location(wholesale)
      move_to(wholesale, 0, 0)
      click({:css, "#subNav .container-fluid div:nth-child(2) .nav .wholesale_link ul .dropdown_link:nth-child(1)"})
      wait()
      take_screenshot("HP007-Nav-Wholesale-Dropdown-Purchasing-Proccess-Load.png") 
    end
    def hP008_Nav_Wholesale_Dropdown_Quality_Guide_Load() do
      navigate_to(@uRLH) 
      wait()
      wholesale = find_element(:css, "#subNav .container-fluid div:nth-child(2) .nav .wholesale_link")
      # location = element_location(wholesale)
      move_to(wholesale, 0, 0)
      click({:css, "#subNav .container-fluid div:nth-child(2) .nav .wholesale_link ul .dropdown_link:nth-child(2)"})
      wait()
      take_screenshot("HP008-Nav-Wholesale-Dropdown-Quality-Guide-Load.png") 
    end
    def hP009_Nav_Wholesale_Dropdown_FAQ_Load() do
      navigate_to(@uRLH) 
      wait()
      wholesale = find_element(:css, "#subNav .container-fluid div:nth-child(2) .nav .wholesale_link")
      # location = element_location(wholesale)
      move_to(wholesale, 0, 0)
      click({:css, "#subNav .container-fluid div:nth-child(2) .nav .wholesale_link ul .dropdown_link:nth-child(3)"})
      wait()
      take_screenshot("HP009-Nav-Wholesale-Dropdown-FAQ-Load.png") 
    end
    def hP010_Nav_Wholesale_Dropdown_Inventory_Load() do
     navigate_to(@uRLH) 
      wait()
      wholesale = find_element(:css, "#subNav .container-fluid div:nth-child(2) .nav .wholesale_link")
      # location = element_location(wholesale)
      move_to(wholesale, 0, 0)
      click({:css, "#subNav .container-fluid div:nth-child(2) .nav .wholesale_link ul .dropdown_link:nth-child(4)"})
      wait()
      take_screenshot("HP010-Nav-Wholesale-Dropdown-Inventory-Load.png") 
    end
    def hP011_Nav_Retail_Load() do
      navigate_to(@uRLH) 
      wait()
      click({:css, "#subNav .container-fluid div:nth-child(2) .nav .retail_link"})
      take_screenshot("HP011-Nav-Retail-Load.png") 
    end
    def hP012_Nav_About_Us_Load() do
      navigate_to(@uRLH) 
      wait()
      click({:css, "#subNav .container-fluid div:nth-child(2) .nav .about_link"})
      take_screenshot("HP012-Nav-About-Us-Load.png") 
    end
    def hP013_Shop_for_button() do
      navigate_to(@uRLH) 
      wait()
      click({:id, "chevron_left"})
      wait()
      take_screenshot("HP013-Shop-for-button.png") 
    end
    def hP014_Become_a_Button() do
      navigate_to(@uRLH) 
      wait()
      click({:id, "chevron_right"})
      wait()
      take_screenshot("HP014-Become-a-Button.png") 
    end
    def hP015_Retail_learn_more_button() do
      navigate_to(@uRLH) 
      wait()
      click({:id, "lmButtonTest"})
      take_screenshot("HP015-Retail-learn-more-button.png") 
    end
    def hP016_Wholesale_Learn_more_button() do
      navigate_to(@uRLH) 
      wait()
      click({:id, "lmButtonwTest"})
      take_screenshot("HP016-Wholesale-Learn-more-button.png") 
    end
    def hP017_Footer_Create_an_Account() do
      navigate_to(@uRLH) 
      wait()
      click({:id, "caTest"})
      take_screenshot("HP017-Footer-Create-an-Account.png") 
    end
    def hP018_Footer_My_Account() do
      navigate_to(@uRLH) 
      wait()
      click({:id, "maTest"})
      take_screenshot("HP018-Footer-My-Account.png") 
    end
    def hP019_Footer_FAQ() do
      navigate_to(@uRLH) 
      wait()
      send_text "Pg Dn"
      click({:css, "#footer_getStarted #faqTest"})
      wait()
      take_screenshot("HP019-Footer-FAQ.png") 
    end
    def hP020_Footer_Quality_Guide() do
      navigate_to(@uRLH) 
      wait()
      send_text "Pg Dn"
      :timer.sleep(500)
      send_text "Pg Dn"
      click({:css, "#footer_bottom #footer_resources #qgTest"})
      wait()
      take_screenshot("HP020-Footer-Quality-Guide.png") 
    end
    def hP021_Footer_Purchasing_Process() do
      navigate_to(@uRLH) 
      wait()
       send_text "Pg Dn"
      :timer.sleep(500)
      send_text "Pg Dn"
      click({:css, "#footer_resources #ppTest"})
      wait()
      take_screenshot("HP021-Footer-Purchasing-Process.png") 
    end
    def hP022_Footer_Inventory() do
      navigate_to(@uRLH) 
      wait()
       send_text "Pg Dn"
      :timer.sleep(500)
      send_text "Pg Dn"
      click({:css, "#footer_resources #iTest"})
      wait()
      take_screenshot("HP022-Footer-Inventory.png") 
    end
    def hP023_Footer_Careers() do
      navigate_to(@uRLH) 
      wait()
       send_text "Pg Dn"
      :timer.sleep(500)
      send_text "Pg Dn"
      click({:css, "#footer_company #cTest"})
      wait()
      take_screenshot("HP023-Footer-Careers.png") 
    end
    def hP024_Footer_Abount_US() do
      navigate_to(@uRLH) 
      wait()
       send_text "Pg Dn"
      :timer.sleep(500)
      send_text "Pg Dn"
      click({:css, "#footer_company #auTest"})
      wait()
      take_screenshot("HP024-Footer-Abount-US.png") 
    end
    # def hP025_Back_To_top() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   click({:id, "login_li"})
    #   take_screenshot("HP025-Back-To-top.png") 
    # end
    # def hP026_Hamburger_dropdown() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   click({:id, "login_li"})
    #   take_screenshot("HP026-Hamburger-dropdown.png") 
    # end
    # def hP027_Hamburger_English_dropdown() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   click({:id, "login_li"})
    #   take_screenshot("HP027-Hamburger-English-dropdown.png") 
    # end
    # def hP028_Hamburger_English() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP028-Hamburger-English.png") 
    # end
    # def hP029_Hamburger_Spanish() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP029-Hamburger-Spanish.png") 
    # end
    # def hP030_Hamburger_Login() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP030-Hamburger-Login.png") 
    # end
    # def hP031_Hamburger_Wholesale_dropdown() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP031-Hamburger-Wholesale-dropdown.png") 
    # end
    # def hP032_Hamburger_Purchasing_Process() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP032-Hamburger-Purchasing-Process.png") 
    # end
    # def hP033_Hamburger_Quality_Guide() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP033-Hamburger-Quality-Guide.png") 
    # end
    # def hP034_Hamburger_FAQ() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP034-Hamburger-FAQ.png") 
    # end
    # def hP035_Hamburger_Inventory() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP035-Hamburger-Inventory.png") 
    # end
    # def hP036_Hamburger_Retail() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP036-Hamburger-Retail.png") 
    # end
    # def hP037_Hamburger_About_UD() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP037-Hamburger-About-UD.png") 
    # end
    # def hP038_Sign_in_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP038-Sign-in-button.png") 
    # end
    # def hP039_Create_a_free_account_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP039-Create-a-free-account-button.png") 
    # end
    # def hP040_Learn_more_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP040-Learn-more-button.png") 
    # end
    # def hP041_Create_an_Account_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP041-Create-an-Account-button.png") 
    # end
    # def hP042_Send_Message_Test_Without_name() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP042-Send-Message-Test-Without-name.png") 
    # end
    # def hP043_Send_Message_Test_Without_email() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP043Send-Message-Test-Without-email.png") 
    # end
    # def hP044_Send_Message_Test_Without_valid_email() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP044-Send-Message-Test-Without-valid-email.png") 
    # end
    # def hP045_Send_Message_Test_Without_message() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP045-Send-Message-Test-Without-message.png") 
    # end
    # def hP046_How_to_Purchase() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP046-How-to-Purchase.png") 
    # end
    # def hP047_Getting_Started() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP047-Getting-Started.png") 
    # end
    # def hP048_Create_An_Account() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP048-Create-An-Account.png") 
    # end
    # def hP049_number_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP049-1(385)-519-4842-button.png") 
    # end
    # def hP050_Data_erased_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP050-Data-erased-button.png") 
    # end
    # def hP051_Batteries_and_covers_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP051-Batteries-and-covers-button.png") 
    # end
    # def hP052_ESN_or_IMEI_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP052-ESN-or-IMEI-button.png") 
    # end
    # def hP053_Locked_to_Carrier_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP053-Locked-to-Carrier-button.png") 
    # end
    # def hP054_Photots_not_available_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP054-Photots-not-available-button.png") 
    # end
    # def hP055_Accessories_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP055-Accessories-button.png") 
    # end
    # def hP056_B_Stock_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP056-B-Stock-button.png") 
    # end
    # def hP057_A_Stock_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP057-A-Stock-button.png") 
    # end
    # def hP058_C_Stock_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP058-C-Stock-button.png") 
    # end
    # def hP059_D_Stock_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP059-D-Stock-button.png") 
    # end
    # def hP060_E_Stock_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP060-E-Stock-button.png") 
    # end
    # def hP061_Cracked_Stock_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP061-Cracked-Stock-button.png") 
    # end
    # def hP062_Download_PDF_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP062-Download-PDF-button.png") 
    # end
    # def hP063_It_there_a_minimum_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP063-It-there-a-minimum-button.png") 
    # end
    # def hP064_Are_all_of_the_prices_final_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP064-Are-all-of-the-prices-final-button.png") 
    # end
    # def hP065_Can_I_buy_one_device_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP065-Can-I-buy-one-device-button.png") 
    # end
    # def hP066_What_is_the_return_policy_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP066-What-is-the-return-policy-button.png") 
    # end
    # def hP067_Do_I_have_to_order_through_Button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP067-Do-I-have-to-order-through-Button.png") 
    # end
    # def hP068_Who_can_I_talk_to_about_placing_an_order_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP068-Who-can-I-talk-to-about-placing-an-order-button.png") 
    # end
    # def hP069_Create_an_account_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP069-Create-an-account-button.png") 
    # end
    # def hP070_What_form_of_paymnet_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP070-What-form-of-paymnet-button.png") 
    # end
    # def hP071_Will_I_receive_an_invoice_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP071-Will-I-receive-an-invoice-button.png") 
    # end
    # def hP072_When_am_I_expected_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP072-When-am-I-expected-button.png") 
    # end
    # def hP073_Does_CIT_Electronics_ship_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP073-Does-CIT-Electronics-ship-button.png") 
    # end
    # def hP074_Who_is_responsible_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP074-Who-is-responsible-button.png") 
    # end
    # def hP075_When_will_my_order_be_ship_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP075-When-will-my-order-be-ship-button.png") 
    # end
    # def hP076_Shop_now_purpletech_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP076-Shop-now-purpletech-button.png") 
    # end
    # def hP077_Shop_now_Sellingtech_button() do
    #   navigate_to(@uRLH) 
    #   wait()
    #   take_screenshot("HP077-Shop-now-Sellingtech-button.png") 
    # end
  end
