defmodule ElixirSdetExerciseTest do
  # Import helpers
  use Hound.Helpers
  use ExUnit.Case
  require Logger
  # Start hound session and destroy when tests are run
  hound_session()

#  testc@citelectronics.com customer
#  tests@citelectronics.com sales
#  testsa@citelectronics.com sales admin
#  testm@citelectronics.com marketing
#  testt@citelectronics.com techdepot
#  testta@citelectronics.com techdepot admin
#  testtn@citelectronics.com techdepot nws admin
#  testtf@citelectronics.com techdepot full
#  testd@citelectronics.com dev
#  password techteam

 test "HP0001 Check Site Load" do
  navigate_to("https://citelectronics.com") 
   take_screenshot("HP0001.png") 
 end
 test "LP001 Create an account button" do
  navigate_to("https://www.citelectronics.com/login.php") 
  click({:id, "createAccount_button"})
  createIsThere = find_element(:id, "page_header")
  testEnd = inner_text(createIsThere)
  Logger.debug testEnd
  take_screenshot("LP001-Create an account button.png") 
 end
 test "LP002 Forgot Your Password button" do
  navigate_to("https://www.citelectronics.com/login.php") 
  click({:id, "testForgot"})
  passwordIsThere = find_element(:id, "passwordRID")
  testEnd = inner_text(passwordIsThere)
  Logger.debug testEnd
  take_screenshot("LP002-Forgot-Your-Password-button.png") 
 end
 test "LP003 Log in button" do
  navigate_to("https://www.citelectronics.com/login.php") 
  click({:id, "login_button"})
  loginIsThere = find_element(:id, "testLogin")
  testEnd = inner_text(loginIsThere)
  Logger.debug testEnd
  take_screenshot("LP003-Log-in-button.png") 
 end
 test "LP004 User Type check login - 5" do
  navigate_to("https://www.citelectronics.com/login.php")
  email = find_element(:id, "emailTest")
  password = find_element(:id, "passwordTest") 
  fill_field(email, "testt@citelectronics.com")
  fill_field(password, "techteam")
  click({:id, "login_button"})
  loginIsThere = find_element(:id, "user")
  testEnd = inner_text(loginIsThere)
  Logger.debug testEnd
  take_screenshot("LP004-User-Type-check-login-5.png") 
 end
 test "LP005 User Type check login - 6" do
  navigate_to("https://www.citelectronics.com/login.php") 
  email = find_element(:id, "emailTest")
  password = find_element(:id, "passwordTest") 
  fill_field(email, "testsa@citelectronics.com")
  fill_field(password, "techteam")
  click({:id, "login_button"})
  loginIsThere = find_element(:class, "box_header")
  testEnd = inner_text(loginIsThere)
  Logger.debug testEnd
  take_screenshot("LP005-User-Type-check-login-6.png") 
 end
 test "LP006 User Type check login - 7" do
  navigate_to("https://www.citelectronics.com/login.php") 
  email = find_element(:id, "emailTest")
  password = find_element(:id, "passwordTest") 
  fill_field(email, "testd@citelectronics.com")
  fill_field(password, "techteam")
  click({:id, "login_button"})
  loginIsThere = find_element(:id, "testingDev")
  testEnd = inner_text(loginIsThere)
  Logger.debug testEnd
  take_screenshot("LP006-User-Type-check-login-7.png") 
 end
 test "LP004 User Type check login - 11" do
  navigate_to("https://www.citelectronics.com/login.php")
  email = find_element(:id, "emailTest")
  password = find_element(:id, "passwordTest") 
  fill_field(email, "testta@citelectronics.com")
  fill_field(password, "techteam")
  click({:id, "login_button"})
  loginIsThere = find_element(:id, "user")
  testEnd = inner_text(loginIsThere)
  Logger.debug testEnd
  take_screenshot("LP004-User-Type-check-login-5.png") 
 end
  test "LP004 User Type check login - 12" do
  navigate_to("https://www.citelectronics.com/login.php")
  email = find_element(:id, "emailTest")
  password = find_element(:id, "passwordTest") 
  fill_field(email, "testtn@citelectronics.com")
  fill_field(password, "techteam")
  click({:id, "login_button"})
  loginIsThere = find_element(:id, "user")
  testEnd = inner_text(loginIsThere)
  Logger.debug testEnd
  take_screenshot("LP004-User-Type-check-login-5.png") 
 end
  test "LP004 User Type check login - 13" do
  navigate_to("https://www.citelectronics.com/login.php")
  email = find_element(:id, "emailTest")
  password = find_element(:id, "passwordTest") 
  fill_field(email, "testtf@citelectronics.com")
  fill_field(password, "techteam")
  click({:id, "login_button"})
  loginIsThere = find_element(:id, "user")
  testEnd = inner_text(loginIsThere)
  Logger.debug testEnd
  take_screenshot("LP004-User-Type-check-login-5.png") 
 end
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
   
  # end
end