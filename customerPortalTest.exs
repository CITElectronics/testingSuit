defmodule ElixirSdetExerciseTest do
   # Import helpers
   use Hound.Helpers
   use ExUnit.Case
   require Logger
   # Start hound session and destroy when tests are run
   hound_session()

   ###################################
   ### ===CUSTOMER PORTAL TESTS=== ###
   ###################################

   ### ===VARIABLES=== ###
   @loginPage "https://www.citelectronics.com/login.php"
   @myCartPage "https://www.citelectronics.com/welcome.php?p=0&s=0"
   @cPortal_email "testc@citelectronics.com"
   @cPortal_password "techteam"

   ### ===EXECUTE TESTS=== ###
   test "EXECUTE TEST" do
      set_window_size current_window_handle(), 1200, 1850 # RESIZES WINDOW
      cPortal_login() # LOGIN
      cPortal_myCart() # MY CART
   end

   ###########################
   ### ===CPORTAL LOGIN=== ###
   ###########################

   ### ===LOGIN=== ###
   def cPortal_login() do
      navigate_to(@loginPage)
      take_screenshot("CP0001-login_page.png")
      fill_field({:id, "emailTest"}, @cPortal_email)
      fill_field({:id, "passwordTest"}, @cPortal_password)
      click({:id, "login_button"})
      wait() # WAIT UNTIL PAGE IS LOADED
      take_screenshot("CP0002-cPortal_dashboard.png")
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
      myCart_inventory_makeOffer() # MAKE OFFER
      myCart_inventory_adjustProduct() # ADJUST PRODUCT
      myCart_inventory_removeProduct() # REMOVE PRODUCT
   end

   ### ===NAVIGATE TO MY CART PAGE=== ###
   def cPortal_myCart_navigate() do
      click({:id, "testCart"})
      wait() # WAIT UNTIL PAGE IS LOADED
      take_screenshot("CP0003-cPortal_myCart.png")
   end

   ### ===NAVIGATE TO INVENTORY=== ###
   def myCart_inventory_navigate() do
      click({:id, "view_inventory"})
      wait() # WAIT UNTIL PAGE IS LOADED
      take_screenshot("CP0004-cPortal_myCart_inventory.png")
   end

   ### ===VIEW INVENTORY LIST=== ###
   def myCart_inventory_viewInventoryList() do
      click({:id, "btn_filter_search"})
      wait() # WAIT UNTIL PAGE IS LOADED
      take_screenshot("CP0005-cPortal_myCart_inventory_viewInventoryList.png")
   end

   ### ===APPLIES FILTER=== ###
   def myCart_inventory_applyfilter() do
      click({:id, "priceDropdown"})
      :timer.sleep(1000)
      click({:id, "reset_p_q"})
      :timer.sleep(3000)
      fill_field({:id, "txtBox_qty_min"}, "2")
      click({:id, "save_p_q"})
      :timer.sleep(3000)
      take_screenshot("CP0006-cPortal_myCart_inventory_applyFilter.png")
   end

   ### ===ADD TO FAVORITES=== ###
   def myCart_inventory_addFavorites() do
      :timer.sleep(1000)
      click({:css, "#invTableContent .item_row:nth-child(1) .fav_td .favorite_item"})
      :timer.sleep(500)
      click({:css, "#invTableContent .item_row:nth-child(2) .fav_td .favorite_item"})
      :timer.sleep(500)
      click({:css, "#invTableContent .item_row:nth-child(3) .fav_td .favorite_item"})
      :timer.sleep(500)
      click({:css, "#invTableContent .item_row:nth-child(4) .fav_td .favorite_item"})
      :timer.sleep(500)
      click({:css, "#invTableContent .item_row:nth-child(5) .fav_td .favorite_item"})
      :timer.sleep(3000)
      take_screenshot("CP0007-cPortal_myCart_inventory_addFavorites.png")
   end

   ### ===ADD PRODUCT=== ###
   def myCart_inventory_addProduct() do
      # click({:class, "add_all_btn"})
      click({:css, "#invTableContent .item_row:nth-child(1) .qty_td .add_all_btn"})
      :timer.sleep(500)
      click({:css, "#invTableContent .item_row:nth-child(2) .qty_td .add_all_btn"})
      :timer.sleep(500)
      click({:css, "#invTableContent .item_row:nth-child(3) .qty_td .add_all_btn"})
      :timer.sleep(500)
      click({:css, "#invTableContent .item_row:nth-child(4) .qty_td .add_all_btn"})
      :timer.sleep(500)
      click({:css, "#invTableContent .item_row:nth-child(5) .qty_td .add_all_btn"})
      :timer.sleep(500)
      take_screenshot("CP0008-cPortal_myCart_inventory_addProduct.png")
      navigate_to(@myCartPage)
      take_screenshot("CP0009-cPortal_myCart_inventory_addProduct_myCart.png")
   end

   ### ===MAKE OFFER=== ###
   def myCart_inventory_makeOffer() do
      click({:class, "make_offer"})
      :timer.sleep(1000)
      fill_field({:class, "offerInput"}, 1)
      :timer.sleep(1000)
      click({:class, "save_offer"})
      :timer.sleep(1000)
      take_screenshot("CP0010-cPortal_myCart_inventory_makeOffer_save.png")
      click({:class, "edit_offer"})
      :timer.sleep(1000)
      click({:class, "remove_offer"})
      :timer.sleep(1000)
      take_screenshot("CP0011-cPortal_myCart_inventory_makeOffer_remove.png")
   end

   ### ===ADJUST PRODUCT=== ###
   def myCart_inventory_adjustProduct() do
      click({:class, "quantityInput"})
      send_keys(:num1)
      :timer.sleep(3000)
      take_screenshot("CP0012-cPortal_myCart_inventory_adjustProduct_decrease.png")
      click({:class, "quantityInput"})
      send_keys(:num2)
      :timer.sleep(3000)
      take_screenshot("CP0013-cPortal_myCart_inventory_adjustProduct_increase.png")
      click({:class, "quantityInput"})
      send_keys(:num1)
      :timer.sleep(3000)
      click({:class, "takeAllButton"})
      :timer.sleep(3000)
      take_screenshot("CP0014-cPortal_myCart_inventory_adjustProduct_takeAll.png")
   end

   ### ===REMOVE PRODUCT=== ###
   def myCart_inventory_removeProduct() do
      click({:class, "removeAllButton"})
      :timer.sleep(1000)
      click({:class, "removeAllButton"})
      :timer.sleep(1000)
      click({:class, "removeAllButton"})
      :timer.sleep(1000)
      click({:class, "removeAllButton"})
      :timer.sleep(1000)
      click({:class, "removeAllButton"})
      :timer.sleep(1000)
      take_screenshot("CP0015-cPortal_myCart_inventory_removeProduct.png")
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